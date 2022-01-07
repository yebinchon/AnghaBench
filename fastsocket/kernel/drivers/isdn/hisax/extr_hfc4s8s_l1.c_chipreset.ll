; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_chipreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_chipreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@R_CTRL = common dso_local global i32 0, align 4
@R_RAM_MISC = common dso_local global i32 0, align 4
@R_FIFO_MD = common dso_local global i32 0, align 4
@R_CIRM = common dso_local global i32 0, align 4
@M_SRES = common dso_local global i32 0, align 4
@R_PCM_MD0 = common dso_local global i32 0, align 4
@M_PCM_MD = common dso_local global i32 0, align 4
@M_FZ_MD = common dso_local global i32 0, align 4
@R_BRG_PCM_CFG = common dso_local global i32 0, align 4
@M_PCM_CLK = common dso_local global i32 0, align 4
@R_TI_WD = common dso_local global i32 0, align 4
@TRANS_TIMER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @chipreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipreset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @spin_lock_irqsave(i32* %5, i32 %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = load i32, i32* @R_CTRL, align 4
  %10 = call i32 @Write_hfc8(%struct.TYPE_8__* %8, i32 %9, i32 0)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @R_RAM_MISC, align 4
  %13 = call i32 @Write_hfc8(%struct.TYPE_8__* %11, i32 %12, i32 0)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = load i32, i32* @R_FIFO_MD, align 4
  %16 = call i32 @Write_hfc8(%struct.TYPE_8__* %14, i32 %15, i32 0)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = load i32, i32* @R_CIRM, align 4
  %19 = load i32, i32* @M_SRES, align 4
  %20 = call i32 @Write_hfc8(%struct.TYPE_8__* %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i32 %26)
  %28 = call i32 @udelay(i32 3)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = load i32, i32* @R_CIRM, align 4
  %31 = call i32 @Write_hfc8(%struct.TYPE_8__* %29, i32 %30, i32 0)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @wait_busy(%struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = load i32, i32* @R_PCM_MD0, align 4
  %36 = load i32, i32* @M_PCM_MD, align 4
  %37 = call i32 @Write_hfc8(%struct.TYPE_8__* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = load i32, i32* @R_RAM_MISC, align 4
  %40 = load i32, i32* @M_FZ_MD, align 4
  %41 = call i32 @Write_hfc8(%struct.TYPE_8__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = load i32, i32* @R_BRG_PCM_CFG, align 4
  %50 = load i32, i32* @M_PCM_CLK, align 4
  %51 = call i32 @Write_hfc8(%struct.TYPE_8__* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = load i32, i32* @R_TI_WD, align 4
  %55 = load i32, i32* @TRANS_TIMER_MODE, align 4
  %56 = call i32 @Write_hfc8(%struct.TYPE_8__* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @memset(%struct.TYPE_9__* %58, i32 0, i32 8)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @Write_hfc8(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_busy(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
