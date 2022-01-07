; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_init_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_init_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spider_net_descr_chain = type { i32, i32, %struct.spider_net_descr*, %struct.spider_net_descr*, %struct.spider_net_descr*, i32, %struct.spider_net_hw_descr* }
%struct.spider_net_descr = type { i32, %struct.spider_net_descr*, %struct.spider_net_descr*, %struct.spider_net_hw_descr* }
%struct.spider_net_hw_descr = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*, %struct.spider_net_descr_chain*)* @spider_net_init_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_init_chain(%struct.spider_net_card* %0, %struct.spider_net_descr_chain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca %struct.spider_net_descr_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spider_net_descr*, align 8
  %8 = alloca %struct.spider_net_hw_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %4, align 8
  store %struct.spider_net_descr_chain* %1, %struct.spider_net_descr_chain** %5, align 8
  %11 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %12 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  store i64 %15, i64* %10, align 8
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %17 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %22 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.spider_net_hw_descr* @dma_alloc_coherent(i32* %19, i64 %20, i32* %22, i32 %23)
  %25 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %26 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %25, i32 0, i32 6
  store %struct.spider_net_hw_descr* %24, %struct.spider_net_hw_descr** %26, align 8
  %27 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %28 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %27, i32 0, i32 6
  %29 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %28, align 8
  %30 = icmp ne %struct.spider_net_hw_descr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %117

34:                                               ; preds = %2
  %35 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %36 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %35, i32 0, i32 2
  %37 = load %struct.spider_net_descr*, %struct.spider_net_descr** %36, align 8
  %38 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %39 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(%struct.spider_net_descr* %37, i32 0, i32 %43)
  %45 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %46 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %45, i32 0, i32 2
  %47 = load %struct.spider_net_descr*, %struct.spider_net_descr** %46, align 8
  store %struct.spider_net_descr* %47, %struct.spider_net_descr** %7, align 8
  %48 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %49 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %48, i32 0, i32 6
  %50 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %49, align 8
  store %struct.spider_net_hw_descr* %50, %struct.spider_net_hw_descr** %8, align 8
  %51 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %52 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %84, %34
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %57 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %62 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %63 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %65 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %67 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %68 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %67, i32 0, i32 3
  store %struct.spider_net_hw_descr* %66, %struct.spider_net_hw_descr** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %71 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %73 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %72, i64 1
  %74 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %75 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %74, i32 0, i32 2
  store %struct.spider_net_descr* %73, %struct.spider_net_descr** %75, align 8
  %76 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %77 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %76, i64 -1
  %78 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %79 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %78, i32 0, i32 1
  store %struct.spider_net_descr* %77, %struct.spider_net_descr** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 16
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %60
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %88 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %87, i32 1
  store %struct.spider_net_descr* %88, %struct.spider_net_descr** %7, align 8
  %89 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %90 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %89, i32 1
  store %struct.spider_net_hw_descr* %90, %struct.spider_net_hw_descr** %8, align 8
  br label %54

91:                                               ; preds = %54
  %92 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %93 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %92, i32 0, i32 2
  %94 = load %struct.spider_net_descr*, %struct.spider_net_descr** %93, align 8
  %95 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %96 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %95, i64 -1
  %97 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %96, i32 0, i32 2
  store %struct.spider_net_descr* %94, %struct.spider_net_descr** %97, align 8
  %98 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %99 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %98, i64 -1
  %100 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %101 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %100, i32 0, i32 2
  %102 = load %struct.spider_net_descr*, %struct.spider_net_descr** %101, align 8
  %103 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %102, i32 0, i32 1
  store %struct.spider_net_descr* %99, %struct.spider_net_descr** %103, align 8
  %104 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %105 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %104, i32 0, i32 5
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %108 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %107, i32 0, i32 2
  %109 = load %struct.spider_net_descr*, %struct.spider_net_descr** %108, align 8
  %110 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %111 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %110, i32 0, i32 4
  store %struct.spider_net_descr* %109, %struct.spider_net_descr** %111, align 8
  %112 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %113 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %112, i32 0, i32 2
  %114 = load %struct.spider_net_descr*, %struct.spider_net_descr** %113, align 8
  %115 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %116 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %115, i32 0, i32 3
  store %struct.spider_net_descr* %114, %struct.spider_net_descr** %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %91, %31
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.spider_net_hw_descr* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @memset(%struct.spider_net_descr*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
