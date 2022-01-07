; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vmmgr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv44.c_nv44_vmmgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_vmmgr_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }

@NV44_GART_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv44_vmmgr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_vmmgr_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv04_vmmgr_priv*, align 8
  %5 = alloca %struct.nouveau_gpuobj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = bitcast %struct.nouveau_object* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %10, %struct.nv04_vmmgr_priv** %4, align 8
  %11 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %12 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %17, align 8
  %19 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %18, i64 0
  %20 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %19, align 8
  store %struct.nouveau_gpuobj* %20, %struct.nouveau_gpuobj** %5, align 8
  %21 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %22 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %21, i32 0, i32 1
  %23 = call i32 @nouveau_vmmgr_init(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %30 = call i32 @nv_rd32(%struct.nv04_vmmgr_priv* %29, i32 1049100)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 19
  %35 = add nsw i32 %34, 1
  %36 = shl i32 %35, 19
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %40 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %39, i32 1050704, i32 -2147483648)
  %41 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %42 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %43 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %41, i32 1050648, i32 %44)
  %46 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %47 = load i32, i32* @NV44_GART_SIZE, align 4
  %48 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %46, i32 1050628, i32 %47)
  %49 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %50 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %49, i32 1050704, i32 32768)
  %51 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %52 = call i32 @nv_mask(%struct.nv04_vmmgr_priv* %51, i32 1048716, i32 512, i32 512)
  %53 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %54 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %53, i32 1050656, i32 0)
  %55 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %56 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %55, i32 1050668, i32 1)
  %57 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, 16
  %60 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %57, i32 1050624, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %28, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @nouveau_vmmgr_init(i32*) #1

declare dso_local i32 @nv_rd32(%struct.nv04_vmmgr_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_vmmgr_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv04_vmmgr_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
