; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_setup_descr_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_setup_descr_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_dma_desc = type { %struct.cryptocop_dma_desc*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"setup_descr_chain: entering\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"setup_descr_chain: exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryptocop_dma_desc*)* @setup_descr_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_descr_chain(%struct.cryptocop_dma_desc* %0) #0 {
  %2 = alloca %struct.cryptocop_dma_desc*, align 8
  store %struct.cryptocop_dma_desc* %0, %struct.cryptocop_dma_desc** %2, align 8
  %3 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @DEBUG(i32 %3)
  br label %5

5:                                                ; preds = %30, %1
  %6 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %7 = icmp ne %struct.cryptocop_dma_desc* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %10 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %9, i32 0, i32 0
  %11 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %10, align 8
  %12 = icmp ne %struct.cryptocop_dma_desc* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %15 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %14, i32 0, i32 0
  %16 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %15, align 8
  %17 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i64 @virt_to_phys(%struct.TYPE_2__* %18)
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %22 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* %20, i32** %24, align 8
  br label %30

25:                                               ; preds = %8
  %26 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %27 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %25, %13
  %31 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %2, align 8
  %32 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %31, i32 0, i32 0
  %33 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %32, align 8
  store %struct.cryptocop_dma_desc* %33, %struct.cryptocop_dma_desc** %2, align 8
  br label %5

34:                                               ; preds = %5
  %35 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @DEBUG(i32 %35)
  ret void
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @virt_to_phys(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
