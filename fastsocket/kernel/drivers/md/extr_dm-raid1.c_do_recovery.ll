; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_region = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dm_dirty_log*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*)* @do_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_recovery(%struct.mirror_set* %0) #0 {
  %2 = alloca %struct.mirror_set*, align 8
  %3 = alloca %struct.dm_region*, align 8
  %4 = alloca %struct.dm_dirty_log*, align 8
  %5 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %2, align 8
  %6 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %7 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %8)
  store %struct.dm_dirty_log* %9, %struct.dm_dirty_log** %4, align 8
  %10 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %11 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dm_rh_recovery_prepare(i32 %12)
  br label %14

14:                                               ; preds = %29, %1
  %15 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %16 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.dm_region* @dm_rh_recovery_start(i32 %17)
  store %struct.dm_region* %18, %struct.dm_region** %3, align 8
  %19 = icmp ne %struct.dm_region* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %22 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %23 = call i32 @recover(%struct.mirror_set* %21, %struct.dm_region* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %28 = call i32 @dm_rh_recovery_end(%struct.dm_region* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %20
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %32 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %30
  %36 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %37 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %39, align 8
  %41 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %42 = call i64 %40(%struct.dm_dirty_log* %41)
  %43 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %44 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %49 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dm_table_event(i32 %52)
  %54 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %55 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %35, %30
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @dm_rh_recovery_prepare(i32) #1

declare dso_local %struct.dm_region* @dm_rh_recovery_start(i32) #1

declare dso_local i32 @recover(%struct.mirror_set*, %struct.dm_region*) #1

declare dso_local i32 @dm_rh_recovery_end(%struct.dm_region*, i32) #1

declare dso_local i32 @dm_table_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
