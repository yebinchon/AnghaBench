; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_rx_data_av_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_rx_data_av_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, %struct.sk_buff*, %struct.atm_vcc** }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.atm_vcc* }

@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hrz_data_av_handler\00", align 1
@rx_busy = common dso_local global i32 0, align 4
@DBG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"locked out of rx lock\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"set rx_busy for dev %p\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"rx_queue_entry is: %#x\00", align 1
@RX_CRC_32_OK = common dso_local global i32 0, align 4
@RX_COMPLETE_FRAME = common dso_local global i32 0, align 4
@SIMONS_DODGEY_MARKER = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"zero-length frame!\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Simon's marker detected!\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"got a frame on rx_channel %x len %u\00", align 1
@ATM_NONE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"RX start simple transfer (addr %p, len %d)\00", align 1
@DBG_SKB = common dso_local global i32 0, align 4
@DBG_WARN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"failed to get skb\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"frame received on TX-only VC %x\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"dropped over-size frame\00", align 1
@DBG_VCC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"no VCC for this frame (VC closed)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @rx_data_av_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_data_av_handler(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load i32, i32* @DBG_FLOW, align 4
  %10 = call i32 (i32, i8*, ...) @PRINTD(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @rx_busy, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @DBG_RX, align 4
  %18 = call i32 (i32, i8*, ...) @PRINTD(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %172

19:                                               ; preds = %1
  %20 = load i32, i32* @DBG_RX, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = call i32 (i32, i8*, ...) @PRINTD(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call i32 @YELLOW_LED_OFF(%struct.TYPE_16__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = call i32 @rx_queue_entry_next(%struct.TYPE_16__* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @rx_q_entry_to_length(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @rx_q_entry_to_rx_channel(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = call i32 @WAIT_FLUSH_RX_COMPLETE(%struct.TYPE_16__* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @SELECT_RX_CHANNEL(%struct.TYPE_16__* %33, i64 %34)
  %36 = load i32, i32* @DBG_RX, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @PRINTD(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @RX_CRC_32_OK, align 4
  %41 = load i32, i32* @RX_COMPLETE_FRAME, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SIMONS_DODGEY_MARKER, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %19
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = call i32 (i32, i8*, ...) @PRINTK(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @RX_COMPLETE_FRAME, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %19
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SIMONS_DODGEY_MARKER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @DBG_RX, align 4
  %62 = load i32, i32* @DBG_ERR, align 4
  %63 = or i32 %61, %62
  %64 = call i32 (i32, i8*, ...) @PRINTD(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @RX_CRC_32_OK, align 4
  %68 = load i32, i32* @RX_COMPLETE_FRAME, align 4
  %69 = or i32 %67, %68
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %161

71:                                               ; preds = %65
  %72 = load i32, i32* @DBG_RX, align 4
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 (i32, i8*, ...) @PRINTD(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %73, i64 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  %78 = load %struct.atm_vcc**, %struct.atm_vcc*** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %78, i64 %79
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %80, align 8
  store %struct.atm_vcc* %81, %struct.atm_vcc** %7, align 8
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %83 = icmp ne %struct.atm_vcc* %82, null
  br i1 %83, label %84, label %153

84:                                               ; preds = %71
  %85 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %86 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ATM_NONE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %149

92:                                               ; preds = %84
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %95 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ule i64 %93, %98
  br i1 %99, label %100, label %144

100:                                              ; preds = %92
  %101 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* @GFP_ATOMIC, align 4
  %104 = call %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc* %101, i64 %102, i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %8, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %138

107:                                              ; preds = %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 4
  store %struct.sk_buff* %108, %struct.sk_buff** %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @skb_put(%struct.sk_buff* %115, i64 %116)
  %118 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = call %struct.TYPE_13__* @ATM_SKB(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store %struct.atm_vcc* %118, %struct.atm_vcc** %121, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @DBG_RX, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %5, align 8
  %135 = call i32 (i32, i8*, ...) @PRINTD(i32 %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %133, i64 %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %137 = call i32 @rx_schedule(%struct.TYPE_16__* %136, i32 0)
  br label %172

138:                                              ; preds = %100
  %139 = load i32, i32* @DBG_SKB, align 4
  %140 = load i32, i32* @DBG_WARN, align 4
  %141 = or i32 %139, %140
  %142 = call i32 (i32, i8*, ...) @PRINTD(i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138
  br label %148

144:                                              ; preds = %92
  %145 = load i32, i32* @KERN_INFO, align 4
  %146 = load i64, i64* %6, align 8
  %147 = call i32 (i32, i8*, ...) @PRINTK(i32 %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %146)
  br label %148

148:                                              ; preds = %144, %143
  br label %152

149:                                              ; preds = %84
  %150 = load i32, i32* @KERN_WARNING, align 4
  %151 = call i32 (i32, i8*, ...) @PRINTK(i32 %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %148
  br label %160

153:                                              ; preds = %71
  %154 = load i32, i32* @DBG_WARN, align 4
  %155 = load i32, i32* @DBG_VCC, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @DBG_RX, align 4
  %158 = or i32 %156, %157
  %159 = call i32 (i32, i8*, ...) @PRINTD(i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %160

160:                                              ; preds = %153, %152
  br label %162

161:                                              ; preds = %65
  br label %162

162:                                              ; preds = %161, %160
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %164 = call i32 @YELLOW_LED_ON(%struct.TYPE_16__* %163)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @FLUSH_RX_CHANNEL(%struct.TYPE_16__* %165, i64 %166)
  %168 = load i32, i32* @rx_busy, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = call i32 @clear_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %162, %107, %16
  ret void
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @YELLOW_LED_OFF(%struct.TYPE_16__*) #1

declare dso_local i32 @rx_queue_entry_next(%struct.TYPE_16__*) #1

declare dso_local i64 @rx_q_entry_to_length(i32) #1

declare dso_local i64 @rx_q_entry_to_rx_channel(i32) #1

declare dso_local i32 @WAIT_FLUSH_RX_COMPLETE(%struct.TYPE_16__*) #1

declare dso_local i32 @SELECT_RX_CHANNEL(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @PRINTK(i32, i8*, ...) #1

declare dso_local %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc*, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_13__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @rx_schedule(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @YELLOW_LED_ON(%struct.TYPE_16__*) #1

declare dso_local i32 @FLUSH_RX_CHANNEL(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
