; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_queue_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.list_head = type { i32 }
%struct.page = type { i32 }
%struct.rsxx_dma = type { i32, i32, i32, %struct.page*, %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@rsxx_dma_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HW_CMD_BLK_WRITE = common dso_local global i32 0, align 4
@HW_CMD_BLK_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Queuing[%c] laddr %x off %d cnt %d page %p pg_off %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, %struct.list_head*, i32, i32, i32, i32, %struct.page*, i32, i32, i8*)* @rsxx_queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_queue_dma(%struct.rsxx_cardinfo* %0, %struct.list_head* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.page* %6, i32 %7, i32 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.rsxx_cardinfo*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.rsxx_dma*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %12, align 8
  store %struct.list_head* %1, %struct.list_head** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.page* %6, %struct.page** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %23 = load i32, i32* @rsxx_dma_pool, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rsxx_dma* @kmem_cache_alloc(i32 %23, i32 %24)
  store %struct.rsxx_dma* %25, %struct.rsxx_dma** %22, align 8
  %26 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %27 = icmp ne %struct.rsxx_dma* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %10
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %96

31:                                               ; preds = %10
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @HW_CMD_BLK_WRITE, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @HW_CMD_BLK_READ, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %41 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %44 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = lshr i32 %45, 9
  %47 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %48 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %16, align 4
  %51 = lshr i32 %50, 9
  %52 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %53 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.page*, %struct.page** %18, align 8
  %56 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %57 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %56, i32 0, i32 3
  store %struct.page* %55, %struct.page** %57, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %60 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %63 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %66 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %12, align 8
  %68 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 87, i32 82
  %73 = trunc i32 %72 to i8
  %74 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %75 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %78 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %82 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %86 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %85, i32 0, i32 3
  %87 = load %struct.page*, %struct.page** %86, align 8
  %88 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %89 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 signext %73, i32 %76, i32 %80, i32 %84, %struct.page* %87, i32 %90)
  %92 = load %struct.rsxx_dma*, %struct.rsxx_dma** %22, align 8
  %93 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %92, i32 0, i32 2
  %94 = load %struct.list_head*, %struct.list_head** %13, align 8
  %95 = call i32 @list_add_tail(i32* %93, %struct.list_head* %94)
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %38, %28
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local %struct.rsxx_dma* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, i32, i32, i32, %struct.page*, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
