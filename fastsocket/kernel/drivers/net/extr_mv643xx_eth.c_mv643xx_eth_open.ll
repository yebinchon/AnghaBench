; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.mv643xx_eth_private = type { i32, i32, i32, i64, i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@INT_CAUSE = common dso_local global i32 0, align 4
@INT_CAUSE_EXT = common dso_local global i32 0, align 4
@mv643xx_eth_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't assign irq\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@INT_EXT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@INT_RX_0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@INT_TX_END_0 = common dso_local global i32 0, align 4
@INT_MASK_EXT = common dso_local global i32 0, align 4
@INT_EXT_LINK_PHY = common dso_local global i32 0, align 4
@INT_EXT_TX = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mv643xx_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %4, align 8
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %10 = load i32, i32* @INT_CAUSE, align 4
  %11 = call i32 @wrlp(%struct.mv643xx_eth_private* %9, i32 %10, i32 0)
  %12 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %13 = load i32, i32* @INT_CAUSE_EXT, align 4
  %14 = call i32 @wrlp(%struct.mv643xx_eth_private* %12, i32 %13, i32 0)
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %16 = load i32, i32* @INT_CAUSE_EXT, align 4
  %17 = call i32 @rdlp(%struct.mv643xx_eth_private* %15, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mv643xx_eth_irq, align 4
  %22 = load i32, i32* @IRQF_SHARED, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @request_irq(i32 %20, i32 %21, i32 %22, i32 %25, %struct.net_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = call i32 @dev_printk(i32 %31, i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %190

37:                                               ; preds = %1
  %38 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %39 = call i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private* %38)
  %40 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %41 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %40, i32 0, i32 8
  %42 = call i32 @napi_enable(i32* %41)
  %43 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %44 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %43, i32 0, i32 7
  %45 = call i32 @skb_queue_head_init(i32* %44)
  %46 = load i32, i32* @INT_EXT, align 4
  %47 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %48 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %91, %37
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %52 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %49
  %56 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rxq_init(%struct.mv643xx_eth_private* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %68 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call i32 @rxq_deinit(i64 %72)
  br label %62

74:                                               ; preds = %62
  br label %183

75:                                               ; preds = %55
  %76 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %77 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i32, i32* @INT_MAX, align 4
  %83 = call i32 @rxq_refill(i64 %81, i32 %82)
  %84 = load i32, i32* @INT_RX_0, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %84, %85
  %87 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %88 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %49

94:                                               ; preds = %49
  %95 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %96 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i32, i32* @HZ, align 4
  %102 = sdiv i32 %101, 10
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %100, %103
  %105 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %106 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %109 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %108, i32 0, i32 5
  %110 = call i32 @add_timer(%struct.TYPE_2__* %109)
  br label %111

111:                                              ; preds = %99, %94
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %146, %111
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %115 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %112
  %119 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @txq_init(%struct.mv643xx_eth_private* %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %6, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %131 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = call i32 @txq_deinit(i64 %135)
  br label %125

137:                                              ; preds = %125
  br label %164

138:                                              ; preds = %118
  %139 = load i32, i32* @INT_TX_END_0, align 4
  %140 = load i32, i32* %6, align 4
  %141 = shl i32 %139, %140
  %142 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %143 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %112

149:                                              ; preds = %112
  %150 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %151 = call i32 @port_start(%struct.mv643xx_eth_private* %150)
  %152 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %153 = load i32, i32* @INT_MASK_EXT, align 4
  %154 = load i32, i32* @INT_EXT_LINK_PHY, align 4
  %155 = load i32, i32* @INT_EXT_TX, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @wrlp(%struct.mv643xx_eth_private* %152, i32 %153, i32 %156)
  %158 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %159 = load i32, i32* @INT_MASK, align 4
  %160 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %161 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @wrlp(%struct.mv643xx_eth_private* %158, i32 %159, i32 %162)
  store i32 0, i32* %2, align 4
  br label %190

164:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %179, %164
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %168 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  %172 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %173 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = call i32 @rxq_deinit(i64 %177)
  br label %179

179:                                              ; preds = %171
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %165

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182, %74
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.net_device*, %struct.net_device** %3, align 8
  %188 = call i32 @free_irq(i32 %186, %struct.net_device* %187)
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %183, %149, %30
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @rxq_init(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @rxq_deinit(i64) #1

declare dso_local i32 @rxq_refill(i64, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @txq_init(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @txq_deinit(i64) #1

declare dso_local i32 @port_start(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
