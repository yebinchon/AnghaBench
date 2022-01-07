; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.jme_ring = type { i64, i32*, i64, i32*, i64, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RING_DESC_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_setup_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_setup_rx_resources(%struct.jme_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_ring*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %6, i32 0, i32 2
  %8 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %9 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %8, i64 0
  store %struct.jme_ring* %9, %struct.jme_ring** %5, align 8
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @RX_RING_ALLOC_SIZE(i32 %16)
  %18 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %19 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i64 @dma_alloc_coherent(i32* %13, i32 %17, i64* %19, i32 %20)
  %22 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %23 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %25 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %122

29:                                               ; preds = %1
  %30 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %31 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @RING_DESC_ALIGN, align 4
  %34 = call i64 @ALIGN(i64 %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %38 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %40 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @RING_DESC_ALIGN, align 4
  %43 = call i64 @ALIGN(i64 %41, i32 %42)
  %44 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %45 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %47 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %49 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %48, i32 0, i32 5
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i32* @kmalloc(i32 %56, i32 %57)
  %59 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %60 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %62 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %29
  br label %106

70:                                               ; preds = %29
  %71 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %72 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memset(i32* %73, i32 0, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %102, %70
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @jme_make_new_rx_buf(%struct.jme_adapter* %88, i32 %89)
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %95 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %133

98:                                               ; preds = %87
  %99 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @jme_set_clean_rxdesc(%struct.jme_adapter* %99, i32 %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %81

105:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %133

106:                                              ; preds = %69
  %107 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @RX_RING_ALLOC_SIZE(i32 %113)
  %115 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %116 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %119 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @dma_free_coherent(i32* %110, i32 %114, i64 %117, i64 %120)
  br label %122

122:                                              ; preds = %106, %28
  %123 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %124 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %123, i32 0, i32 3
  store i32* null, i32** %124, align 8
  %125 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %126 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %128 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %130 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %129, i32 0, i32 1
  store i32* null, i32** %130, align 8
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %122, %105, %93
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @RX_RING_ALLOC_SIZE(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jme_make_new_rx_buf(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jme_free_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_set_clean_rxdesc(%struct.jme_adapter*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
