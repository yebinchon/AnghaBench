; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_presuspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_presuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.mirror_set = type { i32, i32, i32, %struct.bio_list, i32 }
%struct.bio_list = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_dirty_log*)* }
%struct.bio = type { i32 }

@_kmirrord_recovery_stopped = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"log presuspend failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @mirror_presuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mirror_presuspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.dm_dirty_log*, align 8
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.bio*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.mirror_set*
  store %struct.mirror_set* %10, %struct.mirror_set** %3, align 8
  %11 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %12 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %13)
  store %struct.dm_dirty_log* %14, %struct.dm_dirty_log** %4, align 8
  %15 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %16 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %15, i32 0, i32 4
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %19 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %22 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %21, i32 0, i32 3
  %23 = bitcast %struct.bio_list* %5 to i8*
  %24 = bitcast %struct.bio_list* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %26 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %25, i32 0, i32 3
  %27 = call i32 @bio_list_init(%struct.bio_list* %26)
  %28 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %29 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %31

31:                                               ; preds = %34, %1
  %32 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %32, %struct.bio** %6, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i32 @hold_bio(%struct.mirror_set* %35, %struct.bio* %36)
  br label %31

38:                                               ; preds = %31
  %39 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %40 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dm_rh_stop_recovery(i32 %41)
  %43 = load i32, i32* @_kmirrord_recovery_stopped, align 4
  %44 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %45 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dm_rh_recovery_in_flight(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @wait_event(i32 %43, i32 %50)
  %52 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %53 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %55, align 8
  %57 = icmp ne i64 (%struct.dm_dirty_log*)* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %38
  %59 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %60 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %62, align 8
  %64 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %65 = call i64 %63(%struct.dm_dirty_log* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = call i32 @DMWARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %58, %38
  %70 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %71 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @flush_workqueue(i32 %72)
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @hold_bio(%struct.mirror_set*, %struct.bio*) #1

declare dso_local i32 @dm_rh_stop_recovery(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dm_rh_recovery_in_flight(i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
