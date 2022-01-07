; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_rwsec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_rwsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8, i8, i8, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"fd_rwsec(), Sec=%d, Access=%c\0A\00", align 1
@ReqSector = common dso_local global i32 0, align 4
@ReqCmd = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@EXTD_DMA = common dso_local global i32 0, align 4
@ReqData = common dso_local global i32 0, align 4
@DMABuffer = common dso_local global i32 0, align 4
@PhysDMABuffer = common dso_local global i64 0, align 8
@read_track = common dso_local global i64 0, align 8
@PhysTrackBuffer = common dso_local global i64 0, align 8
@ReqSide = common dso_local global i32 0, align 4
@FDCREG_SECTOR = common dso_local global i32 0, align 4
@SUDT = common dso_local global %struct.TYPE_4__* null, align 8
@FDCREG_TRACK = common dso_local global i32 0, align 4
@dma_wd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@st_dma_ext_dmahi = common dso_local global i16 0, align 2
@FDCSELREG_STP = common dso_local global i32 0, align 4
@fd_rwsec_done = common dso_local global i32 0, align 4
@FDCCMD_WRSEC = common dso_local global i32 0, align 4
@FDCCMD_RDSEC = common dso_local global i32 0, align 4
@FDCCMDADD_M = common dso_local global i32 0, align 4
@MotorOn = common dso_local global i32 0, align 4
@NeedSeek = common dso_local global i32 0, align 4
@MultReadInProgress = common dso_local global i32 0, align 4
@readtrack_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fd_rwsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_rwsec() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ReqSector, align 4
  %7 = load i64, i64* @ReqCmd, align 8
  %8 = load i64, i64* @WRITE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 119, i32 114
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @DPRINT(i8* %13)
  %15 = load i64, i64* @ReqCmd, align 8
  %16 = load i64, i64* @WRITE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %0
  %19 = load i32, i32* @EXTD_DMA, align 4
  %20 = call i64 @ATARIHW_PRESENT(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ReqData, align 4
  %24 = call i64 @virt_to_phys(i32 %23)
  store i64 %24, i64* %1, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @ReqData, align 4
  %27 = load i32, i32* @DMABuffer, align 4
  %28 = call i32 @copy_buffer(i32 %26, i32 %27)
  %29 = load i64, i64* @PhysDMABuffer, align 8
  store i64 %29, i64* %1, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @dma_cache_maintenance(i64 %31, i32 512, i32 1)
  store i32 256, i32* %3, align 4
  br label %50

33:                                               ; preds = %0
  %34 = load i64, i64* @read_track, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @PhysTrackBuffer, align 8
  store i64 %37, i64* %1, align 8
  br label %49

38:                                               ; preds = %33
  %39 = load i32, i32* @EXTD_DMA, align 4
  %40 = call i64 @ATARIHW_PRESENT(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ReqData, align 4
  %44 = call i64 @virt_to_phys(i32 %43)
  br label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @PhysDMABuffer, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i64 [ %44, %42 ], [ %46, %45 ]
  store i64 %48, i64* %1, align 8
  br label %49

49:                                               ; preds = %47, %36
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* @ReqSide, align 4
  %52 = call i32 @fd_select_side(i32 %51)
  %53 = load i32, i32* @FDCREG_SECTOR, align 4
  %54 = load i64, i64* @read_track, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @ReqSector, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 1, %56 ], [ %58, %57 ]
  %61 = call i32 @FDC_WRITE(i32 %53, i32 %60)
  %62 = call i32 (...) @MFPDELAY()
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SUDT, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load i32, i32* @FDCREG_TRACK, align 4
  %69 = call i32 @FDC_READ(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = call i32 (...) @MFPDELAY()
  %71 = load i32, i32* @FDCREG_TRACK, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SUDT, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = lshr i32 %72, %75
  %77 = call i32 @FDC_WRITE(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %67, %59
  %79 = call i32 @udelay(i32 25)
  %80 = load i64, i64* %2, align 8
  %81 = call i32 @local_irq_save(i64 %80)
  %82 = load i64, i64* %1, align 8
  %83 = trunc i64 %82 to i8
  store i8 %83, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 0), align 4
  %84 = call i32 (...) @MFPDELAY()
  %85 = load i64, i64* %1, align 8
  %86 = lshr i64 %85, 8
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 1), align 1
  %89 = call i32 (...) @MFPDELAY()
  %90 = load i64, i64* %1, align 8
  %91 = lshr i64 %90, 8
  store i64 %91, i64* %1, align 8
  %92 = load i32, i32* @EXTD_DMA, align 4
  %93 = call i64 @ATARIHW_PRESENT(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = load i64, i64* %1, align 8
  %97 = trunc i64 %96 to i16
  store i16 %97, i16* @st_dma_ext_dmahi, align 2
  br label %101

98:                                               ; preds = %78
  %99 = load i64, i64* %1, align 8
  %100 = trunc i64 %99 to i8
  store i8 %100, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 2), align 2
  br label %101

101:                                              ; preds = %98, %95
  %102 = call i32 (...) @MFPDELAY()
  %103 = load i64, i64* %2, align 8
  %104 = call i32 @local_irq_restore(i64 %103)
  %105 = load i32, i32* %3, align 4
  %106 = or i32 144, %105
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %107 = call i32 (...) @MFPDELAY()
  %108 = load i32, i32* %3, align 4
  %109 = xor i32 %108, 256
  %110 = or i32 144, %109
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %111 = call i32 (...) @MFPDELAY()
  %112 = load i32, i32* %3, align 4
  %113 = or i32 144, %112
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %114 = call i32 (...) @MFPDELAY()
  %115 = load i64, i64* @read_track, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %101
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SUDT, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  br label %122

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i32 [ %120, %117 ], [ 1, %121 ]
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 4), align 4
  %124 = call i32 @udelay(i32 25)
  %125 = load i32, i32* @FDCSELREG_STP, align 4
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %128 = call i32 @udelay(i32 25)
  %129 = load i32, i32* @fd_rwsec_done, align 4
  %130 = call i32 @SET_IRQ_HANDLER(i32 %129)
  %131 = call i32 (...) @get_head_settle_flag()
  %132 = load i32, i32* %3, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* @FDCCMD_WRSEC, align 4
  br label %146

136:                                              ; preds = %122
  %137 = load i32, i32* @FDCCMD_RDSEC, align 4
  %138 = load i64, i64* @read_track, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @FDCCMDADD_M, align 4
  br label %143

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = or i32 %137, %144
  br label %146

146:                                              ; preds = %143, %134
  %147 = phi i32 [ %135, %134 ], [ %145, %143 ]
  %148 = or i32 %131, %147
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 4), align 4
  %149 = load i32, i32* @MotorOn, align 4
  store i32 %149, i32* %4, align 4
  store i32 1, i32* @MotorOn, align 4
  store i32 1, i32* @NeedSeek, align 4
  %150 = load i64, i64* @read_track, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %146
  store i32 1, i32* @MultReadInProgress, align 4
  %153 = load i32, i32* @jiffies, align 4
  %154 = load i32, i32* @HZ, align 4
  %155 = sdiv i32 %154, 5
  %156 = add nsw i32 %153, %155
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @HZ, align 4
  br label %162

162:                                              ; preds = %160, %159
  %163 = phi i32 [ 0, %159 ], [ %161, %160 ]
  %164 = add nsw i32 %156, %163
  %165 = call i32 @mod_timer(i32* @readtrack_timer, i32 %164)
  br label %166

166:                                              ; preds = %162, %146
  %167 = call i32 (...) @start_timeout()
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @copy_buffer(i32, i32) #1

declare dso_local i32 @dma_cache_maintenance(i64, i32, i32) #1

declare dso_local i32 @fd_select_side(i32) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @MFPDELAY(...) #1

declare dso_local i32 @FDC_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @SET_IRQ_HANDLER(i32) #1

declare dso_local i32 @get_head_settle_flag(...) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @start_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
