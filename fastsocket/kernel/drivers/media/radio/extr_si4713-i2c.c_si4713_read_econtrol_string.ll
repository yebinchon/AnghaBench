; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_read_econtrol_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_read_econtrol_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_ext_control = type { i32, i32, i32 }

@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAX_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, %struct.v4l2_ext_control*)* @si4713_read_econtrol_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_read_econtrol_string(%struct.si4713_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %75 [
    i32 129, label %9
    i32 128, label %42
  ]

9:                                                ; preds = %2
  %10 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %11 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strlen(i32 %13)
  %15 = add nsw i32 %14, 1
  %16 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %9
  %21 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %9
  %28 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %32 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %36 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = add nsw i32 %39, 1
  %41 = call i32 @copy_to_user(i32 %30, i32 %34, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %78

42:                                               ; preds = %2
  %43 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %44 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  %48 = add nsw i32 %47, 1
  %49 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %79

60:                                               ; preds = %42
  %61 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %65 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %69 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strlen(i32 %71)
  %73 = add nsw i32 %72, 1
  %74 = call i32 @copy_to_user(i32 %63, i32 %67, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %2
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %60, %27
  br label %79

79:                                               ; preds = %78, %53, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @copy_to_user(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
