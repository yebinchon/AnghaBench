; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_async_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_async_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i64 }

@CHA = common dso_local global i64 0, align 8
@CHB = common dso_local global i64 0, align 8
@BIT0 = common dso_local global i8 0, align 1
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i8 0, align 1
@MODE = common dso_local global i64 0, align 8
@CCR0 = common dso_local global i64 0, align 8
@CCR1 = common dso_local global i64 0, align 8
@CCR2 = common dso_local global i64 0, align 8
@CCR3 = common dso_local global i64 0, align 8
@CCR4 = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i8 0, align 1
@ASYNC_PARITY_NONE = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i8 0, align 1
@ASYNC_PARITY_ODD = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i8 0, align 1
@BIT4 = common dso_local global i8 0, align 1
@DAFO = common dso_local global i64 0, align 8
@RFC = common dso_local global i64 0, align 8
@RLCR = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@XBCH = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@IRQ_CTS = common dso_local global i64 0, align 8
@PVR = common dso_local global i64 0, align 8
@IRQ_RXEOM = common dso_local global i64 0, align 8
@IRQ_RXFIFO = common dso_local global i64 0, align 8
@IRQ_BREAK_ON = common dso_local global i64 0, align 8
@IRQ_RXTIME = common dso_local global i64 0, align 8
@IRQ_ALLSENT = common dso_local global i64 0, align 8
@IRQ_TXFIFO = common dso_local global i64 0, align 8
@CMD_TXRESET = common dso_local global i64 0, align 8
@CMD_RXRESET = common dso_local global i64 0, align 8
@ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @async_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_mode(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = load i64, i64* @CHA, align 8
  %6 = call i32 @irq_disable(%struct.TYPE_16__* %4, i64 %5, i32 65535)
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = load i64, i64* @CHB, align 8
  %9 = call i32 @irq_disable(%struct.TYPE_16__* %7, i64 %8, i32 65535)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = call i32 @port_irq_disable(%struct.TYPE_16__* %10, i32 255)
  store i8 6, i8* %3, align 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i8, i8* @BIT0, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SerialSignal_RTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i8, i8* @BIT6, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %3, align 1
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = load i64, i64* @CHA, align 8
  %41 = load i64, i64* @MODE, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i8, i8* %3, align 1
  %44 = call i32 @write_reg(%struct.TYPE_16__* %39, i64 %42, i8 zeroext %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = load i64, i64* @CHA, align 8
  %47 = load i64, i64* @CCR0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @write_reg(%struct.TYPE_16__* %45, i64 %48, i8 zeroext -125)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = load i64, i64* @CHA, align 8
  %52 = load i64, i64* @CCR1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @write_reg(%struct.TYPE_16__* %50, i64 %53, i8 zeroext 31)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = load i64, i64* @CHA, align 8
  %57 = load i64, i64* @CCR2, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @write_reg(%struct.TYPE_16__* %55, i64 %58, i8 zeroext 16)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = load i64, i64* @CHA, align 8
  %62 = load i64, i64* @CCR3, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @write_reg(%struct.TYPE_16__* %60, i64 %63, i8 zeroext 0)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = load i64, i64* @CHA, align 8
  %67 = load i64, i64* @CCR4, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @write_reg(%struct.TYPE_16__* %65, i64 %68, i8 zeroext 80)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = load i64, i64* @CHA, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 16
  %77 = call i32 @mgslpc_set_rate(%struct.TYPE_16__* %70, i64 %71, i32 %76)
  store i8 0, i8* %3, align 1
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 8
  br i1 %82, label %83, label %90

83:                                               ; preds = %38
  %84 = load i8, i8* @BIT0, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* %3, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %3, align 1
  br label %90

90:                                               ; preds = %83, %38
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i8, i8* @BIT5, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %3, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %3, align 1
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ASYNC_PARITY_NONE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %103
  %111 = load i8, i8* @BIT2, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* %3, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %3, align 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ASYNC_PARITY_ODD, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %110
  %124 = load i8, i8* @BIT3, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* %3, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %3, align 1
  br label %137

130:                                              ; preds = %110
  %131 = load i8, i8* @BIT4, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* %3, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %134, %132
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %3, align 1
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %103
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = load i64, i64* @CHA, align 8
  %141 = load i64, i64* @DAFO, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i8, i8* %3, align 1
  %144 = call i32 @write_reg(%struct.TYPE_16__* %139, i64 %142, i8 zeroext %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %146 = load i64, i64* @CHA, align 8
  %147 = load i64, i64* @RFC, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @write_reg(%struct.TYPE_16__* %145, i64 %148, i8 zeroext 92)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = load i64, i64* @CHA, align 8
  %152 = load i64, i64* @RLCR, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @write_reg(%struct.TYPE_16__* %150, i64 %153, i8 zeroext 0)
  store i8 0, i8* %3, align 1
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %138
  %163 = load i8, i8* @BIT5, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* %3, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %166, %164
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %3, align 1
  br label %169

169:                                              ; preds = %162, %138
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %171 = load i64, i64* @CHA, align 8
  %172 = load i64, i64* @XBCH, align 8
  %173 = add nsw i64 %171, %172
  %174 = load i8, i8* %3, align 1
  %175 = call i32 @write_reg(%struct.TYPE_16__* %170, i64 %173, i8 zeroext %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %169
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %185 = load i64, i64* @CHA, align 8
  %186 = load i64, i64* @IRQ_CTS, align 8
  %187 = call i32 @irq_enable(%struct.TYPE_16__* %184, i64 %185, i64 %186)
  br label %188

188:                                              ; preds = %183, %169
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %190 = load i64, i64* @CHA, align 8
  %191 = load i64, i64* @MODE, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i8, i8* @BIT3, align 1
  %194 = call i32 @set_reg_bits(%struct.TYPE_16__* %189, i64 %192, i8 zeroext %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = call i32 @enable_auxclk(%struct.TYPE_16__* %195)
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %188
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %206 = load i64, i64* @CHB, align 8
  %207 = load i64, i64* @IRQ_CTS, align 8
  %208 = call i32 @irq_enable(%struct.TYPE_16__* %205, i64 %206, i64 %207)
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %210 = load i64, i64* @CHA, align 8
  %211 = load i64, i64* @PVR, align 8
  %212 = add nsw i64 %210, %211
  %213 = load i8, i8* @BIT3, align 1
  %214 = call i32 @set_reg_bits(%struct.TYPE_16__* %209, i64 %212, i8 zeroext %213)
  br label %222

215:                                              ; preds = %188
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %217 = load i64, i64* @CHA, align 8
  %218 = load i64, i64* @PVR, align 8
  %219 = add nsw i64 %217, %218
  %220 = load i8, i8* @BIT3, align 1
  %221 = call i32 @clear_reg_bits(%struct.TYPE_16__* %216, i64 %219, i8 zeroext %220)
  br label %222

222:                                              ; preds = %215, %204
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %224 = load i64, i64* @CHA, align 8
  %225 = load i64, i64* @IRQ_RXEOM, align 8
  %226 = load i64, i64* @IRQ_RXFIFO, align 8
  %227 = add nsw i64 %225, %226
  %228 = load i64, i64* @IRQ_BREAK_ON, align 8
  %229 = add nsw i64 %227, %228
  %230 = load i64, i64* @IRQ_RXTIME, align 8
  %231 = add nsw i64 %229, %230
  %232 = load i64, i64* @IRQ_ALLSENT, align 8
  %233 = add nsw i64 %231, %232
  %234 = load i64, i64* @IRQ_TXFIFO, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @irq_enable(%struct.TYPE_16__* %223, i64 %224, i64 %235)
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %238 = load i64, i64* @CHA, align 8
  %239 = load i64, i64* @CMD_TXRESET, align 8
  %240 = load i64, i64* @CMD_RXRESET, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @issue_command(%struct.TYPE_16__* %237, i64 %238, i64 %241)
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %244 = load i64, i64* @CHA, align 8
  %245 = call i32 @wait_command_complete(%struct.TYPE_16__* %243, i64 %244)
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %247 = load i64, i64* @CHA, align 8
  %248 = load i64, i64* @ISR, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @read_reg16(%struct.TYPE_16__* %246, i64 %249)
  ret void
}

declare dso_local i32 @irq_disable(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @port_irq_disable(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @write_reg(%struct.TYPE_16__*, i64, i8 zeroext) #1

declare dso_local i32 @mgslpc_set_rate(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @irq_enable(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @set_reg_bits(%struct.TYPE_16__*, i64, i8 zeroext) #1

declare dso_local i32 @enable_auxclk(%struct.TYPE_16__*) #1

declare dso_local i32 @clear_reg_bits(%struct.TYPE_16__*, i64, i8 zeroext) #1

declare dso_local i32 @issue_command(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @wait_command_complete(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @read_reg16(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
