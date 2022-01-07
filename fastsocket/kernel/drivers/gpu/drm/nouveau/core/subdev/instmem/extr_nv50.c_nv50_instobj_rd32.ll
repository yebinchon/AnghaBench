; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv50.c_nv50_instobj_rd32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv50.c_nv50_instobj_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_instmem_priv = type { i32, i32 }
%struct.nv50_instobj_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv50_instobj_rd32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_instobj_rd32(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_instmem_priv*, align 8
  %6 = alloca %struct.nv50_instobj_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv50_instmem_priv*
  store %struct.nv50_instmem_priv* %15, %struct.nv50_instmem_priv** %5, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %17 = bitcast %struct.nouveau_object* %16 to i8*
  %18 = bitcast i8* %17 to %struct.nv50_instobj_priv*
  store %struct.nv50_instobj_priv* %18, %struct.nv50_instobj_priv** %6, align 8
  %19 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %6, align 8
  %20 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 17592184995840
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %6, align 8
  %30 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 1048575
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %5, align 8
  %40 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %5, align 8
  %44 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %2
  %52 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 16
  %55 = call i32 @nv_wr32(%struct.nv50_instmem_priv* %52, i32 5888, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %5, align 8
  %58 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %2
  %60 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 7340032, %61
  %63 = call i32 @nv_rd32(%struct.nv50_instmem_priv* %60, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %5, align 8
  %65 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_instmem_priv*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_instmem_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
