; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.wbcir_data = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@WBCIR_BANK_0 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_EIR = common dso_local global i64 0, align 8
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RXDATA = common dso_local global i64 0, align 8
@WBCIR_RX_DISABLE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_LSR = common dso_local global i64 0, align 8
@WBCIR_RX_AVAIL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wbcir_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca %struct.wbcir_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.pnp_dev*
  store %struct.pnp_dev* %16, %struct.pnp_dev** %6, align 8
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %18 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %17)
  store %struct.wbcir_data* %18, %struct.wbcir_data** %7, align 8
  store i32 1, i32* %10, align 4
  %19 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %20 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %19, i32 0, i32 2
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %24 = load i32, i32* @WBCIR_BANK_0, align 4
  %25 = call i32 @wbcir_select_bank(%struct.wbcir_data* %23, i32 %24)
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %27 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WBCIR_REG_SP3_EIR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inb(i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %34 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %2
  %39 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %40 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %39, i32 0, i32 2
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %232

44:                                               ; preds = %2
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %51 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %53 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ir_raw_event_reset(i32 %54)
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %226

62:                                               ; preds = %56
  %63 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %64 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %69 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %71 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LED_FULL, align 4
  %74 = call i32 @led_trigger_event(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %77 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WBCIR_REG_SP3_RXDATA, align 8
  %80 = add nsw i64 %78, %79
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %82 = call i32 @insb(i64 %80, i32* %81, i32 8)
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %155, %75
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %158

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 255
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %92, %86
  %100 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %101 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %155

105:                                              ; preds = %99
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 128
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 0, i32 1
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 127
  %119 = mul nsw i32 %118, 10000
  store i32 %119, i32* %14, align 4
  %120 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %121 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %105
  %127 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %128 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %134 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %137 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %136, i32 0, i32 6
  %138 = call i32 @ir_raw_event_store(i32 %135, %struct.TYPE_2__* %137)
  %139 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %140 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %132, %126
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %145 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %142, %105
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %151 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %149
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %147, %104
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %83

158:                                              ; preds = %83
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %221

161:                                              ; preds = %158
  %162 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %163 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %161
  %168 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %169 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %167
  %173 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %174 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %177 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %176, i32 0, i32 6
  %178 = call i32 @ir_raw_event_store(i32 %175, %struct.TYPE_2__* %177)
  %179 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %180 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %172, %167, %161
  %183 = load i32, i32* @WBCIR_RX_DISABLE, align 4
  %184 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %185 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outb(i32 %183, i64 %188)
  br label %190

190:                                              ; preds = %200, %182
  %191 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %192 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @WBCIR_REG_SP3_LSR, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @inb(i64 %195)
  %197 = load i32, i32* @WBCIR_RX_AVAIL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %190
  %201 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %202 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @WBCIR_REG_SP3_RXDATA, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @inb(i64 %205)
  br label %190

207:                                              ; preds = %190
  %208 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %209 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ir_raw_event_reset(i32 %210)
  %212 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %213 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %215 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %214, i32 0, i32 1
  store i32 0, i32* %215, align 4
  %216 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %217 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @LED_OFF, align 4
  %220 = call i32 @led_trigger_event(i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %207, %158
  %222 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %223 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ir_raw_event_handle(i32 %224)
  br label %226

226:                                              ; preds = %221, %61
  %227 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %228 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %227, i32 0, i32 2
  %229 = load i64, i64* %8, align 8
  %230 = call i32 @spin_unlock_irqrestore(i32* %228, i64 %229)
  %231 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %226, %38
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @insb(i64, i32*, i32) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
