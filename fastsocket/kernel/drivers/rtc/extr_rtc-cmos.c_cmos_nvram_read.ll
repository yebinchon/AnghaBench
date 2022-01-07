; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_nvram_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NVRAM_OFFSET = common dso_local global i64 0, align 8
@rtc_lock = common dso_local global i32 0, align 4
@can_bank2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @cmos_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_nvram_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %17 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %86

24:                                               ; preds = %6
  %25 = load i64, i64* %12, align 8
  %26 = icmp slt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %86

33:                                               ; preds = %24
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %38 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %43 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %13, align 8
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i64, i64* @NVRAM_OFFSET, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %12, align 8
  %51 = call i32 @spin_lock_irq(i32* @rtc_lock)
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %76, %47
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i64, i64* %12, align 8
  %57 = icmp slt i64 %56, 128
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @CMOS_READ(i64 %59)
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  store i8 %61, i8* %62, align 1
  br label %75

64:                                               ; preds = %55
  %65 = load i64, i64* @can_bank2, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @cmos_read_bank2(i64 %68)
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  store i8 %70, i8* %71, align 1
  br label %74

73:                                               ; preds = %64
  br label %83

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %12, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %52

83:                                               ; preds = %73, %52
  %84 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %30, %23
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @CMOS_READ(i64) #1

declare dso_local i32 @cmos_read_bank2(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
