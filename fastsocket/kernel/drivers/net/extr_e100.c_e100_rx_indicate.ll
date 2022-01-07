; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_rx_indicate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_rx_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, i32, %struct.net_device*, %struct.TYPE_5__*, i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rx = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rfd = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"status=0x%04X\0A\00", align 1
@cb_complete = common dso_local global i32 0, align 4
@cb_el = common dso_local global i32 0, align 4
@RU_RUNNING = common dso_local global i64 0, align 8
@rus_no_res = common dso_local global i32 0, align 4
@RU_SUSPENDED = common dso_local global i8* null, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@RFD_BUF_LEN = common dso_local global i32 0, align 4
@cb_ok = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, %struct.rx*, i32*, i32)* @e100_rx_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_rx_indicate(%struct.nic* %0, %struct.rx* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nic*, align 8
  %7 = alloca %struct.rx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.rfd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %6, align 8
  store %struct.rx* %1, %struct.rx** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nic*, %struct.nic** %6, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %10, align 8
  %18 = load %struct.rx*, %struct.rx** %7, align 8
  %19 = getelementptr inbounds %struct.rx, %struct.rx* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.rfd*
  store %struct.rfd* %24, %struct.rfd** %12, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp uge i32 %29, %30
  br label %32

32:                                               ; preds = %27, %4
  %33 = phi i1 [ false, %4 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %232

40:                                               ; preds = %32
  %41 = load %struct.nic*, %struct.nic** %6, align 8
  %42 = getelementptr inbounds %struct.nic, %struct.nic* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rx*, %struct.rx** %7, align 8
  %45 = getelementptr inbounds %struct.rx, %struct.rx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %48 = call i32 @pci_dma_sync_single_for_cpu(i32 %43, i32 %46, i32 12, i32 %47)
  %49 = load %struct.rfd*, %struct.rfd** %12, align 8
  %50 = getelementptr inbounds %struct.rfd, %struct.rfd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.nic*, %struct.nic** %6, align 8
  %54 = load i32, i32* @rx_status, align 4
  %55 = load i32, i32* @KERN_DEBUG, align 4
  %56 = load %struct.nic*, %struct.nic** %6, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 2
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @netif_printk(%struct.nic* %53, i32 %54, i32 %55, %struct.net_device* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = call i32 (...) @rmb()
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @cb_complete, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %111

70:                                               ; preds = %40
  %71 = load %struct.rfd*, %struct.rfd** %12, align 8
  %72 = getelementptr inbounds %struct.rfd, %struct.rfd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load i32, i32* @cb_el, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %70
  %79 = load i64, i64* @RU_RUNNING, align 8
  %80 = load %struct.nic*, %struct.nic** %6, align 8
  %81 = getelementptr inbounds %struct.nic, %struct.nic* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.nic*, %struct.nic** %6, align 8
  %86 = getelementptr inbounds %struct.nic, %struct.nic* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @ioread8(i32* %89)
  %91 = load i32, i32* @rus_no_res, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i8*, i8** @RU_SUSPENDED, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.nic*, %struct.nic** %6, align 8
  %98 = getelementptr inbounds %struct.nic, %struct.nic* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %94, %84
  br label %100

100:                                              ; preds = %99, %78, %70
  %101 = load %struct.nic*, %struct.nic** %6, align 8
  %102 = getelementptr inbounds %struct.nic, %struct.nic* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.rx*, %struct.rx** %7, align 8
  %105 = getelementptr inbounds %struct.rx, %struct.rx* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %108 = call i32 @pci_dma_sync_single_for_device(i32 %103, i32 %106, i32 12, i32 %107)
  %109 = load i32, i32* @ENODATA, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %232

111:                                              ; preds = %40
  %112 = load %struct.rfd*, %struct.rfd** %12, align 8
  %113 = getelementptr inbounds %struct.rfd, %struct.rfd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = and i32 %115, 16383
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* @RFD_BUF_LEN, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, 12
  %122 = icmp ugt i64 %118, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %111
  %127 = load i32, i32* @RFD_BUF_LEN, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, 12
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %126, %111
  %132 = load %struct.nic*, %struct.nic** %6, align 8
  %133 = getelementptr inbounds %struct.nic, %struct.nic* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.rx*, %struct.rx** %7, align 8
  %136 = getelementptr inbounds %struct.rx, %struct.rx* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RFD_BUF_LEN, align 4
  %139 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %140 = call i32 @pci_unmap_single(i32 %134, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.rfd*, %struct.rfd** %12, align 8
  %142 = getelementptr inbounds %struct.rfd, %struct.rfd* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le16_to_cpu(i32 %143)
  %145 = load i32, i32* @cb_el, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %131
  %149 = load i64, i64* @RU_RUNNING, align 8
  %150 = load %struct.nic*, %struct.nic** %6, align 8
  %151 = getelementptr inbounds %struct.nic, %struct.nic* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load %struct.nic*, %struct.nic** %6, align 8
  %156 = getelementptr inbounds %struct.nic, %struct.nic* %155, i32 0, i32 3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = call i32 @ioread8(i32* %159)
  %161 = load i32, i32* @rus_no_res, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i8*, i8** @RU_SUSPENDED, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.nic*, %struct.nic** %6, align 8
  %168 = getelementptr inbounds %struct.nic, %struct.nic* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %164, %154
  br label %170

170:                                              ; preds = %169, %148, %131
  %171 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %172 = call i32 @skb_reserve(%struct.sk_buff* %171, i32 12)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @skb_put(%struct.sk_buff* %173, i32 %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %177 = load %struct.nic*, %struct.nic** %6, align 8
  %178 = getelementptr inbounds %struct.nic, %struct.nic* %177, i32 0, i32 2
  %179 = load %struct.net_device*, %struct.net_device** %178, align 8
  %180 = call i32 @eth_type_trans(%struct.sk_buff* %176, %struct.net_device* %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @cb_ok, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %170
  %192 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %193 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %192)
  br label %229

194:                                              ; preds = %170
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @ETH_DATA_LEN, align 4
  %197 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %198 = add nsw i32 %196, %197
  %199 = icmp sgt i32 %195, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load %struct.nic*, %struct.nic** %6, align 8
  %202 = getelementptr inbounds %struct.nic, %struct.nic* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %206 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %205)
  br label %228

207:                                              ; preds = %194
  %208 = load %struct.net_device*, %struct.net_device** %10, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.net_device*, %struct.net_device** %10, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %213
  store i32 %218, i32* %216, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %220 = call i32 @netif_receive_skb(%struct.sk_buff* %219)
  %221 = load i32*, i32** %8, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %207
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %224, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %223, %207
  br label %228

228:                                              ; preds = %227, %200
  br label %229

229:                                              ; preds = %228, %191
  %230 = load %struct.rx*, %struct.rx** %7, align 8
  %231 = getelementptr inbounds %struct.rx, %struct.rx* %230, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %231, align 8
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %229, %100, %37
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
