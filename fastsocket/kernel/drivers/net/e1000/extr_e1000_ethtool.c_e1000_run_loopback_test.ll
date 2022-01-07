; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_rx_ring, %struct.e1000_tx_ring, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.e1000_tx_ring = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.e1000_hw = type { i32 }

@RDT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_run_loopback_test(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_tx_ring*, align 8
  %5 = alloca %struct.e1000_rx_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 3
  store %struct.e1000_hw* %16, %struct.e1000_hw** %3, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 2
  store %struct.e1000_tx_ring* %18, %struct.e1000_tx_ring** %4, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  store %struct.e1000_rx_ring* %20, %struct.e1000_rx_ring** %5, align 8
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %6, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @RDT, align 4
  %25 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @ew32(i32 %24, i32 %28)
  %30 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 64
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %51

44:                                               ; preds = %1
  %45 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %46 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 64
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %37
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %179, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %182

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %101, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @e1000_create_lbtest_frame(i32 %68, i32 1024)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_sync_single_for_device(i32* %71, i32 %79, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %57

104:                                              ; preds = %57
  %105 = load i32, i32* @TDT, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ew32(i32 %105, i32 %106)
  %108 = call i32 (...) @E1000_WRITE_FLUSH()
  %109 = call i32 @msleep(i32 200)
  %110 = load i64, i64* @jiffies, align 8
  store i64 %110, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %166, %104
  %112 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %115 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %123 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %131 = call i32 @dma_sync_single_for_cpu(i32* %113, i32 %121, i32 %129, i32 %130)
  %132 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %133 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @e1000_check_lbtest_frame(i32 %139, i32 1024)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %111
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %143, %111
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  %149 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %150 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %148, %151
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %156, %146
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %159, 64
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i64, i64* @jiffies, align 8
  %163 = load i64, i64* %14, align 8
  %164 = add i64 %163, 20
  %165 = icmp ult i64 %162, %164
  br label %166

166:                                              ; preds = %161, %158
  %167 = phi i1 [ false, %158 ], [ %165, %161 ]
  br i1 %167, label %111, label %168

168:                                              ; preds = %166
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 64
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 13, i32* %13, align 4
  br label %182

172:                                              ; preds = %168
  %173 = load i64, i64* @jiffies, align 8
  %174 = load i64, i64* %14, align 8
  %175 = add i64 %174, 2
  %176 = icmp uge i64 %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 14, i32* %13, align 4
  br label %182

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %52

182:                                              ; preds = %177, %171, %52
  %183 = load i32, i32* %13, align 4
  ret i32 %183
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_create_lbtest_frame(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @e1000_check_lbtest_frame(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
