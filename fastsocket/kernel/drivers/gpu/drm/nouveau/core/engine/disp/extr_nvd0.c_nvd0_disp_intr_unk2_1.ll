; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_intr_unk2_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_intr_unk2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { i32 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, i64, i32)* }

@PLL_VPLL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp_priv*, i32)* @nvd0_disp_intr_unk2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvd0_disp_intr_unk2_1(%struct.nv50_disp_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nv50_disp_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_clock*, align 8
  %6 = alloca i32, align 4
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %8 = call %struct.nouveau_clock* @nouveau_clock(%struct.nv50_disp_priv* %7)
  store %struct.nouveau_clock* %8, %struct.nouveau_clock** %5, align 8
  %9 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 768
  %12 = add nsw i32 6685776, %11
  %13 = call i32 @nv_rd32(%struct.nv50_disp_priv* %9, i32 %12)
  %14 = sdiv i32 %13, 1000
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %18, i32 0, i32 0
  %20 = load i32 (%struct.nouveau_clock*, i64, i32)*, i32 (%struct.nouveau_clock*, i64, i32)** %19, align 8
  %21 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %22 = load i64, i64* @PLL_VPLL0, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %20(%struct.nouveau_clock* %21, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %17, %2
  %29 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 2048
  %32 = add nsw i32 6365696, %31
  %33 = call i32 @nv_wr32(%struct.nv50_disp_priv* %29, i32 %32, i32 0)
  ret void
}

declare dso_local %struct.nouveau_clock* @nouveau_clock(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
