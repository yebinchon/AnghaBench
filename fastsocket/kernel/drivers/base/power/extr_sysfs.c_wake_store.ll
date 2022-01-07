; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_sysfs.c_wake_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_sysfs.c_wake_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@enabled = common dso_local global i32 0, align 4
@disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wake_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wake_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @device_can_wakeup(%struct.device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %63

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i8* @memchr(i8* %21, i8 signext 10, i64 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @enabled, align 4
  %40 = call i64 @strncmp(i8* %38, i32 %39, i32 3)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @device_set_wakeup_enable(%struct.device* %43, i32 1)
  br label %61

45:                                               ; preds = %37, %33
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @disabled, align 4
  %52 = call i64 @strncmp(i8* %50, i32 %51, i32 3)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @device_set_wakeup_enable(%struct.device* %55, i32 0)
  br label %60

57:                                               ; preds = %49, %45
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %5, align 8
  br label %63

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %57, %17
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32 @device_can_wakeup(%struct.device*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
