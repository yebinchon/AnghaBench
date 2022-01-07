; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mem_tx_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_mem_tx_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__*, %struct.tg3_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_napi = type { i32, i32, i32 }

@ENABLE_TSS = common dso_local global i32 0, align 4
@TG3_TX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TG3_TX_RING_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_mem_tx_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_mem_tx_acquire(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = getelementptr inbounds %struct.tg3, %struct.tg3* %6, i32 0, i32 2
  %8 = load %struct.tg3_napi*, %struct.tg3_napi** %7, align 8
  %9 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %8, i64 0
  store %struct.tg3_napi* %9, %struct.tg3_napi** %5, align 8
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = load i32, i32* @ENABLE_TSS, align 4
  %12 = call i64 @tg3_flag(%struct.tg3* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %16 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %15, i32 1
  store %struct.tg3_napi* %16, %struct.tg3_napi** %5, align 8
  br label %17

17:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tg3*, %struct.tg3** %3, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load i32, i32* @TG3_TX_RING_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @kzalloc(i32 %28, i32 %29)
  %31 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %32 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %34 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %62

38:                                               ; preds = %24
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @TG3_TX_RING_BYTES, align 4
  %44 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %45 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %44, i32 0, i32 1
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @dma_alloc_coherent(i32* %42, i32 %43, i32* %45, i32 %46)
  %48 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %49 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %51 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %38
  br label %62

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %60 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %59, i32 1
  store %struct.tg3_napi* %60, %struct.tg3_napi** %5, align 8
  br label %18

61:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %67

62:                                               ; preds = %54, %37
  %63 = load %struct.tg3*, %struct.tg3** %3, align 8
  %64 = call i32 @tg3_mem_tx_release(%struct.tg3* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @tg3_mem_tx_release(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
