; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/ibus/extr_nvc0.c_nvc0_ibus_intr_rop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/ibus/extr_nvc0.c_nvc0_ibus_intr_rop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_ibus_priv = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ROP%d: 0x%06x 0x%08x (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_ibus_priv*, i32)* @nvc0_ibus_intr_rop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_ibus_intr_rop(%struct.nvc0_ibus_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nvc0_ibus_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvc0_ibus_priv* %0, %struct.nvc0_ibus_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvc0_ibus_priv*, %struct.nvc0_ibus_priv** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %9, 1024
  %11 = add nsw i32 1196320, %10
  %12 = call i32 @nv_rd32(%struct.nvc0_ibus_priv* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nvc0_ibus_priv*, %struct.nvc0_ibus_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 1024
  %16 = add nsw i32 1196324, %15
  %17 = call i32 @nv_rd32(%struct.nvc0_ibus_priv* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nvc0_ibus_priv*, %struct.nvc0_ibus_priv** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 1024
  %21 = add nsw i32 1196328, %20
  %22 = call i32 @nv_rd32(%struct.nvc0_ibus_priv* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvc0_ibus_priv*, %struct.nvc0_ibus_priv** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @nv_error(%struct.nvc0_ibus_priv* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.nvc0_ibus_priv*, %struct.nvc0_ibus_priv** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 1024
  %32 = add nsw i32 1196328, %31
  %33 = call i32 @nv_mask(%struct.nvc0_ibus_priv* %29, i32 %32, i32 512, i32 0)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_ibus_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_ibus_priv*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nvc0_ibus_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
