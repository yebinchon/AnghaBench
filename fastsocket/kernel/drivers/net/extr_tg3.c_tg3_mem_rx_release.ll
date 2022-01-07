; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mem_rx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mem_rx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__*, %struct.tg3_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_napi = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_mem_rx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_mem_rx_release(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 2
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i64 %16
  store %struct.tg3_napi* %17, %struct.tg3_napi** %4, align 8
  %18 = load %struct.tg3*, %struct.tg3** %2, align 8
  %19 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %20 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %19, i32 0, i32 2
  %21 = call i32 @tg3_rx_prodring_fini(%struct.tg3* %18, i32* %20)
  %22 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %23 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %11
  br label %43

27:                                               ; preds = %11
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.tg3*, %struct.tg3** %2, align 8
  %33 = call i32 @TG3_RX_RCB_RING_BYTES(%struct.tg3* %32)
  %34 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %35 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %38 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32* %31, i32 %33, i32* %36, i32 %39)
  %41 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %42 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %27, %26
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @tg3_rx_prodring_fini(%struct.tg3*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @TG3_RX_RCB_RING_BYTES(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
