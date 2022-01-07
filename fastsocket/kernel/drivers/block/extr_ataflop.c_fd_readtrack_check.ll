; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_readtrack_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_readtrack_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MultReadInProgress = common dso_local global i64 0, align 8
@dma_wd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EXTD_DMA = common dso_local global i32 0, align 4
@st_dma_ext_dmahi = common dso_local global i32 0, align 4
@PhysTrackBuffer = common dso_local global i32 0, align 4
@SUDT = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"fd_readtrack_check(): done\0A\00", align 1
@FDCREG_CMD = common dso_local global i32 0, align 4
@FDCCMD_FORCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"fd_readtrack_check(): not yet finished\0A\00", align 1
@readtrack_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fd_readtrack_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_readtrack_check(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i64, i64* @MultReadInProgress, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @local_irq_restore(i64 %11)
  br label %81

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 0), align 4
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = call i32 (...) @MFPDELAY()
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 1), align 4
  %21 = and i32 %20, 255
  %22 = shl i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = call i32 (...) @MFPDELAY()
  %27 = load i32, i32* @EXTD_DMA, align 4
  %28 = call i64 @ATARIHW_PRESENT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %14
  %31 = load i32, i32* @st_dma_ext_dmahi, align 4
  %32 = and i32 %31, 65535
  %33 = shl i32 %32, 16
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %4, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %44

37:                                               ; preds = %14
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 2), align 4
  %39 = and i32 %38, 255
  %40 = shl i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = call i32 (...) @MFPDELAY()
  br label %46

46:                                               ; preds = %44
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %14, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* @PhysTrackBuffer, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SUDT, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 512
  %57 = add nsw i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = icmp uge i64 %51, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = call i32 @SET_IRQ_HANDLER(i32* null)
  store i64 0, i64* @MultReadInProgress, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  %64 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @FDCREG_CMD, align 4
  %66 = load i32, i32* @FDCCMD_FORCI, align 4
  %67 = call i32 @FDC_WRITE(i32 %65, i32 %66)
  %68 = call i32 @udelay(i32 25)
  %69 = call i32 @fd_rwsec_done1(i32 0)
  br label %81

70:                                               ; preds = %50
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  %73 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i32, i32* @HZ, align 4
  %76 = sdiv i32 %75, 5
  %77 = sdiv i32 %76, 10
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = call i32 @mod_timer(i32* @readtrack_timer, i64 %79)
  br label %81

81:                                               ; preds = %10, %70, %60
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @MFPDELAY(...) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i32 @SET_IRQ_HANDLER(i32*) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @fd_rwsec_done1(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
