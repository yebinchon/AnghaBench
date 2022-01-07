; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.smc_regs*, %struct.scc_regs* }
%struct.smc_regs = type { i32, i32 }
%struct.scc_regs = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.tty_struct = type { i32, i32, i32, i64 }
%struct.file = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i64, i64, %struct.TYPE_10__, i64, i32, %struct.serial_state*, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.serial_state = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_close\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"before DEC-hung\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"rs_close: bad serial port count; tty->count is 1, state->count is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"rs_close: bad serial port count for ttys%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"before DEC-2\00", align 1
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_CLOSING_WAIT_NONE = common dso_local global i64 0, align 8
@BD_SC_EMPTY = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@NUM_IS_SCC = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_12__* null, align 8
@UART_SCCM_RX = common dso_local global i32 0, align 4
@SCC_GSMRL_ENR = common dso_local global i32 0, align 4
@SMCM_RX = common dso_local global i32 0, align 4
@SMCMR_REN = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @rs_360_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_360_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.serial_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smc_regs*, align 8
  %10 = alloca %struct.scc_regs*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @serial_paranoia_check(%struct.TYPE_11__* %18, i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %2
  br label %220

25:                                               ; preds = %17
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 9
  %28 = load %struct.serial_state*, %struct.serial_state** %27, align 8
  store %struct.serial_state* %28, %struct.serial_state** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call i64 @tty_hung_up_p(%struct.file* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = call i32 @DBG_CNT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  br label %220

38:                                               ; preds = %25
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %45 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %50 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %54 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %43, %38
  %56 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %57 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %66 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %70 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %55
  %72 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %73 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = call i32 @DBG_CNT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @local_irq_restore(i64 %78)
  br label %220

80:                                               ; preds = %71
  %81 = load i32, i32* @ASYNC_CLOSING, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ASYNC_CLOSING_WAIT_NONE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @tty_wait_until_sent(%struct.tty_struct* %94, i64 %97)
  br label %99

99:                                               ; preds = %93, %80
  %100 = load i32, i32* @BD_SC_EMPTY, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %173

112:                                              ; preds = %99
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 9
  %115 = load %struct.serial_state*, %struct.serial_state** %114, align 8
  %116 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PORT_NUM(i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 9
  %121 = load %struct.serial_state*, %struct.serial_state** %120, align 8
  %122 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NUM_IS_SCC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %112
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pquicc, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load %struct.scc_regs*, %struct.scc_regs** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %130, i64 %132
  store %struct.scc_regs* %133, %struct.scc_regs** %10, align 8
  %134 = load i32, i32* @UART_SCCM_RX, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.scc_regs*, %struct.scc_regs** %10, align 8
  %137 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %136, i32 0, i32 1
  %138 = load volatile i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store volatile i32 %139, i32* %137, align 4
  %140 = load i32, i32* @SCC_GSMRL_ENR, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.scc_regs*, %struct.scc_regs** %10, align 8
  %143 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load volatile i32, i32* %145, align 4
  %147 = and i32 %146, %141
  store volatile i32 %147, i32* %145, align 4
  br label %167

148:                                              ; preds = %112
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pquicc, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.smc_regs*, %struct.smc_regs** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %151, i64 %153
  store %struct.smc_regs* %154, %struct.smc_regs** %9, align 8
  %155 = load i32, i32* @SMCM_RX, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.smc_regs*, %struct.smc_regs** %9, align 8
  %158 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %157, i32 0, i32 1
  %159 = load volatile i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store volatile i32 %160, i32* %158, align 4
  %161 = load i32, i32* @SMCMR_REN, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.smc_regs*, %struct.smc_regs** %9, align 8
  %164 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %163, i32 0, i32 0
  %165 = load volatile i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store volatile i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %148, %127
  %168 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @rs_360_wait_until_sent(%struct.tty_struct* %168, i32 %171)
  br label %173

173:                                              ; preds = %167, %99
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %175 = call i32 @shutdown(%struct.TYPE_11__* %174)
  %176 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %177 = call i32 @rs_360_flush_buffer(%struct.tty_struct* %176)
  %178 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %179 = call i32 @tty_ldisc_flush(%struct.tty_struct* %178)
  %180 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %181 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 7
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32* null, i32** %186, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %173
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @jiffies_to_msecs(i64 %199)
  %201 = call i32 @msleep_interruptible(i32 %200)
  br label %202

202:                                              ; preds = %196, %191
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = call i32 @wake_up_interruptible(i32* %204)
  br label %206

206:                                              ; preds = %202, %173
  %207 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %208 = load i32, i32* @ASYNC_CLOSING, align 4
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = call i32 @wake_up_interruptible(i32* %216)
  %218 = load i64, i64* %7, align 8
  %219 = call i32 @local_irq_restore(i64 %218)
  br label %220

220:                                              ; preds = %206, %76, %34, %24
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @DBG_CNT(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i64) #1

declare dso_local i32 @PORT_NUM(i32) #1

declare dso_local i32 @rs_360_wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @shutdown(%struct.TYPE_11__*) #1

declare dso_local i32 @rs_360_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
