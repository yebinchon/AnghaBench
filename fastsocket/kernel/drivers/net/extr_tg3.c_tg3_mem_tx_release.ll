; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mem_tx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mem_tx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__*, %struct.tg3_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_napi = type { i32*, i32*, i32 }

@TG3_TX_RING_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_mem_tx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_mem_tx_release(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 2
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i64 %16
  store %struct.tg3_napi* %17, %struct.tg3_napi** %4, align 8
  %18 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %19 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %11
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @TG3_TX_RING_BYTES, align 4
  %28 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %29 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %32 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dma_free_coherent(i32* %26, i32 %27, i32* %30, i32 %33)
  %35 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %36 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22, %11
  %38 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %39 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %43 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
