; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw, %struct.pci_dev*, %struct.e1000_ring, %struct.e1000_ring }
%struct.e1000_hw = type { i32 }
%struct.pci_dev = type { i32 }
%struct.e1000_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_run_loopback_test(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
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
  store %struct.e1000_ring* %16, %struct.e1000_ring** %3, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 2
  store %struct.e1000_ring* %18, %struct.e1000_ring** %4, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %5, align 8
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 0
  store %struct.e1000_hw* %23, %struct.e1000_hw** %6, align 8
  store i32 0, i32* %13, align 4
  %24 = call i32 @RDT(i32 0)
  %25 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @ew32(i32 %24, i32 %28)
  %30 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 64
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %51

44:                                               ; preds = %1
  %45 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 64
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %37
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %169, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %172

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %99, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %102

60:                                               ; preds = %57
  %61 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @e1000_create_lbtest_frame(i32 %68, i32 1024)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_sync_single_for_device(i32* %71, i32 %79, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %57

102:                                              ; preds = %57
  %103 = call i32 @TDT(i32 0)
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ew32(i32 %103, i32 %104)
  %106 = call i32 (...) @e1e_flush()
  %107 = call i32 @msleep(i32 200)
  %108 = load i64, i64* @jiffies, align 8
  store i64 %108, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %156, %102
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %113 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %121 = call i32 @dma_sync_single_for_cpu(i32* %111, i32 %119, i32 2048, i32 %120)
  %122 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @e1000_check_lbtest_frame(i32 %129, i32 1024)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %109
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %133, %109
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %141 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %144, %136
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 64
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i64, i64* @jiffies, align 8
  %151 = load i64, i64* %14, align 8
  %152 = add i64 %151, 20
  %153 = call i32 @time_after(i64 %150, i64 %152)
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %149, %146
  %157 = phi i1 [ false, %146 ], [ %155, %149 ]
  br i1 %157, label %109, label %158

158:                                              ; preds = %156
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 64
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 13, i32* %13, align 4
  br label %172

162:                                              ; preds = %158
  %163 = load i64, i64* @jiffies, align 8
  %164 = load i64, i64* %14, align 8
  %165 = add i64 %164, 20
  %166 = icmp uge i64 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 14, i32* %13, align 4
  br label %172

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %52

172:                                              ; preds = %167, %161, %52
  %173 = load i32, i32* %13, align 4
  ret i32 %173
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @e1000_create_lbtest_frame(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @e1000_check_lbtest_frame(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
