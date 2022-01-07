; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_preresume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_preresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32 }

@_origins_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to resume snapshot source until handover completes.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Unable to perform snapshot handover until source is suspended.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*)* @snapshot_preresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_preresume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  store %struct.dm_snapshot* %9, %struct.dm_snapshot** %4, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %5, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %6, align 8
  %10 = call i32 @down_read(i32* @_origins_lock)
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %12 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %11, %struct.dm_snapshot** %5, %struct.dm_snapshot** %6, i32* null)
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %14 = icmp ne %struct.dm_snapshot* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %17 = icmp ne %struct.dm_snapshot* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %20 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %23 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %24 = icmp eq %struct.dm_snapshot* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = call i32 @DMERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %18
  %30 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %31 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dm_suspended(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = call i32 @DMERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %42 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %41, i32 0, i32 0
  %43 = call i32 @up_read(i32* %42)
  br label %44

44:                                               ; preds = %40, %15, %1
  %45 = call i32 @up_read(i32* @_origins_lock)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot*, %struct.dm_snapshot**, %struct.dm_snapshot**, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_suspended(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
