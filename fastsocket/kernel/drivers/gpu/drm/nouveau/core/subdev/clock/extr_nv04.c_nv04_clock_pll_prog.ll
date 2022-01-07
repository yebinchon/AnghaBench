; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_nv04_clock_pll_prog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_nv04_clock_pll_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nouveau_pll_vals = type { i32 }
%struct.nv04_clock_priv = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_clock_pll_prog(%struct.nouveau_clock* %0, i32 %1, %struct.nouveau_pll_vals* %2) #0 {
  %4 = alloca %struct.nouveau_clock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_pll_vals*, align 8
  %7 = alloca %struct.nv04_clock_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_pll_vals* %2, %struct.nouveau_pll_vals** %6, align 8
  %9 = load %struct.nouveau_clock*, %struct.nouveau_clock** %4, align 8
  %10 = bitcast %struct.nouveau_clock* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv04_clock_priv*
  store %struct.nv04_clock_priv* %11, %struct.nv04_clock_priv** %7, align 8
  %12 = load %struct.nouveau_clock*, %struct.nouveau_clock** %4, align 8
  %13 = call %struct.TYPE_4__* @nouveau_bios(%struct.nouveau_clock* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 48
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 49
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 53
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 54
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 64
  br i1 %30, label %31, label %45

31:                                               ; preds = %28, %25, %22, %19, %3
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 16476
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %38 = call i32 @setPLL_double_highregs(%struct.nv04_clock_priv* %35, i32 %36, %struct.nouveau_pll_vals* %37)
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %43 = call i32 @setPLL_double_lowregs(%struct.nv04_clock_priv* %40, i32 %41, %struct.nouveau_pll_vals* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %50

45:                                               ; preds = %28
  %46 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %49 = call i32 @setPLL_single(%struct.nv04_clock_priv* %46, i32 %47, %struct.nouveau_pll_vals* %48)
  br label %50

50:                                               ; preds = %45, %44
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @nouveau_bios(%struct.nouveau_clock*) #1

declare dso_local i32 @setPLL_double_highregs(%struct.nv04_clock_priv*, i32, %struct.nouveau_pll_vals*) #1

declare dso_local i32 @setPLL_double_lowregs(%struct.nv04_clock_priv*, i32, %struct.nouveau_pll_vals*) #1

declare dso_local i32 @setPLL_single(%struct.nv04_clock_priv*, i32, %struct.nouveau_pll_vals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
