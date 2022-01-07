; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_queue_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_queue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.list_head = type { i32 }
%struct.rsxx_dma = type { i32, i32, i8*, i32, i64, i32*, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@rsxx_dma_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HW_CMD_BLK_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Queuing[D] laddr %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, %struct.list_head*, i32, i32, i8*)* @rsxx_queue_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_queue_discard(%struct.rsxx_cardinfo* %0, %struct.list_head* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsxx_cardinfo*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rsxx_dma*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %7, align 8
  store %struct.list_head* %1, %struct.list_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @rsxx_dma_pool, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rsxx_dma* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.rsxx_dma* %15, %struct.rsxx_dma** %12, align 8
  %16 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %17 = icmp ne %struct.rsxx_dma* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %56

21:                                               ; preds = %5
  %22 = load i32, i32* @HW_CMD_BLK_DISCARD, align 4
  %23 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %24 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %27 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %29 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %31 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %34 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %37 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %39 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %42 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %45 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %7, align 8
  %47 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %46)
  %48 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %49 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.rsxx_dma*, %struct.rsxx_dma** %12, align 8
  %53 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %52, i32 0, i32 1
  %54 = load %struct.list_head*, %struct.list_head** %8, align 8
  %55 = call i32 @list_add_tail(i32* %53, %struct.list_head* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %21, %18
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.rsxx_dma* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
