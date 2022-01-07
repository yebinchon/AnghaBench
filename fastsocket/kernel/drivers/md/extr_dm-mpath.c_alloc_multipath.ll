; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_alloc_multipath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_alloc_multipath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32, %struct.dm_target*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_target = type { %struct.multipath* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DM_PG_INIT_DELAY_DEFAULT = common dso_local global i32 0, align 4
@process_queued_ios = common dso_local global i32 0, align 4
@trigger_event = common dso_local global i32 0, align 4
@MIN_IOS = common dso_local global i32 0, align 4
@_mpio_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.multipath* (%struct.dm_target*)* @alloc_multipath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.multipath* @alloc_multipath(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.multipath*, align 8
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.multipath*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.multipath* @kzalloc(i32 56, i32 %5)
  store %struct.multipath* %6, %struct.multipath** %4, align 8
  %7 = load %struct.multipath*, %struct.multipath** %4, align 8
  %8 = icmp ne %struct.multipath* %7, null
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = load %struct.multipath*, %struct.multipath** %4, align 8
  %11 = getelementptr inbounds %struct.multipath, %struct.multipath* %10, i32 0, i32 10
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.multipath*, %struct.multipath** %4, align 8
  %14 = getelementptr inbounds %struct.multipath, %struct.multipath* %13, i32 0, i32 9
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.multipath*, %struct.multipath** %4, align 8
  %17 = getelementptr inbounds %struct.multipath, %struct.multipath* %16, i32 0, i32 8
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.multipath*, %struct.multipath** %4, align 8
  %20 = getelementptr inbounds %struct.multipath, %struct.multipath* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @DM_PG_INIT_DELAY_DEFAULT, align 4
  %22 = load %struct.multipath*, %struct.multipath** %4, align 8
  %23 = getelementptr inbounds %struct.multipath, %struct.multipath* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.multipath*, %struct.multipath** %4, align 8
  %25 = getelementptr inbounds %struct.multipath, %struct.multipath* %24, i32 0, i32 6
  %26 = load i32, i32* @process_queued_ios, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.multipath*, %struct.multipath** %4, align 8
  %29 = getelementptr inbounds %struct.multipath, %struct.multipath* %28, i32 0, i32 5
  %30 = load i32, i32* @trigger_event, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.multipath*, %struct.multipath** %4, align 8
  %33 = getelementptr inbounds %struct.multipath, %struct.multipath* %32, i32 0, i32 4
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.multipath*, %struct.multipath** %4, align 8
  %36 = getelementptr inbounds %struct.multipath, %struct.multipath* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load i32, i32* @MIN_IOS, align 4
  %39 = load i32, i32* @_mpio_cache, align 4
  %40 = call i32 @mempool_create_slab_pool(i32 %38, i32 %39)
  %41 = load %struct.multipath*, %struct.multipath** %4, align 8
  %42 = getelementptr inbounds %struct.multipath, %struct.multipath* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.multipath*, %struct.multipath** %4, align 8
  %44 = getelementptr inbounds %struct.multipath, %struct.multipath* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %9
  %48 = load %struct.multipath*, %struct.multipath** %4, align 8
  %49 = call i32 @kfree(%struct.multipath* %48)
  store %struct.multipath* null, %struct.multipath** %2, align 8
  br label %59

50:                                               ; preds = %9
  %51 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %52 = load %struct.multipath*, %struct.multipath** %4, align 8
  %53 = getelementptr inbounds %struct.multipath, %struct.multipath* %52, i32 0, i32 1
  store %struct.dm_target* %51, %struct.dm_target** %53, align 8
  %54 = load %struct.multipath*, %struct.multipath** %4, align 8
  %55 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %56 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %55, i32 0, i32 0
  store %struct.multipath* %54, %struct.multipath** %56, align 8
  br label %57

57:                                               ; preds = %50, %1
  %58 = load %struct.multipath*, %struct.multipath** %4, align 8
  store %struct.multipath* %58, %struct.multipath** %2, align 8
  br label %59

59:                                               ; preds = %57, %47
  %60 = load %struct.multipath*, %struct.multipath** %2, align 8
  ret %struct.multipath* %60
}

declare dso_local %struct.multipath* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @kfree(%struct.multipath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
