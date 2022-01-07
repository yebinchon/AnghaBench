; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornvd0.c_nvd0_sor_dp_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_sornvd0.c_nvd0_sor_dp_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_disp = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nv50_disp_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_disp*, %struct.dcb_output*, i32, i32)* @nvd0_sor_dp_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_sor_dp_pattern(%struct.nouveau_disp* %0, %struct.dcb_output* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nouveau_disp*, align 8
  %6 = alloca %struct.dcb_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv50_disp_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.nouveau_disp* %0, %struct.nouveau_disp** %5, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nouveau_disp*, %struct.nouveau_disp** %5, align 8
  %12 = bitcast %struct.nouveau_disp* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %13, %struct.nv50_disp_priv** %9, align 8
  %14 = load %struct.dcb_output*, %struct.dcb_output** %6, align 8
  %15 = call i64 @nvd0_sor_loff(%struct.dcb_output* %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add nsw i64 6406416, %17
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 16843009, %19
  %21 = call i32 @nv_mask(%struct.nv50_disp_priv* %16, i64 %18, i32 252645135, i32 %20)
  ret i32 0
}

declare dso_local i64 @nvd0_sor_loff(%struct.dcb_output*) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
