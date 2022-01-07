; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_disable_transmission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_disable_transmission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"disable transmission\0A\00", align 1
@B3D_REG_HW_CTRL = common dso_local global i32 0, align 4
@B3D_REG_DMA_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DMA_STS reads %x after TX stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b3dfg_dev*)* @disable_transmission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_transmission(%struct.b3dfg_dev* %0) #0 {
  %2 = alloca %struct.b3dfg_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %2, align 8
  %6 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %7 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %13 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %17 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %19 = load i32, i32* @B3D_REG_HW_CTRL, align 4
  %20 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %18, i32 %19, i32 0)
  %21 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %22 = load i32, i32* @B3D_REG_DMA_STS, align 4
  %23 = call i32 @b3dfg_read32(%struct.b3dfg_dev* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %28 = call i32 @dequeue_all_buffers(%struct.b3dfg_dev* %27)
  %29 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %30 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %34 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %33, i32 0, i32 0
  %35 = call i32 @wake_up_interruptible(i32* %34)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @b3dfg_write32(%struct.b3dfg_dev*, i32, i32) #1

declare dso_local i32 @b3dfg_read32(%struct.b3dfg_dev*, i32) #1

declare dso_local i32 @dequeue_all_buffers(%struct.b3dfg_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
