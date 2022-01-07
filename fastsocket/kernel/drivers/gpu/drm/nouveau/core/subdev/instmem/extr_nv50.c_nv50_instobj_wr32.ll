; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv50.c_nv50_instobj_wr32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv50.c_nv50_instobj_wr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_instmem_priv = type { i32, i32 }
%struct.nv50_instobj_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*, i32, i32)* @nv50_instobj_wr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_instobj_wr32(%struct.nouveau_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_instmem_priv*, align 8
  %8 = alloca %struct.nv50_instobj_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv50_instmem_priv*
  store %struct.nv50_instmem_priv* %16, %struct.nv50_instmem_priv** %7, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_instobj_priv*
  store %struct.nv50_instobj_priv* %19, %struct.nv50_instobj_priv** %8, align 8
  %20 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %8, align 8
  %21 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, 17592184995840
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %8, align 8
  %31 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 1048575
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %7, align 8
  %41 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %7, align 8
  %45 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %3
  %53 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 16
  %56 = call i32 @nv_wr32(%struct.nv50_instmem_priv* %53, i32 5888, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %7, align 8
  %59 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %3
  %61 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 7340032, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @nv_wr32(%struct.nv50_instmem_priv* %61, i32 %63, i32 %64)
  %66 = load %struct.nv50_instmem_priv*, %struct.nv50_instmem_priv** %7, align 8
  %67 = getelementptr inbounds %struct.nv50_instmem_priv, %struct.nv50_instmem_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_instmem_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
