; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_free_state_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_free_state_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto4xx_free_state_record(%struct.crypto4xx_ctx* %0) #0 {
  %2 = alloca %struct.crypto4xx_ctx*, align 8
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %2, align 8
  %3 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dma_free_coherent(i32 %14, i32 4, i32* %17, i64 %20)
  br label %22

22:                                               ; preds = %7, %1
  %23 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
