; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_do_tx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_do_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type opaque
%struct.ns83820 = type { i32, i32, i32*, i32, i32, %struct.sk_buff**, %struct.TYPE_2__ }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"do_tx_done(%p)\0A\00", align 1
@DESC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"tx_done_idx=%d free_idx=%d cmdsts=%08x\0A\00", align 1
@DESC_CMDSTS = common dso_local global i64 0, align 8
@CMDSTS_OWN = common dso_local global i32 0, align 4
@CMDSTS_ERR = common dso_local global i32 0, align 4
@CMDSTS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"done(%p)\0A\00", align 1
@CMDSTS_LEN_MASK = common dso_local global i32 0, align 4
@DESC_BUFPTR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NR_TX_DESC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"start_queue(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @do_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ns83820*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = bitcast %struct.net_device* %10 to %struct.sk_buff*
  %12 = call %struct.ns83820* @PRIV(%struct.sk_buff* %11)
  store %struct.ns83820* %12, %struct.ns83820** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = ptrtoint %struct.net_device* %13 to i32
  %15 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %17 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %20 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DESC_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %29 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* @DESC_CMDSTS, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %144, %1
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %40 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* @CMDSTS_OWN, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* @DESC_CMDSTS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %43, %37
  %54 = phi i1 [ false, %37 ], [ %52, %43 ]
  br i1 %54, label %55, label %165

55:                                               ; preds = %53
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @CMDSTS_ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %62 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CMDSTS_OK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %73 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @CMDSTS_OK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 65535
  %85 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %86 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, %84
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %93 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94, i32 %95)
  %97 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %98 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %97, i32 0, i32 5
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %101
  %103 = load %struct.sk_buff*, %struct.sk_buff** %102, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %7, align 8
  %104 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %105 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %104, i32 0, i32 5
  %106 = load %struct.sk_buff**, %struct.sk_buff*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %106, i64 %108
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = ptrtoint %struct.sk_buff* %110 to i32
  %112 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @CMDSTS_LEN_MASK, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %8, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* @DESC_BUFPTR, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @desc_addr_get(i32* %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %90
  %124 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %125 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %130 = call i32 @pci_unmap_single(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %131)
  %133 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %134 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %133, i32 0, i32 4
  %135 = call i32 @atomic_dec(i32* %134)
  br label %144

136:                                              ; preds = %90
  %137 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %138 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %143 = call i32 @pci_unmap_page(i32 %139, i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %136, %123
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* @NR_TX_DESC, align 4
  %148 = srem i32 %146, %147
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %151 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = call i32 @cpu_to_le32(i32 0)
  %153 = load i32*, i32** %6, align 8
  %154 = load i64, i64* @DESC_CMDSTS, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = call i32 (...) @mb()
  %157 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %158 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @DESC_SIZE, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  store i32* %164, i32** %6, align 8
  br label %37

165:                                              ; preds = %53
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = bitcast %struct.net_device* %166 to %struct.sk_buff*
  %168 = call i64 @netif_queue_stopped(%struct.sk_buff* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %165
  %171 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %172 = call i64 @start_tx_okay(%struct.ns83820* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = ptrtoint %struct.net_device* %175 to i32
  %177 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = bitcast %struct.net_device* %178 to %struct.sk_buff*
  %180 = call i32 @netif_start_queue(%struct.sk_buff* %179)
  %181 = load %struct.net_device*, %struct.net_device** %2, align 8
  %182 = bitcast %struct.net_device* %181 to %struct.sk_buff*
  %183 = call i32 @netif_wake_queue(%struct.sk_buff* %182)
  br label %184

184:                                              ; preds = %174, %170, %165
  ret void
}

declare dso_local %struct.ns83820* @PRIV(%struct.sk_buff*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @desc_addr_get(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.sk_buff*) #1

declare dso_local i64 @start_tx_okay(%struct.ns83820*) #1

declare dso_local i32 @netif_start_queue(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
