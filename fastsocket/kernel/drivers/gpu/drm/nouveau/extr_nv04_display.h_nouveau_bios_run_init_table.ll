; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_display.h_nouveau_bios_run_init_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_display.h_nouveau_bios_run_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_init = type { i32, i32, %struct.dcb_output*, i32, %struct.nouveau_bios*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.dcb_output*, i32)* @nouveau_bios_run_init_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bios_run_init_table(%struct.drm_device* %0, i32 %1, %struct.dcb_output* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcb_output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_device*, align 8
  %10 = alloca %struct.nouveau_bios*, align 8
  %11 = alloca %struct.nvbios_init, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dcb_output* %2, %struct.dcb_output** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %12)
  store %struct.nouveau_device* %13, %struct.nouveau_device** %9, align 8
  %14 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %15 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %14)
  store %struct.nouveau_bios* %15, %struct.nouveau_bios** %10, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 2
  %20 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  store %struct.dcb_output* %20, %struct.dcb_output** %19, align 8
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 3
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 4
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %10, align 8
  store %struct.nouveau_bios* %24, %struct.nouveau_bios** %23, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 5
  %26 = load %struct.nouveau_bios*, %struct.nouveau_bios** %10, align 8
  %27 = call i32 @nv_subdev(%struct.nouveau_bios* %26)
  store i32 %27, i32* %25, align 8
  %28 = call i32 @nvbios_exec(%struct.nvbios_init* %11)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @nv_subdev(%struct.nouveau_bios*) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
