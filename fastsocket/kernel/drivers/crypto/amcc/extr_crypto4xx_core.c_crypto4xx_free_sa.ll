; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_free_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_free_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { i32, i64, i64, i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto4xx_free_sa(%struct.crypto4xx_ctx* %0) #0 {
  %2 = alloca %struct.crypto4xx_ctx*, align 8
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %2, align 8
  %3 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 4
  %19 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dma_free_coherent(i32 %14, i32 %18, i32* %21, i64 %24)
  br label %26

26:                                               ; preds = %7, %1
  %27 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4
  %43 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dma_free_coherent(i32 %38, i32 %42, i32* %45, i64 %48)
  br label %50

50:                                               ; preds = %31, %26
  %51 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
