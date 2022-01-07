; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_free_hw_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_free_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_2__*, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32*, i32, i32*, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i32*, i32 }
%struct.qlcnic_host_rds_ring = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_free_hw_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_recv_context*, align 8
  %4 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %5 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 5
  %10 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  store %struct.qlcnic_recv_context* %10, %struct.qlcnic_recv_context** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 4
  %20 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %20, i64 %22
  store %struct.qlcnic_host_tx_ring* %23, %struct.qlcnic_host_tx_ring** %6, align 8
  %24 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %17
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dma_free_coherent(i32* %32, i32 4, i32* %35, i32 %38)
  %40 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %28, %17
  %43 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %53 = call i32 @TX_DESC_RINGSIZE(%struct.qlcnic_host_tx_ring* %52)
  %54 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %58 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_free_coherent(i32* %51, i32 %53, i32* %56, i32 %59)
  %61 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %47, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %11

67:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %102, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %68
  %75 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %75, i32 0, i32 1
  %77 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %77, i64 %79
  store %struct.qlcnic_host_rds_ring* %80, %struct.qlcnic_host_rds_ring** %4, align 8
  %81 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %82 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %74
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %91 = call i32 @RCV_DESC_RINGSIZE(%struct.qlcnic_host_rds_ring* %90)
  %92 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %93 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %96 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dma_free_coherent(i32* %89, i32 %91, i32* %94, i32 %97)
  %99 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %100 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %85, %74
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %68

105:                                              ; preds = %68
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %140, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %106
  %113 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %3, align 8
  %114 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %113, i32 0, i32 0
  %115 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %115, i64 %117
  store %struct.qlcnic_host_sds_ring* %118, %struct.qlcnic_host_sds_ring** %5, align 8
  %119 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %120 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %112
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %129 = call i32 @STATUS_DESC_RINGSIZE(%struct.qlcnic_host_sds_ring* %128)
  %130 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %131 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %134 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dma_free_coherent(i32* %127, i32 %129, i32* %132, i32 %135)
  %137 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %138 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %123, %112
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %106

143:                                              ; preds = %106
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @TX_DESC_RINGSIZE(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @RCV_DESC_RINGSIZE(%struct.qlcnic_host_rds_ring*) #1

declare dso_local i32 @STATUS_DESC_RINGSIZE(%struct.qlcnic_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
