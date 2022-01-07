; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_pll_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_pll.c_pll_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_mapping = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@nv04_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@nv40_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@nv50_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@nv84_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pll_mapping* (%struct.nouveau_bios*)* @pll_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pll_mapping* @pll_map(%struct.nouveau_bios* %0) #0 {
  %2 = alloca %struct.pll_mapping*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %3, align 8
  %4 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %5 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %42 [
    i32 133, label %8
    i32 132, label %8
    i32 131, label %8
    i32 130, label %8
    i32 129, label %10
    i32 128, label %12
  ]

8:                                                ; preds = %1, %1, %1, %1
  %9 = load %struct.pll_mapping*, %struct.pll_mapping** @nv04_pll_mapping, align 8
  store %struct.pll_mapping* %9, %struct.pll_mapping** %2, align 8
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.pll_mapping*, %struct.pll_mapping** @nv40_pll_mapping, align 8
  store %struct.pll_mapping* %11, %struct.pll_mapping** %2, align 8
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %14 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 80
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.pll_mapping*, %struct.pll_mapping** @nv50_pll_mapping, align 8
  store %struct.pll_mapping* %19, %struct.pll_mapping** %2, align 8
  br label %43

20:                                               ; preds = %12
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %22 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 163
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %28 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 170
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %34 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 172
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %26, %20
  %39 = load %struct.pll_mapping*, %struct.pll_mapping** @nv84_pll_mapping, align 8
  store %struct.pll_mapping* %39, %struct.pll_mapping** %2, align 8
  br label %43

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %1, %41
  store %struct.pll_mapping* null, %struct.pll_mapping** %2, align 8
  br label %43

43:                                               ; preds = %42, %38, %18, %10, %8
  %44 = load %struct.pll_mapping*, %struct.pll_mapping** %2, align 8
  ret %struct.pll_mapping* %44
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nouveau_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
