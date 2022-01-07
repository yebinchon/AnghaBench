; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.si4713_device = type { i32 }

@V4L2_CTRL_CLASS_FM_TX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_ext_controls*)* @si4713_g_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_g_ext_ctrls(%struct.v4l2_subdev* %0, %struct.v4l2_ext_controls* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_ext_controls*, align 8
  %6 = alloca %struct.si4713_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %9)
  store %struct.si4713_device* %10, %struct.si4713_device** %6, align 8
  %11 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_CTRL_CLASS_FM_TX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %71, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %20
  %27 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %53 [
    i32 131, label %35
    i32 130, label %35
    i32 129, label %44
    i32 128, label %44
  ]

35:                                               ; preds = %26, %26
  %36 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %37 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = call i32 @si4713_read_econtrol_string(%struct.si4713_device* %36, %struct.TYPE_4__* %42)
  store i32 %43, i32* %8, align 4
  br label %62

44:                                               ; preds = %26, %26
  %45 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %46 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = call i32 @si4713_read_econtrol_tune(%struct.si4713_device* %45, %struct.TYPE_4__* %51)
  store i32 %52, i32* %8, align 4
  br label %62

53:                                               ; preds = %26
  %54 = load %struct.si4713_device*, %struct.si4713_device** %6, align 8
  %55 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = call i32 @si4713_read_econtrol_integers(%struct.si4713_device* %54, %struct.TYPE_4__* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %44, %35
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %20

74:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %65, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @si4713_read_econtrol_string(%struct.si4713_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @si4713_read_econtrol_tune(%struct.si4713_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @si4713_read_econtrol_integers(%struct.si4713_device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
