; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_get_color_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_get_color_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32 }

@CPIA2_CMD_GET_VP_BRIGHTNESS = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_VP_SATURATION = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_CONTRAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @get_color_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_color_params(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %4 = load i32, i32* @CPIA2_CMD_GET_VP_BRIGHTNESS, align 4
  %5 = load i32, i32* @TRANSFER_READ, align 4
  %6 = call i32 @cpia2_do_command(%struct.camera_data* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %8 = load i32, i32* @CPIA2_CMD_GET_VP_SATURATION, align 4
  %9 = load i32, i32* @TRANSFER_READ, align 4
  %10 = call i32 @cpia2_do_command(%struct.camera_data* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %12 = load i32, i32* @CPIA2_CMD_GET_CONTRAST, align 4
  %13 = load i32, i32* @TRANSFER_READ, align 4
  %14 = call i32 @cpia2_do_command(%struct.camera_data* %11, i32 %12, i32 %13, i32 0)
  ret void
}

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
