; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_transmit_to_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_transmit_to_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32, i64, i32, i64, i64, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.veth_port = type { i32 }
%struct.veth_msg = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64*, i32, i32* }

@veth_cnx = common dso_local global %struct.veth_lpar_connection** null, align 8
@VETH_STATE_READY = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@VETH_MAX_MTU = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@VETH_EOF_SHIFT = common dso_local global i32 0, align 4
@VETH_EVENT_FRAMES = common dso_local global i32 0, align 4
@HvLpEvent_Rc_Good = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, %struct.net_device*)* @veth_transmit_to_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_transmit_to_one(%struct.sk_buff* %0, i64 %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.veth_lpar_connection*, align 8
  %9 = alloca %struct.veth_port*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.veth_msg*, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %13 = load %struct.veth_lpar_connection**, %struct.veth_lpar_connection*** @veth_cnx, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %13, i64 %14
  %16 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %15, align 8
  store %struct.veth_lpar_connection* %16, %struct.veth_lpar_connection** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.veth_port* @netdev_priv(%struct.net_device* %17)
  store %struct.veth_port* %18, %struct.veth_port** %9, align 8
  store %struct.veth_msg* null, %struct.veth_msg** %11, align 8
  %19 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %20 = icmp ne %struct.veth_lpar_connection* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %158

22:                                               ; preds = %3
  %23 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %24 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %23, i32 0, i32 2
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %28 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VETH_STATE_READY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %144

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ETH_HLEN, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* @VETH_MAX_MTU, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %153

43:                                               ; preds = %34
  %44 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %45 = call %struct.veth_msg* @veth_stack_pop(%struct.veth_lpar_connection* %44)
  store %struct.veth_msg* %45, %struct.veth_msg** %11, align 8
  %46 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %47 = icmp ne %struct.veth_msg* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %153

49:                                               ; preds = %43
  %50 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %51 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @skb_get(%struct.sk_buff* %52)
  %54 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %55 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.veth_port*, %struct.veth_port** %9, align 8
  %57 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @dma_map_single(i32 %58, i32 %61, i64 %64, i32 %65)
  %67 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %68 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %66, i32* %71, align 4
  %72 = load %struct.veth_port*, %struct.veth_port** %9, align 8
  %73 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %76 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @dma_mapping_error(i32 %74, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %49
  br label %149

84:                                               ; preds = %49
  %85 = load %struct.veth_port*, %struct.veth_port** %9, align 8
  %86 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %89 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %94 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %92, i64* %97, align 8
  %98 = load i32, i32* @VETH_EOF_SHIFT, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %101 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %104 = load i32, i32* @VETH_EVENT_FRAMES, align 4
  %105 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %106 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %109 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %108, i32 0, i32 1
  %110 = call i64 @veth_signaldata(%struct.veth_lpar_connection* %103, i32 %104, i32 %107, %struct.TYPE_2__* %109)
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* @HvLpEvent_Rc_Good, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %84
  br label %149

115:                                              ; preds = %84
  %116 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %117 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 0, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %122 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %121, i32 0, i32 5
  %123 = load i64, i64* @jiffies, align 8
  %124 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %125 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = call i32 @mod_timer(i32* %122, i64 %127)
  br label %129

129:                                              ; preds = %120, %115
  %130 = load i64, i64* @jiffies, align 8
  %131 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %132 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %134 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %138 = call i64 @veth_stack_is_empty(%struct.veth_lpar_connection* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %142 = call i32 @veth_stop_queues(%struct.veth_lpar_connection* %141)
  br label %143

143:                                              ; preds = %140, %129
  br label %144

144:                                              ; preds = %143, %33
  %145 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %146 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %145, i32 0, i32 2
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  store i32 0, i32* %4, align 4
  br label %158

149:                                              ; preds = %114, %83
  %150 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %151 = load %struct.veth_msg*, %struct.veth_msg** %11, align 8
  %152 = call i32 @veth_recycle_msg(%struct.veth_lpar_connection* %150, %struct.veth_msg* %151)
  br label %153

153:                                              ; preds = %149, %48, %42
  %154 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %8, align 8
  %155 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %154, i32 0, i32 2
  %156 = load i64, i64* %12, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %144, %21
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.veth_msg* @veth_stack_pop(%struct.veth_lpar_connection*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i64 @veth_signaldata(%struct.veth_lpar_connection*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @veth_stack_is_empty(%struct.veth_lpar_connection*) #1

declare dso_local i32 @veth_stop_queues(%struct.veth_lpar_connection*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @veth_recycle_msg(%struct.veth_lpar_connection*, %struct.veth_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
