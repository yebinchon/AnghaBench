; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_shared_unmap_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_shared_unmap_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32*, i32* }

@mpsc_shared_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MPSC_ROUTING_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@MPSC_SDMA_INTR_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mpsc_shared_unmap_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_shared_unmap_regs() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 3), align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 3), align 8
  %5 = call i32 @iounmap(i32* %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 1), align 8
  %7 = load i32, i32* @MPSC_ROUTING_REG_BLOCK_SIZE, align 4
  %8 = call i32 @release_mem_region(i64 %6, i32 %7)
  br label %9

9:                                                ; preds = %3, %0
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 2), align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 2), align 8
  %14 = call i32 @iounmap(i32* %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 0), align 8
  %16 = load i32, i32* @MPSC_SDMA_INTR_REG_BLOCK_SIZE, align 4
  %17 = call i32 @release_mem_region(i64 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %9
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
