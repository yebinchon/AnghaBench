; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornv94.c_nv94_sor_dp_lnk_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornv94.c_nv94_sor_dp_lnk_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_disp = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nv50_disp_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_disp*, %struct.dcb_output*, i32, i32, i32, i32)* @nv94_sor_dp_lnk_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv94_sor_dp_lnk_ctl(%struct.nouveau_disp* %0, %struct.dcb_output* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %24 = call i32 @nv94_sor_soff(%struct.dcb_output* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %26 = call i32 @nv94_sor_loff(%struct.dcb_output* %25)
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %16, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* %16, align 4
  %37 = or i32 %36, 16384
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %35, %6
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  %43 = or i32 %42, 262144
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @nv94_sor_dp_lane_map(%struct.nv50_disp_priv* %50, i32 %51)
  %53 = ashr i32 %52, 3
  %54 = shl i32 1, %53
  %55 = load i32, i32* %18, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %19, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 6374144, %62
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @nv_mask(%struct.nv50_disp_priv* %61, i32 %63, i32 786432, i32 %64)
  %66 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 6406412, %67
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @nv_mask(%struct.nv50_disp_priv* %66, i32 %68, i32 2048000, i32 %69)
  %71 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %13, align 8
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 6406448, %72
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @nv_mask(%struct.nv50_disp_priv* %71, i32 %73, i32 15, i32 %74)
  ret i32 0
}

declare dso_local i32 @nv94_sor_soff(%struct.dcb_output*) #1

declare dso_local i32 @nv94_sor_loff(%struct.dcb_output*) #1

declare dso_local i32 @nv94_sor_dp_lane_map(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
