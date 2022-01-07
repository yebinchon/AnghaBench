; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32, i32 }

@HIGHPOWER = common dso_local global i32 0, align 4
@READ_MODE_B = common dso_local global i32 0, align 4
@READ_MODE_A = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT9M111_RMB_MIRROR_ROWS = common dso_local global i32 0, align 4
@MT9M111_RMB_MIRROR_COLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9m111_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9m111*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %11)
  store %struct.mt9m111* %12, %struct.mt9m111** %7, align 8
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %95 [
    i32 128, label %16
    i32 129, label %44
    i32 130, label %72
    i32 131, label %83
    i32 132, label %89
  ]

16:                                               ; preds = %2
  %17 = load %struct.mt9m111*, %struct.mt9m111** %7, align 8
  %18 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HIGHPOWER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @READ_MODE_B, align 4
  %24 = call i32 @reg_read(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @READ_MODE_A, align 4
  %27 = call i32 @reg_read(i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %96

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MT9M111_RMB_MIRROR_ROWS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %95

44:                                               ; preds = %2
  %45 = load %struct.mt9m111*, %struct.mt9m111** %7, align 8
  %46 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HIGHPOWER, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @READ_MODE_B, align 4
  %52 = call i32 @reg_read(i32 %51)
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @READ_MODE_A, align 4
  %55 = call i32 @reg_read(i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %96

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MT9M111_RMB_MIRROR_COLS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %95

72:                                               ; preds = %2
  %73 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %74 = call i32 @mt9m111_get_global_gain(%struct.i2c_client* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %96

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %95

83:                                               ; preds = %2
  %84 = load %struct.mt9m111*, %struct.mt9m111** %7, align 8
  %85 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %95

89:                                               ; preds = %2
  %90 = load %struct.mt9m111*, %struct.mt9m111** %7, align 8
  %91 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %2, %89, %83, %79, %62, %34
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %77, %59, %31
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @reg_read(i32) #1

declare dso_local i32 @mt9m111_get_global_gain(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
