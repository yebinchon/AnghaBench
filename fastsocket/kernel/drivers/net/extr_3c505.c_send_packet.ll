; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, %struct.sk_buff*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64 }

@elp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: transmit blocked\0A\00", align 1
@CMD_TRANSMIT_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: tx: DMA %d in progress\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@MAX_DMA_ADDRESS = common dso_local global i64 0, align 8
@DMAE = common dso_local global i32 0, align 4
@TCEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: DMA transfer started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.TYPE_12__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 60
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 60, %16 ], [ %20, %17 ]
  %23 = add nsw i32 %22, 1
  %24 = and i32 %23, -2
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = bitcast i64* %26 to i8*
  %28 = call i64 @test_and_set_bit(i32 0, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i32, i32* @elp_debug, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  store i32 0, i32* %3, align 4
  br label %194

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @CMD_TRANSMIT_PACKET, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  %72 = call i32 @send_pcb(%struct.net_device* %69, %struct.TYPE_13__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %39
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  store i32 0, i32* %3, align 4
  br label %194

77:                                               ; preds = %39
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  %80 = bitcast i32* %79 to i8*
  %81 = call i64 @test_and_set_bit(i32 0, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %83, %77
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* @jiffies, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %102, %103
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* @MAX_DMA_ADDRESS, align 8
  %107 = icmp uge i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %108, %92
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %115, i32 %118, i32 %119)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %123, %126
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %128, %131
  %133 = call i32 @memset(i32 %127, i32 0, i32 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @isa_virt_to_bus(i32 %136)
  store i64 %137, i64* %7, align 8
  br label %143

138:                                              ; preds = %108
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @isa_virt_to_bus(i32 %141)
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %138, %114
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  store %struct.sk_buff* %144, %struct.sk_buff** %147, align 8
  %148 = call i64 (...) @claim_dma_lock()
  store i64 %148, i64* %8, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @disable_dma(i32 %151)
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @clear_dma_ff(i32 %155)
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @set_dma_mode(i32 %159, i32 72)
  %161 = load %struct.net_device*, %struct.net_device** %4, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @set_dma_addr(i32 %163, i64 %164)
  %166 = load %struct.net_device*, %struct.net_device** %4, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @set_dma_count(i32 %168, i32 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @DMAE, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @TCEN, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = call i32 @outb_control(i32 %177, %struct.net_device* %178)
  %180 = load %struct.net_device*, %struct.net_device** %4, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @enable_dma(i32 %182)
  %184 = load i64, i64* %8, align 8
  %185 = call i32 @release_dma_lock(i64 %184)
  %186 = load i32, i32* @elp_debug, align 4
  %187 = icmp sge i32 %186, 3
  br i1 %187, label %188, label %193

188:                                              ; preds = %143
  %189 = load %struct.net_device*, %struct.net_device** %4, align 8
  %190 = getelementptr inbounds %struct.net_device, %struct.net_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %188, %143
  store i32 1, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %74, %38
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.TYPE_12__* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @send_pcb(%struct.net_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @isa_virt_to_bus(i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @set_dma_addr(i32, i64) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @outb_control(i32, %struct.net_device*) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
