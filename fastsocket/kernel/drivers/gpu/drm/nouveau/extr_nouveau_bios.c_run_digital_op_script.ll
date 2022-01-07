; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_run_digital_op_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_run_digital_op_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"0x%04X: Parsing digital output script table\0A\00", align 1
@NV_CIO_CRE_44 = common dso_local global i32 0, align 4
@NV_CIO_CRE_44_HEADB = common dso_local global i32 0, align 4
@NV_CIO_CRE_44_HEADA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.dcb_output*, i32, i32)* @run_digital_op_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_digital_op_script(%struct.drm_device* %0, i32 %1, %struct.dcb_output* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcb_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dcb_output* %2, %struct.dcb_output** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %11, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @NV_INFO(%struct.nouveau_drm* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = load i32, i32* @NV_CIO_CRE_44, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @NV_CIO_CRE_44_HEADB, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @NV_CIO_CRE_44_HEADA, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %17, i32 0, i32 %18, i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @nouveau_bios_run_init_table(%struct.drm_device* %28, i32 %29, %struct.dcb_output* %30, i32 %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %34 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @nv04_dfp_bind_head(%struct.drm_device* %33, %struct.dcb_output* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @nouveau_bios_run_init_table(%struct.drm_device*, i32, %struct.dcb_output*, i32) #1

declare dso_local i32 @nv04_dfp_bind_head(%struct.drm_device*, %struct.dcb_output*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
