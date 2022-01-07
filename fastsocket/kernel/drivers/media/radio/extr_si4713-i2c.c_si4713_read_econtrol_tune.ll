; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_read_econtrol_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_read_econtrol_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i32, i32, i64 }
%struct.v4l2_ext_control = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, %struct.v4l2_ext_control*)* @si4713_read_econtrol_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_read_econtrol_tune(%struct.si4713_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca i64, align 8
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %7 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %10 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %15 = call i64 @si4713_update_tune_status(%struct.si4713_device* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %40

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %36 [
    i32 128, label %24
    i32 129, label %30
  ]

24:                                               ; preds = %20
  %25 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %26 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %32 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %20
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %30, %24
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %42 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @si4713_update_tune_status(%struct.si4713_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
