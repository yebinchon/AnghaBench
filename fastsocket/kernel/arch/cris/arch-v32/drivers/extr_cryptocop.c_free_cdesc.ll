; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_free_cdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_free_cdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_dma_desc = type { %struct.cryptocop_dma_desc*, i64, %struct.cryptocop_dma_desc* }

@.str = private unnamed_addr constant [38 x i8] c"free_cdesc: cdesc 0x%p, from_pool=%d\0A\00", align 1
@descr_pool_lock = common dso_local global i32 0, align 4
@descr_pool_free_list = common dso_local global %struct.cryptocop_dma_desc* null, align 8
@descr_pool_no_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryptocop_dma_desc*)* @free_cdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cdesc(%struct.cryptocop_dma_desc* %0) #0 {
  %2 = alloca %struct.cryptocop_dma_desc*, align 8
  %3 = alloca i64, align 8
  store %struct.cryptocop_dma_desc* %0, %struct.cryptocop_dma_desc** %2, align 8
  %4 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %5 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %6 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.cryptocop_dma_desc* %4, i64 %7)
  %9 = call i32 @DEBUG(i32 %8)
  %10 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %11 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %10, i32 0, i32 2
  %12 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %11, align 8
  %13 = call i32 @kfree(%struct.cryptocop_dma_desc* %12)
  %14 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %15 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @descr_pool_lock, i64 %19)
  %21 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** @descr_pool_free_list, align 8
  %22 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %23 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %22, i32 0, i32 0
  store %struct.cryptocop_dma_desc* %21, %struct.cryptocop_dma_desc** %23, align 8
  %24 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  store %struct.cryptocop_dma_desc* %24, %struct.cryptocop_dma_desc** @descr_pool_free_list, align 8
  %25 = load i32, i32* @descr_pool_no_free, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @descr_pool_no_free, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @descr_pool_lock, i64 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %31 = call i32 @kfree(%struct.cryptocop_dma_desc* %30)
  br label %32

32:                                               ; preds = %29, %18
  ret void
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, %struct.cryptocop_dma_desc*, i64) #1

declare dso_local i32 @kfree(%struct.cryptocop_dma_desc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
