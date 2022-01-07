; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_destroy_pdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_destroy_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i32, i32*, %struct.TYPE_2__*, i32, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*)* @crypto4xx_destroy_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_destroy_pdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca %struct.crypto4xx_device*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %2, align 8
  %3 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %4 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %18 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %21 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32 %12, i32 %16, i32* %19, i32 %22)
  br label %24

24:                                               ; preds = %7, %1
  %25 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %26 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %31 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %36 = mul nsw i32 256, %35
  %37 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %38 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(i32 %34, i32 %36, i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %29, %24
  %45 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %46 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %51 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %60 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %63 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dma_free_coherent(i32 %54, i32 %58, i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %49, %44
  %67 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %68 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @kfree(i32 %69)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
