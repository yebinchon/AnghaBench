; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_write_econtrol_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_write_econtrol_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i8*, i8*, i64, i32 }
%struct.v4l2_ext_control = type { i32, i8* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, %struct.v4l2_ext_control*)* @si4713_write_econtrol_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_write_econtrol_tune(%struct.si4713_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %9 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %8, i32 0, i32 4
  %10 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %11 = call i64 @validate_range(i32* %9, %struct.v4l2_ext_control* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %17 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %36 [
    i32 128, label %22
    i32 129, label %29
  ]

22:                                               ; preds = %15
  %23 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %27 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  br label %39

29:                                               ; preds = %15
  %30 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %31 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  %33 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  br label %39

36:                                               ; preds = %15
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %60

39:                                               ; preds = %29, %22
  %40 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %41 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @si4713_tx_tune_power(%struct.si4713_device* %45, i8* %46, i8* %47)
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %55 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %58 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %62 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %14
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  ret i32 %66
}

declare dso_local i64 @validate_range(i32*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @si4713_tx_tune_power(%struct.si4713_device*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
