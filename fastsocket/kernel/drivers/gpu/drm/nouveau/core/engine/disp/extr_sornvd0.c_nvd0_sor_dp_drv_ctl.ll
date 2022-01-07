; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornvd0.c_nvd0_sor_dp_drv_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornvd0.c_nvd0_sor_dp_drv_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_disp = type { i32 }
%struct.dcb_output = type { i32, i32 }
%struct.nouveau_bios = type { i32 }
%struct.nv50_disp_priv = type { i32 }
%struct.nvbios_dpout = type { i32 }
%struct.nvbios_dpcfg = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_disp*, %struct.dcb_output*, i32, i32, i32, i32)* @nvd0_sor_dp_drv_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_sor_dp_drv_ctl(%struct.nouveau_disp* %0, %struct.dcb_output* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_disp*, align 8
  %9 = alloca %struct.dcb_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_bios*, align 8
  %15 = alloca %struct.nv50_disp_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.nvbios_dpout, align 4
  %24 = alloca %struct.nvbios_dpcfg, align 4
  store %struct.nouveau_disp* %0, %struct.nouveau_disp** %8, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.nouveau_disp*, %struct.nouveau_disp** %8, align 8
  %26 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_disp* %25)
  store %struct.nouveau_bios* %26, %struct.nouveau_bios** %14, align 8
  %27 = load %struct.nouveau_disp*, %struct.nouveau_disp** %8, align 8
  %28 = bitcast %struct.nouveau_disp* %27 to i8*
  %29 = bitcast i8* %28 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %29, %struct.nv50_disp_priv** %15, align 8
  %30 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %31 = call i32 @nvd0_sor_loff(%struct.dcb_output* %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %15, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @nvd0_sor_dp_lane_map(%struct.nv50_disp_priv* %32, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %14, align 8
  %36 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %37 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %40 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nvbios_dpout_match(%struct.nouveau_bios* %35, i32 %38, i32 %41, i32* %19, i32* %20, i32* %21, i32* %22, %struct.nvbios_dpout* %23)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %6
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %91

48:                                               ; preds = %6
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %14, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @nvbios_dpcfg_match(%struct.nouveau_bios* %49, i32 %50, i32 0, i32 %51, i32 %52, i32* %19, i32* %20, i32* %21, i32* %22, %struct.nvbios_dpcfg* %24)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %91

59:                                               ; preds = %48
  %60 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %15, align 8
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 6406424, %61
  %63 = load i32, i32* %18, align 4
  %64 = shl i32 255, %63
  %65 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %24, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %18, align 4
  %68 = shl i32 %66, %67
  %69 = call i32 @nv_mask(%struct.nv50_disp_priv* %60, i32 %62, i32 %64, i32 %68)
  %70 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 6406432, %71
  %73 = load i32, i32* %18, align 4
  %74 = shl i32 255, %73
  %75 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %24, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %18, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @nv_mask(%struct.nv50_disp_priv* %70, i32 %72, i32 %74, i32 %78)
  %80 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %15, align 8
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 6406448, %81
  %83 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %24, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = call i32 @nv_mask(%struct.nv50_disp_priv* %80, i32 %82, i32 65280, i32 %85)
  %87 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %15, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 6406460, %88
  %90 = call i32 @nv_mask(%struct.nv50_disp_priv* %87, i32 %89, i32 0, i32 0)
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %59, %56, %45
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_disp*) #1

declare dso_local i32 @nvd0_sor_loff(%struct.dcb_output*) #1

declare dso_local i32 @nvd0_sor_dp_lane_map(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nvbios_dpout_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_dpout*) #1

declare dso_local i32 @nvbios_dpcfg_match(%struct.nouveau_bios*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_dpcfg*) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
