; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/ltcg/extr_nvc0.c_nvc0_ltcg_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/ltcg/extr_nvc0.c_nvc0_ltcg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nvc0_ltcg_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nvc0_ltcg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_ltcg_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nvc0_ltcg_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %7 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %8 = bitcast %struct.nouveau_subdev* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nvc0_ltcg_priv*
  store %struct.nvc0_ltcg_priv* %9, %struct.nvc0_ltcg_priv** %3, align 8
  %10 = load %struct.nvc0_ltcg_priv*, %struct.nvc0_ltcg_priv** %3, align 8
  %11 = call i32 @nv_rd32(%struct.nvc0_ltcg_priv* %10, i32 380)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ffs(i32 %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %30, %15
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nvc0_ltcg_priv*, %struct.nvc0_ltcg_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nvc0_ltcg_priv, %struct.nvc0_ltcg_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.nvc0_ltcg_priv*, %struct.nvc0_ltcg_priv** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @nvc0_ltcg_subp_isr(%struct.nvc0_ltcg_priv* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.nvc0_ltcg_priv*, %struct.nvc0_ltcg_priv** %3, align 8
  %41 = call i32 @nv_mask(%struct.nvc0_ltcg_priv* %40, i32 1600, i32 33554432, i32 0)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_ltcg_priv*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @nvc0_ltcg_subp_isr(%struct.nvc0_ltcg_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nvc0_ltcg_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
