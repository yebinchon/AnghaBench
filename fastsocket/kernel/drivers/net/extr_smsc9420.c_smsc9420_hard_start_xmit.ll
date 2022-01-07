; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@TDES0_OWN_ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pci_map_single failed, dropping packet\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TDES1_LS_ = common dso_local global i32 0, align 4
@TDES1_IC_ = common dso_local global i32 0, align 4
@TDES1_TER_ = common dso_local global i32 0, align 4
@TX_POLL_DEMAND = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @smsc9420_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.smsc9420_pdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %11)
  store %struct.smsc9420_pdata* %12, %struct.smsc9420_pdata** %6, align 8
  %13 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %14 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %17 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 2
  %20 = load i32, i32* @TX_RING_SIZE, align 4
  %21 = srem i32 %19, %20
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %23 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @smsc9420_complete_tx(%struct.net_device* %27)
  %29 = call i32 (...) @rmb()
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TDES0_OWN_, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %42 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %51 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %60 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %69 = call i8* @pci_map_single(i32 %61, i32 %64, i64 %67, i32 %68)
  store i8* %69, i8** %7, align 8
  %70 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %71 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @pci_dma_mapping_error(i32 %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %2
  %77 = load i32, i32* @TX_ERR, align 4
  %78 = call i32 @smsc_warn(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %79, i32* %3, align 4
  br label %173

80:                                               ; preds = %2
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = ptrtoint %struct.sk_buff* %81 to i32
  %83 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %84 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %83, i32 0, i32 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %93 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %92, i32 0, i32 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %91, i32* %98, align 4
  %99 = load i32, i32* @TDES1_LS_, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = and i32 %103, 2047
  %105 = or i32 %99, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %80
  %110 = load i32, i32* @TDES1_IC_, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %114 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @netif_stop_queue(i32 %115)
  br label %117

117:                                              ; preds = %109, %80
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @TX_RING_SIZE, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp eq i32 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i32, i32* @TDES1_TER_, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %125, %117
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %132 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i8* %130, i8** %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %140 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32 %138, i32* %145, align 4
  %146 = call i32 (...) @wmb()
  %147 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %148 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* @TX_RING_SIZE, align 4
  %152 = srem i32 %150, %151
  %153 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %154 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @TDES0_OWN_, align 4
  %156 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %157 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %155, i32* %162, align 8
  %163 = call i32 (...) @wmb()
  %164 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %165 = load i32, i32* @TX_POLL_DEMAND, align 4
  %166 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %164, i32 %165, i32 1)
  %167 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %168 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %167)
  %169 = load i32, i32* @jiffies, align 4
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %129, %76
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc9420_complete_tx(%struct.net_device*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
