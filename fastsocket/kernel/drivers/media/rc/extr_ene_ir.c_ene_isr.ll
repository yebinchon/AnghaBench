; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ene_device = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"ISR called\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ENE_IRQ_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"TX interrupt\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"TX interrupt on unsupported device!\00", align 1
@ENE_IRQ_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"RX interrupt\00", align 1
@ENE_FW_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"next sample to read at: %04x\00", align 1
@ENE_FW_SMPL_BUF_FAN = common dso_local global i32 0, align 4
@ENE_FW_SAMPLE_BUFFER = common dso_local global i32 0, align 4
@ENE_FW_SMPL_BUF_FAN_PLS = common dso_local global i32 0, align 4
@ENE_FW_SMPL_BUF_FAN_MSK = common dso_local global i32 0, align 4
@ENE_FW_SAMPLE_PERIOD_FAN = common dso_local global i32 0, align 4
@ENE_FW_SAMPLE_SPACE = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"RX: %d (%s)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ene_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ene_device*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.ene_device*
  store %struct.ene_device* %16, %struct.ene_device** %12, align 8
  %17 = load i64, i64* bitcast (%struct.TYPE_4__* @ev to i64*), align 4
  %18 = call i32 @DEFINE_IR_RAW_EVENT(i64 %17)
  %19 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %20 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %19, i32 0, i32 1
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %25 = call i32 @ene_rx_read_hw_pointer(%struct.ene_device* %24)
  %26 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %27 = call i32 @ene_irq_status(%struct.ene_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %179

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENE_IRQ_TX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %40 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %179

45:                                               ; preds = %37
  %46 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %47 = call i32 @ene_tx_sample(%struct.ene_device* %46)
  br label %48

48:                                               ; preds = %45, %31
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ENE_IRQ_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %179

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %57 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %62 = call i32 @ene_rx_sense_carrier(%struct.ene_device* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %65 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %70 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ENE_FW_PACKET_SIZE, align 4
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %79 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %63
  br label %81

81:                                               ; preds = %80, %154, %160
  %82 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %83 = call i32 @ene_rx_get_sample_reg(%struct.ene_device* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %174

89:                                               ; preds = %81
  %90 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ene_read_reg(%struct.ene_device* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %94 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %89
  %98 = load i32, i32* @ENE_FW_SMPL_BUF_FAN, align 4
  %99 = load i32, i32* @ENE_FW_SAMPLE_BUFFER, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %13, align 4
  %101 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @ene_read_reg(%struct.ene_device* %101, i32 %104)
  %106 = shl i32 %105, 8
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @ENE_FW_SMPL_BUF_FAN_PLS, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* @ENE_FW_SMPL_BUF_FAN_MSK, align 4
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @ENE_FW_SAMPLE_PERIOD_FAN, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* %7, align 4
  br label %146

118:                                              ; preds = %89
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @ENE_FW_SAMPLE_SPACE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @ENE_FW_SAMPLE_SPACE, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @sample_period, align 4
  %131 = mul nsw i32 %129, %130
  store i32 %131, i32* %7, align 4
  %132 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %133 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %118
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 %137, 100
  store i32 %138, i32* %7, align 4
  %139 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %140 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 100, %141
  %143 = load i32, i32* %7, align 4
  %144 = sdiv i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %136, %118
  br label %146

146:                                              ; preds = %145, %97
  %147 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %148 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %156 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %159 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  br label %81

160:                                              ; preds = %151, %146
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %166 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %161, i8* %165)
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @US_TO_NS(i32 %167)
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ev, i32 0, i32 1), align 4
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ev, i32 0, i32 0), align 4
  %170 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %171 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ir_raw_event_store_with_filter(i32 %172, %struct.TYPE_4__* @ev)
  br label %81

174:                                              ; preds = %88
  %175 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %176 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ir_raw_event_handle(i32 %177)
  br label %179

179:                                              ; preds = %174, %53, %43, %30
  %180 = load %struct.ene_device*, %struct.ene_device** %12, align 8
  %181 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %180, i32 0, i32 1
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  %184 = load i32, i32* %11, align 4
  ret i32 %184
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dbg_verbose(i8*, ...) #1

declare dso_local i32 @ene_rx_read_hw_pointer(%struct.ene_device*) #1

declare dso_local i32 @ene_irq_status(%struct.ene_device*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @ene_tx_sample(%struct.ene_device*) #1

declare dso_local i32 @ene_rx_sense_carrier(%struct.ene_device*) #1

declare dso_local i32 @ene_rx_get_sample_reg(%struct.ene_device*) #1

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
