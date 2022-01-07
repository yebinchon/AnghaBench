; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_seek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SUD = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ReqTrack = common dso_local global i32 0, align 4
@SUDT = common dso_local global %struct.TYPE_5__* null, align 8
@FDCSPEED = common dso_local global i32 0, align 4
@dma_wd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"fd_seek() to track %d\0A\00", align 1
@FDCREG_DATA = common dso_local global i32 0, align 4
@FDCREG_CMD = common dso_local global i32 0, align 4
@FDCCMD_SEEK = common dso_local global i32 0, align 4
@MotorOn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fd_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_seek() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SUD, i32 0, i32 0), align 4
  %2 = load i32, i32* @ReqTrack, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SUDT, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %2, %5
  %7 = icmp eq i32 %1, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @fd_seek_done(i32 0)
  br label %37

10:                                               ; preds = %0
  %11 = load i32, i32* @FDCSPEED, align 4
  %12 = call i64 @ATARIHW_PRESENT(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma_wd, i32 0, i32 0), align 8
  %15 = call i32 (...) @MFPDELAY()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* @ReqTrack, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @DPRINT(i8* %19)
  %21 = load i32, i32* @FDCREG_DATA, align 4
  %22 = load i32, i32* @ReqTrack, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SUDT, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = call i32 @FDC_WRITE(i32 %21, i32 %26)
  %28 = call i32 @udelay(i32 25)
  %29 = call i32 @SET_IRQ_HANDLER(i32 (i32)* @fd_seek_done)
  %30 = load i32, i32* @FDCREG_CMD, align 4
  %31 = load i32, i32* @FDCCMD_SEEK, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SUD, i32 0, i32 1), align 4
  %33 = or i32 %31, %32
  %34 = call i32 @FDC_WRITE(i32 %30, i32 %33)
  store i32 1, i32* @MotorOn, align 4
  %35 = call i32 (...) @set_head_settle_flag()
  %36 = call i32 (...) @start_timeout()
  br label %37

37:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @fd_seek_done(i32) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i32 @MFPDELAY(...) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SET_IRQ_HANDLER(i32 (i32)*) #1

declare dso_local i32 @set_head_settle_flag(...) #1

declare dso_local i32 @start_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
