; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at24_data*, i8*, i32, i64)* @at24_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at24_read(%struct.at24_data* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.at24_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.at24_data* %0, %struct.at24_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %5, align 8
  br label %61

20:                                               ; preds = %4
  %21 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %22 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  br label %24

24:                                               ; preds = %41, %20
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @at24_eeprom_read(%struct.at24_data* %28, i8* %29, i32 %30, i64 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ule i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %38, %35
  br label %56

41:                                               ; preds = %27
  %42 = load i64, i64* %11, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %10, align 8
  br label %24

56:                                               ; preds = %40, %24
  %57 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %58 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %56, %18
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @at24_eeprom_read(%struct.at24_data*, i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
