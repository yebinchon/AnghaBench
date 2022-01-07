; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_free_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_free_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.mac_info, %struct.config_param, %struct.net_device* }
%struct.mac_info = type { %struct.fifo_info*, %struct.stat_block* }
%struct.fifo_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.stat_block = type { %struct.swStat }
%struct.swStat = type { i32 }
%struct.config_param = type { i32, %struct.tx_fifo_config* }
%struct.tx_fifo_config = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TxD = type { i32 }

@INTR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: forcibly freeing %d skbs on FIFO%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @free_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tx_buffers(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.TxD*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_param*, align 8
  %10 = alloca %struct.mac_info*, align 8
  %11 = alloca %struct.stat_block*, align 8
  %12 = alloca %struct.swStat*, align 8
  %13 = alloca %struct.tx_fifo_config*, align 8
  %14 = alloca %struct.fifo_info*, align 8
  %15 = alloca i64, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %17 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %16, i32 0, i32 2
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %3, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %20 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %19, i32 0, i32 1
  store %struct.config_param* %20, %struct.config_param** %9, align 8
  %21 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %22 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %21, i32 0, i32 0
  store %struct.mac_info* %22, %struct.mac_info** %10, align 8
  %23 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %24 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %23, i32 0, i32 1
  %25 = load %struct.stat_block*, %struct.stat_block** %24, align 8
  store %struct.stat_block* %25, %struct.stat_block** %11, align 8
  %26 = load %struct.stat_block*, %struct.stat_block** %11, align 8
  %27 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %26, i32 0, i32 0
  store %struct.swStat* %27, %struct.swStat** %12, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %114, %1
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.config_param*, %struct.config_param** %9, align 8
  %31 = getelementptr inbounds %struct.config_param, %struct.config_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %117

34:                                               ; preds = %28
  %35 = load %struct.config_param*, %struct.config_param** %9, align 8
  %36 = getelementptr inbounds %struct.config_param, %struct.config_param* %35, i32 0, i32 1
  %37 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %37, i64 %39
  store %struct.tx_fifo_config* %40, %struct.tx_fifo_config** %13, align 8
  %41 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %42 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %41, i32 0, i32 0
  %43 = load %struct.fifo_info*, %struct.fifo_info** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %43, i64 %45
  store %struct.fifo_info* %46, %struct.fifo_info** %14, align 8
  %47 = load %struct.fifo_info*, %struct.fifo_info** %14, align 8
  %48 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %47, i32 0, i32 0
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %93, %34
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %13, align 8
  %54 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load %struct.fifo_info*, %struct.fifo_info** %14, align 8
  %59 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TxD*
  store %struct.TxD* %66, %struct.TxD** %5, align 8
  %67 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %68 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %67, i32 0, i32 0
  %69 = load %struct.fifo_info*, %struct.fifo_info** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %69, i64 %71
  %73 = load %struct.TxD*, %struct.TxD** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call %struct.sk_buff* @s2io_txdl_getskb(%struct.fifo_info* %72, %struct.TxD* %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %4, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %57
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.swStat*, %struct.swStat** %12, align 8
  %83 = getelementptr inbounds %struct.swStat, %struct.swStat* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @dev_kfree_skb(%struct.sk_buff* %88)
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %78, %57
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %51

96:                                               ; preds = %51
  %97 = load i32, i32* @INTR_DBG, align 4
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @DBG_PRINT(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load %struct.fifo_info*, %struct.fifo_info** %14, align 8
  %105 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.fifo_info*, %struct.fifo_info** %14, align 8
  %108 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.fifo_info*, %struct.fifo_info** %14, align 8
  %111 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %110, i32 0, i32 0
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  br label %114

114:                                              ; preds = %96
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %28

117:                                              ; preds = %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @s2io_txdl_getskb(%struct.fifo_info*, %struct.TxD*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
