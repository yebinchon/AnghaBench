; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_attachmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_attachmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_connector*, %struct.drm_display_mode*)* @drm_mode_attachmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_mode_attachmode(%struct.drm_device* %0, %struct.drm_connector* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %8 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 0
  %9 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = call i32 @list_add_tail(i32* %8, i32* %10)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
