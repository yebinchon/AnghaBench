; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_alloc_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_alloc_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { i8*, i32, i8*, %struct.TYPE_3__, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nes_cm_timer_tick = common dso_local global i32 0, align 4
@NES_CM_DEFAULT_MTU = common dso_local global i32 0, align 4
@NES_CM_STATE_INITED = common dso_local global i32 0, align 4
@NES_CM_DEFAULT_FREE_PKTS = common dso_local global i32 0, align 4
@nes_cm_api = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Init CM Core completed -- cm_core=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Enable QUEUE EVENTS\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nesewq\00", align 1
@nes_cm_post_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Enable QUEUE DISCONNECTS\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"nesdwq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nes_cm_core* ()* @nes_cm_alloc_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nes_cm_core* @nes_cm_alloc_core() #0 {
  %1 = alloca %struct.nes_cm_core*, align 8
  %2 = alloca %struct.nes_cm_core*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.nes_cm_core* @kzalloc(i32 72, i32 %3)
  store %struct.nes_cm_core* %4, %struct.nes_cm_core** %2, align 8
  %5 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %6 = icmp ne %struct.nes_cm_core* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nes_cm_core* null, %struct.nes_cm_core** %1, align 8
  br label %62

8:                                                ; preds = %0
  %9 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %10 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %9, i32 0, i32 12
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %13 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %12, i32 0, i32 11
  %14 = call i32 @init_timer(%struct.TYPE_4__* %13)
  %15 = load i32, i32* @nes_cm_timer_tick, align 4
  %16 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %17 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @NES_CM_DEFAULT_MTU, align 4
  %20 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %21 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NES_CM_STATE_INITED, align 4
  %23 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %24 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @NES_CM_DEFAULT_FREE_PKTS, align 4
  %26 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %27 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %29 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %28, i32 0, i32 7
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %32 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %31, i32 0, i32 6
  store i32* @nes_cm_api, i32** %32, align 8
  %33 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %34 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %33, i32 0, i32 5
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %37 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %40 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load i32, i32* @NES_DBG_CM, align 4
  %44 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %45 = call i32 (i32, i8*, ...) @nes_debug(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_core* %44)
  %46 = load i32, i32* @NES_DBG_CM, align 4
  %47 = call i32 (i32, i8*, ...) @nes_debug(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %50 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @nes_cm_post_event, align 4
  %52 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %53 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @NES_DBG_CM, align 4
  %55 = call i32 (i32, i8*, ...) @nes_debug(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %58 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  %60 = call i32 @print_core(%struct.nes_cm_core* %59)
  %61 = load %struct.nes_cm_core*, %struct.nes_cm_core** %2, align 8
  store %struct.nes_cm_core* %61, %struct.nes_cm_core** %1, align 8
  br label %62

62:                                               ; preds = %8, %7
  %63 = load %struct.nes_cm_core*, %struct.nes_cm_core** %1, align 8
  ret %struct.nes_cm_core* %63
}

declare dso_local %struct.nes_cm_core* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @print_core(%struct.nes_cm_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
