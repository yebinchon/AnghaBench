; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_set_all_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_set_all_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CPIA2_CMD_SET_USER_EFFECTS = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION = common dso_local global i32 0, align 4
@CPIA2_CMD_SET_VC_MP_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*)* @set_all_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_all_properties(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %4 = call i32 @cpia2_set_color_params(%struct.camera_data* %3)
  %5 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %6 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %7 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data* %5, i32 %10)
  %12 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %13 = load i32, i32* @CPIA2_CMD_SET_USER_EFFECTS, align 4
  %14 = load i32, i32* @TRANSFER_WRITE, align 4
  %15 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %16 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpia2_do_command(%struct.camera_data* %12, i32 %13, i32 %14, i32 %19)
  %21 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %22 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %23 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpia2_set_flicker_mode(%struct.camera_data* %21, i32 %26)
  %28 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %29 = load i32, i32* @CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION, align 4
  %30 = load i32, i32* @TRANSFER_WRITE, align 4
  %31 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %32 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpia2_do_command(%struct.camera_data* %28, i32 %29, i32 %30, i32 %35)
  %37 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %38 = load i32, i32* @CPIA2_CMD_SET_VC_MP_GPIO_DATA, align 4
  %39 = load i32, i32* @TRANSFER_WRITE, align 4
  %40 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpia2_do_command(%struct.camera_data* %37, i32 %38, i32 %39, i32 %44)
  %46 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %47 = call i32 @wake_system(%struct.camera_data* %46)
  %48 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %49 = call i32 @set_lowlight_boost(%struct.camera_data* %48)
  ret i32 0
}

declare dso_local i32 @cpia2_set_color_params(%struct.camera_data*) #1

declare dso_local i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

declare dso_local i32 @cpia2_set_flicker_mode(%struct.camera_data*, i32) #1

declare dso_local i32 @wake_system(%struct.camera_data*) #1

declare dso_local i32 @set_lowlight_boost(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
