; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nve0_fifo_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nve0_fifo_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_fifo_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nve0_fifo_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = bitcast %struct.nouveau_object* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %7, %struct.nve0_fifo_priv** %3, align 8
  %8 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i32 @nouveau_gpuobj_unmap(i32* %10)
  %12 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %13 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %44, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %19 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %25 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %32)
  %34 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %35 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %42)
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %49 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %48, i32 0, i32 0
  %50 = call i32 @nouveau_fifo_destroy(i32* %49)
  ret void
}

declare dso_local i32 @nouveau_gpuobj_unmap(i32*) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @nouveau_fifo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
