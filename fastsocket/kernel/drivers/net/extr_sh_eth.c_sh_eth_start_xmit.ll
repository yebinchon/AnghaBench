; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32, i64 }
%struct.sh_eth_private = type { i32, i32, %struct.TYPE_2__*, %struct.sh_eth_txdesc*, %struct.sk_buff**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sh_eth_txdesc = type { i64, i32, i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ETHERSMALL = common dso_local global i64 0, align 8
@TD_TACT = common dso_local global i32 0, align 4
@TD_TDLE = common dso_local global i32 0, align 4
@EDTRR = common dso_local global i64 0, align 8
@EDTRR_TRNS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sh_eth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sh_eth_private*, align 8
  %7 = alloca %struct.sh_eth_txdesc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sh_eth_private* %11, %struct.sh_eth_private** %6, align 8
  %12 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %13 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %12, i32 0, i32 5
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %17 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %20 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = load i32, i32* @TX_RING_SIZE, align 4
  %24 = sub nsw i32 %23, 4
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @sh_eth_txfree(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @netif_stop_queue(%struct.net_device* %31)
  %33 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %34 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %33, i32 0, i32 5
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %37, i32* %3, align 4
  br label %158

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %41 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %40, i32 0, i32 5
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %45 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TX_RING_SIZE, align 4
  %48 = srem i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %52 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %51, i32 0, i32 4
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %54
  store %struct.sk_buff* %50, %struct.sk_buff** %55, align 8
  %56 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %57 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %56, i32 0, i32 3
  %58 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %58, i64 %59
  store %struct.sh_eth_txdesc* %60, %struct.sh_eth_txdesc** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @virt_to_phys(i32 %63)
  %65 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %7, align 8
  %66 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %68 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %39
  %74 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %7, align 8
  %75 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ALIGN(i32 %76, i32 4)
  %78 = call i32 @phys_to_virt(i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 2
  %83 = call i32 @sh_eth_soft_swap(i32 %78, i64 %82)
  br label %84

84:                                               ; preds = %73, %39
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @__flush_purge_region(i32 %87, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ETHERSMALL, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i64, i64* @ETHERSMALL, align 8
  %99 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %7, align 8
  %100 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %107

101:                                              ; preds = %84
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %7, align 8
  %106 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %97
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* @TX_RING_SIZE, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = icmp uge i64 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %115 = load i32, i32* @TD_TACT, align 4
  %116 = load i32, i32* @TD_TDLE, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %114, i32 %117)
  %119 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %7, align 8
  %120 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %131

123:                                              ; preds = %107
  %124 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %125 = load i32, i32* @TD_TACT, align 4
  %126 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %124, i32 %125)
  %127 = load %struct.sh_eth_txdesc*, %struct.sh_eth_txdesc** %7, align 8
  %128 = getelementptr inbounds %struct.sh_eth_txdesc, %struct.sh_eth_txdesc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %123, %113
  %132 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %133 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @EDTRR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @ctrl_inl(i64 %140)
  %142 = load i32, i32* @EDTRR_TRNS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %131
  %146 = load i32, i32* @EDTRR_TRNS, align 4
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @EDTRR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @ctrl_outl(i32 %146, i64 %151)
  br label %153

153:                                              ; preds = %145, %131
  %154 = load i32, i32* @jiffies, align 4
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %30
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_eth_txfree(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @sh_eth_soft_swap(i32, i64) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @__flush_purge_region(i32, i64) #1

declare dso_local i32 @cpu_to_edmac(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
