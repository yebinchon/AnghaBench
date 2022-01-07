; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornvd0.c_nvd0_sor_dp_lnk_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornvd0.c_nvd0_sor_dp_lnk_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_disp = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nv50_disp_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_disp*, %struct.dcb_output*, i32, i32, i32, i32)* @nvd0_sor_dp_lnk_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_sor_dp_lnk_ctl(%struct.nouveau_disp* %0, %struct.dcb_output* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nouveau_disp*, align 8
  %8 = alloca %struct.dcb_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nv50_disp_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nouveau_disp* %0, %struct.nouveau_disp** %7, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.nouveau_disp*, %struct.nouveau_disp** %7, align 8
  %21 = bitcast %struct.nouveau_disp* %20 to i8*
  %22 = bitcast i8* %21 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %22, %struct.nv50_disp_priv** %13, align 8
  %23 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %24 = call i32 @nvd0_sor_soff(%struct.dcb_output* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %26 = call i32 @nvd0_sor_loff(%struct.dcb_output* %25)
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = shl i32 %27, 18
  %29 = load i32, i32* %17, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %16, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %6
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, 16384
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %39, %6
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @nvd0_sor_dp_lane_map(%struct.nv50_disp_priv* %48, i32 %49)
  %51 = ashr i32 %50, 3
  %52 = shl i32 1, %51
  %53 = load i32, i32* %18, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %19, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 6365952, %60
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @nv_mask(%struct.nv50_disp_priv* %59, i32 %61, i32 8126464, i32 %62)
  %64 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 6406412, %65
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @nv_mask(%struct.nv50_disp_priv* %64, i32 %66, i32 2048000, i32 %67)
  %69 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 6406448, %70
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @nv_mask(%struct.nv50_disp_priv* %69, i32 %71, i32 15, i32 %72)
  ret i32 0
}

declare dso_local i32 @nvd0_sor_soff(%struct.dcb_output*) #1

declare dso_local i32 @nvd0_sor_loff(%struct.dcb_output*) #1

declare dso_local i32 @nvd0_sor_dp_lane_map(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
