; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@CFG_LATE_CACHE = common dso_local global i32 0, align 4
@IRQ_CONTROL = common dso_local global i32 0, align 4
@IRQ_CONTROL_ALL_IRQ_MASK = common dso_local global i32 0, align 4
@TRANSFER_CONTROL = common dso_local global i32 0, align 4
@BM_CNT = common dso_local global i32 0, align 4
@SCSI_EXECUTE_PHASE = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@NSP32_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"irq_stat 0x%x\00", align 1
@IRQSTATUS_ANY_IRQ = common dso_local global i16 0, align 2
@NSP32_TRANSFER_PIO = common dso_local global i32 0, align 4
@NSP32_TRANSFER_MMIO = common dso_local global i32 0, align 4
@FIFO_FULL_SHLD_COUNT = common dso_local global i32 0, align 4
@FIFO_EMPTY_SHLD_COUNT = common dso_local global i32 0, align 4
@NSP32_TRANSFER_BUSMASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown transfer mode\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"full 0x%x emp 0x%x\00", align 1
@CLOCK_DIV = common dso_local global i32 0, align 4
@BM_CYCLE = common dso_local global i32 0, align 4
@MEMRD_CMD1 = common dso_local global i32 0, align 4
@SGT_AUTO_PARA_MEMED_CMD = common dso_local global i32 0, align 4
@PARITY_CONTROL = common dso_local global i32 0, align 4
@MISC_WR = common dso_local global i32 0, align 4
@SCSI_DIRECTION_DETECTOR_SELECT = common dso_local global i64 0, align 8
@DELAYED_BMSTART = common dso_local global i64 0, align 8
@MASTER_TERMINATION_SELECT = common dso_local global i64 0, align 8
@BMREQ_NEGATE_TIMING_SEL = common dso_local global i64 0, align 8
@AUTOSEL_TIMING_SEL = common dso_local global i64 0, align 8
@BMSTOP_CHANGE2_NONDATA_PHASE = common dso_local global i64 0, align 8
@TERM_PWR_CONTROL = common dso_local global i32 0, align 4
@SENSE = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"term power on\00", align 1
@BPWR = common dso_local global i32 0, align 4
@TIMER_SET = common dso_local global i32 0, align 4
@TIMER_STOP = common dso_local global i32 0, align 4
@SYNC_REG = common dso_local global i32 0, align 4
@ACK_WIDTH = common dso_local global i32 0, align 4
@SEL_TIME_OUT = common dso_local global i32 0, align 4
@SEL_TIMEOUT_TIME = common dso_local global i32 0, align 4
@IRQ_SELECT = common dso_local global i32 0, align 4
@IRQSELECT_TIMER_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_SCSIRESET_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_FIFO_SHLD_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_RESELECT_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_PHASE_CHANGE_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_AUTO_SCSI_SEQ_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_TARGET_ABORT_IRQ = common dso_local global i64 0, align 8
@IRQSELECT_MASTER_ABORT_IRQ = common dso_local global i64 0, align 8
@EXT_PORT_DDR = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@EXT_PORT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @nsp32hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32hw_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CFG_LATE_CACHE, align 4
  %12 = call i64 @nsp32_index_read4(i32 %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, 65280
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = or i64 %17, 8192
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CFG_LATE_CACHE, align 4
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, 65535
  %23 = call i32 @nsp32_index_write2(i32 %19, i32 %20, i64 %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @IRQ_CONTROL, align 4
  %27 = load i32, i32* @IRQ_CONTROL_ALL_IRQ_MASK, align 4
  %28 = call i32 @nsp32_write2(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @TRANSFER_CONTROL, align 4
  %31 = call i32 @nsp32_write2(i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BM_CNT, align 4
  %34 = call i32 @nsp32_write4(i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SCSI_EXECUTE_PHASE, align 4
  %37 = call i32 @nsp32_write2(i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %46, %24
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @IRQ_STATUS, align 4
  %41 = call zeroext i16 @nsp32_read2(i32 %39, i32 %40)
  store i16 %41, i16* %4, align 2
  %42 = load i32, i32* @NSP32_DEBUG_INIT, align 4
  %43 = load i16, i16* %4, align 2
  %44 = zext i16 %43 to i32
  %45 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @IRQSTATUS_ANY_IRQ, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %38, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NSP32_TRANSFER_PIO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NSP32_TRANSFER_MMIO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60, %53
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @FIFO_FULL_SHLD_COUNT, align 4
  %70 = call i32 @nsp32_index_write1(i32 %68, i32 %69, i32 64)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @FIFO_EMPTY_SHLD_COUNT, align 4
  %73 = call i32 @nsp32_index_write1(i32 %71, i32 %72, i32 64)
  br label %92

74:                                               ; preds = %60
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NSP32_TRANSFER_BUSMASTER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @FIFO_FULL_SHLD_COUNT, align 4
  %84 = call i32 @nsp32_index_write1(i32 %82, i32 %83, i32 16)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @FIFO_EMPTY_SHLD_COUNT, align 4
  %87 = call i32 @nsp32_index_write1(i32 %85, i32 %86, i32 96)
  br label %91

88:                                               ; preds = %74
  %89 = load i32, i32* @NSP32_DEBUG_INIT, align 4
  %90 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %67
  %93 = load i32, i32* @NSP32_DEBUG_INIT, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @FIFO_FULL_SHLD_COUNT, align 4
  %96 = call zeroext i8 @nsp32_index_read1(i32 %94, i32 %95)
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @FIFO_EMPTY_SHLD_COUNT, align 4
  %100 = call zeroext i8 @nsp32_index_read1(i32 %98, i32 %99)
  %101 = zext i8 %100 to i32
  %102 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @CLOCK_DIV, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @nsp32_index_write1(i32 %103, i32 %104, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @BM_CYCLE, align 4
  %111 = load i32, i32* @MEMRD_CMD1, align 4
  %112 = load i32, i32* @SGT_AUTO_PARA_MEMED_CMD, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @nsp32_index_write1(i32 %109, i32 %110, i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @PARITY_CONTROL, align 4
  %117 = call i32 @nsp32_write1(i32 %115, i32 %116, i32 0)
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @MISC_WR, align 4
  %120 = load i64, i64* @SCSI_DIRECTION_DETECTOR_SELECT, align 8
  %121 = load i64, i64* @DELAYED_BMSTART, align 8
  %122 = or i64 %120, %121
  %123 = load i64, i64* @MASTER_TERMINATION_SELECT, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* @BMREQ_NEGATE_TIMING_SEL, align 8
  %126 = or i64 %124, %125
  %127 = load i64, i64* @AUTOSEL_TIMING_SEL, align 8
  %128 = or i64 %126, %127
  %129 = load i64, i64* @BMSTOP_CHANGE2_NONDATA_PHASE, align 8
  %130 = or i64 %128, %129
  %131 = call i32 @nsp32_index_write2(i32 %118, i32 %119, i64 %130)
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @TERM_PWR_CONTROL, align 4
  %134 = call i32 @nsp32_index_write1(i32 %132, i32 %133, i32 0)
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @TERM_PWR_CONTROL, align 4
  %137 = call zeroext i8 @nsp32_index_read1(i32 %135, i32 %136)
  store i8 %137, i8* %6, align 1
  %138 = load i8, i8* %6, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @SENSE, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %92
  %145 = load i32, i32* @KERN_INFO, align 4
  %146 = call i32 @nsp32_msg(i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @TERM_PWR_CONTROL, align 4
  %149 = load i32, i32* @BPWR, align 4
  %150 = call i32 @nsp32_index_write1(i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %144, %92
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @TIMER_SET, align 4
  %154 = load i32, i32* @TIMER_STOP, align 4
  %155 = call i32 @nsp32_write2(i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @TIMER_SET, align 4
  %158 = load i32, i32* @TIMER_STOP, align 4
  %159 = call i32 @nsp32_write2(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @SYNC_REG, align 4
  %162 = call i32 @nsp32_write1(i32 %160, i32 %161, i32 0)
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @ACK_WIDTH, align 4
  %165 = call i32 @nsp32_write1(i32 %163, i32 %164, i32 0)
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @SEL_TIME_OUT, align 4
  %168 = load i32, i32* @SEL_TIMEOUT_TIME, align 4
  %169 = call i32 @nsp32_write2(i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @IRQ_SELECT, align 4
  %172 = load i64, i64* @IRQSELECT_TIMER_IRQ, align 8
  %173 = load i64, i64* @IRQSELECT_SCSIRESET_IRQ, align 8
  %174 = or i64 %172, %173
  %175 = load i64, i64* @IRQSELECT_FIFO_SHLD_IRQ, align 8
  %176 = or i64 %174, %175
  %177 = load i64, i64* @IRQSELECT_RESELECT_IRQ, align 8
  %178 = or i64 %176, %177
  %179 = load i64, i64* @IRQSELECT_PHASE_CHANGE_IRQ, align 8
  %180 = or i64 %178, %179
  %181 = load i64, i64* @IRQSELECT_AUTO_SCSI_SEQ_IRQ, align 8
  %182 = or i64 %180, %181
  %183 = load i64, i64* @IRQSELECT_TARGET_ABORT_IRQ, align 8
  %184 = or i64 %182, %183
  %185 = load i64, i64* @IRQSELECT_MASTER_ABORT_IRQ, align 8
  %186 = or i64 %184, %185
  %187 = call i32 @nsp32_index_write2(i32 %170, i32 %171, i64 %186)
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @IRQ_CONTROL, align 4
  %190 = call i32 @nsp32_write2(i32 %188, i32 %189, i32 0)
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @EXT_PORT_DDR, align 4
  %193 = load i32, i32* @LED_OFF, align 4
  %194 = call i32 @nsp32_index_write1(i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @EXT_PORT, align 4
  %197 = load i32, i32* @LED_OFF, align 4
  %198 = call i32 @nsp32_index_write1(i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* @TRUE, align 4
  ret i32 %199
}

declare dso_local i64 @nsp32_index_read4(i32, i32) #1

declare dso_local i32 @nsp32_index_write2(i32, i32, i64) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_write4(i32, i32, i32) #1

declare dso_local zeroext i16 @nsp32_read2(i32, i32) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_index_write1(i32, i32, i32) #1

declare dso_local zeroext i8 @nsp32_index_read1(i32, i32) #1

declare dso_local i32 @nsp32_write1(i32, i32, i32) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
