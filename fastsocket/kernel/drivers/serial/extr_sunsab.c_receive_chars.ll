; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.uart_sunsab_port = type { %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.tty_struct* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%union.sab82532_irq_status = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@SAB82532_ISR0_RPF = common dso_local global i32 0, align 4
@SAB82532_RECV_FIFO_SIZE = common dso_local global i32 0, align 4
@SAB82532_ISR0_TCD = common dso_local global i32 0, align 4
@SAB82532_ISR0_TIME = common dso_local global i32 0, align 4
@SAB82532_CMDR_RFRD = common dso_local global i32 0, align 4
@SAB82532_ISR0_RFO = common dso_local global i32 0, align 4
@SAB82532_CMDR_RMC = common dso_local global i32 0, align 4
@SAB82532_ISR1_BRK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@SAB82532_ISR0_PERR = common dso_local global i32 0, align 4
@SAB82532_ISR0_FERR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.uart_sunsab_port*, %union.sab82532_irq_status*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @receive_chars(%struct.uart_sunsab_port* %0, %union.sab82532_irq_status* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.uart_sunsab_port*, align 8
  %5 = alloca %union.sab82532_irq_status*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %4, align 8
  store %union.sab82532_irq_status* %1, %union.sab82532_irq_status** %5, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.tty_struct*, %struct.tty_struct** %25, align 8
  store %struct.tty_struct* %26, %struct.tty_struct** %6, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %29 = bitcast %union.sab82532_irq_status* %28 to %struct.TYPE_18__*
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SAB82532_ISR0_RPF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @SAB82532_RECV_FIFO_SIZE, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %41 = bitcast %union.sab82532_irq_status* %40 to %struct.TYPE_18__*
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SAB82532_ISR0_TCD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = call i32 @readb(i32* %52)
  %54 = load i32, i32* @SAB82532_RECV_FIFO_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %47, %39
  %60 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %61 = bitcast %union.sab82532_irq_status* %60 to %struct.TYPE_18__*
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SAB82532_ISR0_TIME, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %69 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %68)
  %70 = load i32, i32* @SAB82532_CMDR_RFRD, align 4
  %71 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %72 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = call i32 @writeb(i32 %70, i32* %75)
  %77 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  store %struct.tty_struct* %77, %struct.tty_struct** %3, align 8
  br label %383

78:                                               ; preds = %59
  %79 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %80 = bitcast %union.sab82532_irq_status* %79 to %struct.TYPE_18__*
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %78
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %96 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @readb(i32* %103)
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %107
  store i8 %105, i8* %108, align 1
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %90

112:                                              ; preds = %90
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %117 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %116)
  %118 = load i32, i32* @SAB82532_CMDR_RMC, align 4
  %119 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = call i32 @writeb(i32 %118, i32* %123)
  br label %125

125:                                              ; preds = %115, %112
  %126 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %127 = bitcast %union.sab82532_irq_status* %126 to %struct.TYPE_18__*
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %125
  %134 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %135 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %139 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %137, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 1, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %133, %125
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %373, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %376

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %12, align 1
  %156 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %157 = icmp eq %struct.tty_struct* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %160 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %159, i32 0, i32 0
  %161 = load i8, i8* %12, align 1
  %162 = call i64 @uart_handle_sysrq_char(%struct.TYPE_19__* %160, i8 zeroext %161)
  br label %373

163:                                              ; preds = %151
  %164 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %164, i8* %13, align 1
  %165 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %166 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %172 = bitcast %union.sab82532_irq_status* %171 to %struct.TYPE_18__*
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %176 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %174, %179
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %163
  %184 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %185 = bitcast %union.sab82532_irq_status* %184 to %struct.TYPE_18__*
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %189 = and i32 %187, %188
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %323

192:                                              ; preds = %183, %163
  %193 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %194 = bitcast %union.sab82532_irq_status* %193 to %struct.TYPE_18__*
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %192
  %201 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %202 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %206 = bitcast %union.sab82532_irq_status* %205 to %struct.TYPE_18__*
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %204
  store i32 %209, i32* %207, align 4
  %210 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %211 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  %216 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %217 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %216, i32 0, i32 0
  %218 = call i64 @uart_handle_break(%struct.TYPE_19__* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %200
  br label %373

221:                                              ; preds = %200
  br label %254

222:                                              ; preds = %192
  %223 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %224 = bitcast %union.sab82532_irq_status* %223 to %struct.TYPE_18__*
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %232 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 8
  br label %253

237:                                              ; preds = %222
  %238 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %239 = bitcast %union.sab82532_irq_status* %238 to %struct.TYPE_18__*
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %237
  %246 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %247 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %245, %237
  br label %253

253:                                              ; preds = %252, %230
  br label %254

254:                                              ; preds = %253, %221
  %255 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %256 = bitcast %union.sab82532_irq_status* %255 to %struct.TYPE_18__*
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %254
  %263 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %264 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %262, %254
  %270 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %271 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, 255
  %275 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %276 = bitcast %union.sab82532_irq_status* %275 to %struct.TYPE_18__*
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, %274
  store i32 %279, i32* %277, align 4
  %280 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %281 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = ashr i32 %283, 8
  %285 = and i32 %284, 255
  %286 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %287 = bitcast %union.sab82532_irq_status* %286 to %struct.TYPE_18__*
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, %285
  store i32 %290, i32* %288, align 4
  %291 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %292 = bitcast %union.sab82532_irq_status* %291 to %struct.TYPE_18__*
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @SAB82532_ISR1_BRK, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %269
  %299 = load i8, i8* @TTY_BREAK, align 1
  store i8 %299, i8* %13, align 1
  br label %322

300:                                              ; preds = %269
  %301 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %302 = bitcast %union.sab82532_irq_status* %301 to %struct.TYPE_18__*
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @SAB82532_ISR0_PERR, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %300
  %309 = load i8, i8* @TTY_PARITY, align 1
  store i8 %309, i8* %13, align 1
  br label %321

310:                                              ; preds = %300
  %311 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %312 = bitcast %union.sab82532_irq_status* %311 to %struct.TYPE_18__*
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @SAB82532_ISR0_FERR, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i8, i8* @TTY_FRAME, align 1
  store i8 %319, i8* %13, align 1
  br label %320

320:                                              ; preds = %318, %310
  br label %321

321:                                              ; preds = %320, %308
  br label %322

322:                                              ; preds = %321, %298
  br label %323

323:                                              ; preds = %322, %183
  %324 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %325 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %324, i32 0, i32 0
  %326 = load i8, i8* %12, align 1
  %327 = call i64 @uart_handle_sysrq_char(%struct.TYPE_19__* %325, i8 zeroext %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  br label %373

330:                                              ; preds = %323
  %331 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %332 = bitcast %union.sab82532_irq_status* %331 to %struct.TYPE_18__*
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %336 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %338, 255
  %340 = and i32 %334, %339
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %360

342:                                              ; preds = %330
  %343 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %344 = bitcast %union.sab82532_irq_status* %343 to %struct.TYPE_18__*
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %348 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = ashr i32 %350, 8
  %352 = and i32 %351, 255
  %353 = and i32 %346, %352
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %342
  %356 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %357 = load i8, i8* %12, align 1
  %358 = load i8, i8* %13, align 1
  %359 = call i32 @tty_insert_flip_char(%struct.tty_struct* %356, i8 zeroext %357, i8 zeroext %358)
  br label %360

360:                                              ; preds = %355, %342, %330
  %361 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %5, align 8
  %362 = bitcast %union.sab82532_irq_status* %361 to %struct.TYPE_18__*
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @SAB82532_ISR0_RFO, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %360
  %369 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %370 = load i8, i8* @TTY_OVERRUN, align 1
  %371 = call i32 @tty_insert_flip_char(%struct.tty_struct* %369, i8 zeroext 0, i8 zeroext %370)
  br label %372

372:                                              ; preds = %368, %360
  br label %373

373:                                              ; preds = %372, %329, %220, %158
  %374 = load i32, i32* %11, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %11, align 4
  br label %147

376:                                              ; preds = %147
  %377 = load i32, i32* %8, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = call i32 (...) @sun_do_break()
  br label %381

381:                                              ; preds = %379, %376
  %382 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  store %struct.tty_struct* %382, %struct.tty_struct** %3, align 8
  br label %383

383:                                              ; preds = %381, %67
  %384 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  ret %struct.tty_struct* %384
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @sunsab_cec_wait(%struct.uart_sunsab_port*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_19__*, i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_19__*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sun_do_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
