; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_init_camera.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_init_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"Start\0A\00", align 1
@CPIA2_ASIC_672 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Device IO error (asicID has incorrect value of 0x%X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CPIA2_CMD_SET_VC_MP_GPIO_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_init_camera(%struct.camera_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  %4 = call i32 @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %6 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %8 = call i32 @cpia2_set_high_power(%struct.camera_data* %7)
  %9 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %10 = call i32 @cpia2_get_version_info(%struct.camera_data* %9)
  %11 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %12 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CPIA2_ASIC_672, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %20 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %29 = load i32, i32* @CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION, align 4
  %30 = load i32, i32* @TRANSFER_WRITE, align 4
  %31 = call i32 @cpia2_do_command(%struct.camera_data* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %33 = load i32, i32* @CPIA2_CMD_SET_VC_MP_GPIO_DATA, align 4
  %34 = load i32, i32* @TRANSFER_WRITE, align 4
  %35 = call i32 @cpia2_do_command(%struct.camera_data* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %37 = call i32 @reset_camera_struct(%struct.camera_data* %36)
  %38 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %39 = call i32 @cpia2_set_low_power(%struct.camera_data* %38)
  %40 = call i32 @DBG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @cpia2_set_high_power(%struct.camera_data*) #1

declare dso_local i32 @cpia2_get_version_info(%struct.camera_data*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

declare dso_local i32 @reset_camera_struct(%struct.camera_data*) #1

declare dso_local i32 @cpia2_set_low_power(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
