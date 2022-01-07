; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_alloc_sa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_alloc_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { i32, i32*, i32*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto4xx_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 4
  %15 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %15, i32 0, i32 3
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i8* @dma_alloc_coherent(i32 %12, i32 %14, i32* %16, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 4
  %39 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %39, i32 0, i32 5
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i8* @dma_alloc_coherent(i32 %36, i32 %38, i32* %40, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %29
  %51 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 4
  %62 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_free_coherent(i32 %57, i32 %61, i32* %64, i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %87

71:                                               ; preds = %29
  %72 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 4
  %77 = call i32 @memset(i32* %74, i32 0, i32 %76)
  %78 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %81, 4
  %83 = call i32 @memset(i32* %80, i32 0, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %71, %50, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
