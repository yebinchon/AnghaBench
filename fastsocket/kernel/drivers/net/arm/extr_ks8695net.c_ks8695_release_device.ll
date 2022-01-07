; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_release_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { i32, i32, i32, i64, i64, i64, i64 }

@RING_DMA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8695_priv*)* @ks8695_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_release_device(%struct.ks8695_priv* %0) #0 {
  %2 = alloca %struct.ks8695_priv*, align 8
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %2, align 8
  %3 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @iounmap(i64 %5)
  %7 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @iounmap(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @release_resource(i64 %19)
  %21 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @kfree(i64 %23)
  %25 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @release_resource(i64 %32)
  %34 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @kfree(i64 %36)
  br label %38

38:                                               ; preds = %29, %16
  %39 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RING_DMA_SIZE, align 4
  %43 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %44 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dma_free_coherent(i32 %41, i32 %42, i32 %45, i32 %48)
  ret void
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_resource(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
