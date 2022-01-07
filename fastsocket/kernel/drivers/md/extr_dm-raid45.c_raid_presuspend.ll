; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_presuspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_presuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.dm_dirty_log* }
%struct.dm_dirty_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.dm_dirty_log*)* }

@.str = private unnamed_addr constant [22 x i8] c"log presuspend failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @raid_presuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_presuspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.dm_dirty_log*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %5 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %6 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %5, i32 0, i32 0
  %7 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  store %struct.raid_set* %7, %struct.raid_set** %3, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %10, align 8
  store %struct.dm_dirty_log* %11, %struct.dm_dirty_log** %4, align 8
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = call i32 @SetRSSuspend(%struct.raid_set* %12)
  %14 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %15 = call i64 @RSRecover(%struct.raid_set* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %19 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dm_rh_stop_recovery(i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %25 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @cancel_delayed_work(i32* %26)
  %28 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %29 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @flush_workqueue(i32 %31)
  %33 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %34 = call i32 @wait_ios(%struct.raid_set* %33)
  %35 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %36 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %38, align 8
  %40 = icmp ne i64 (%struct.dm_dirty_log*)* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %23
  %42 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %43 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %45, align 8
  %47 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %48 = call i64 %46(%struct.dm_dirty_log* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @DMWARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41, %23
  ret void
}

declare dso_local i32 @SetRSSuspend(%struct.raid_set*) #1

declare dso_local i64 @RSRecover(%struct.raid_set*) #1

declare dso_local i32 @dm_rh_stop_recovery(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @wait_ios(%struct.raid_set*) #1

declare dso_local i32 @DMWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
