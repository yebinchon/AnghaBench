; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_abituguru_send_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_abituguru_send_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU_DATA = common dso_local global i64 0, align 8
@ABIT_UGURU_STATUS_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"timeout exceeded waiting for more input state, %d tries remaining\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ABIT_UGURU_RETRY_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"timeout exceeded waiting for more input state (bank: %d)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ABIT_UGURU_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru_data*, i64, i64, i32)* @abituguru_send_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru_send_address(%struct.abituguru_data* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.abituguru_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %36, %4
  %13 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %14 = call i64 @abituguru_ready(%struct.abituguru_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %22 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ABIT_UGURU_DATA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i64 %20, i64 %25)
  %27 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %28 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %30 = load i32, i32* @ABIT_UGURU_STATUS_INPUT, align 4
  %31 = call i64 @abituguru_wait(%struct.abituguru_data* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ABIT_UGURU_DEBUG(i32 3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %40 = call i32 @set_current_state(i32 %39)
  %41 = load i32, i32* @ABIT_UGURU_RETRY_DELAY, align 4
  %42 = call i32 @schedule_timeout(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  br label %12

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %19
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %58 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ABIT_UGURU_CMD, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i64 %56, i64 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %52, %16
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @abituguru_ready(%struct.abituguru_data*) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i64 @abituguru_wait(%struct.abituguru_data*, i32) #1

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
