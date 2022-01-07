; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_abituguru_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_abituguru_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i64 }

@ABIT_UGURU_STATUS_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"timeout exceeded waiting for read state (bank: %d, sensor: %d)\0A\00", align 1
@ABIT_UGURU_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru_data*, i64, i64, i64*, i32, i32)* @abituguru_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru_read(%struct.abituguru_data* %0, i64 %1, i64 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.abituguru_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.abituguru_data*, %struct.abituguru_data** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @abituguru_send_address(%struct.abituguru_data* %15, i64 %16, i64 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %62

24:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.abituguru_data*, %struct.abituguru_data** %8, align 8
  %31 = load i32, i32* @ABIT_UGURU_STATUS_READ, align 4
  %32 = call i64 @abituguru_wait(%struct.abituguru_data* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 3
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ABIT_UGURU_DEBUG(i32 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  br label %58

44:                                               ; preds = %29
  %45 = load %struct.abituguru_data*, %struct.abituguru_data** %8, align 8
  %46 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ABIT_UGURU_CMD, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @inb(i64 %49)
  %51 = load i64*, i64** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %25

58:                                               ; preds = %34, %25
  %59 = load %struct.abituguru_data*, %struct.abituguru_data** %8, align 8
  %60 = call i32 @abituguru_ready(%struct.abituguru_data* %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %22
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @abituguru_send_address(%struct.abituguru_data*, i64, i64, i32) #1

declare dso_local i64 @abituguru_wait(%struct.abituguru_data*, i32) #1

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i64 @inb(i64) #1

declare dso_local i32 @abituguru_ready(%struct.abituguru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
