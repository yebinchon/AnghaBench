; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___invalidate_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___invalidate_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.TYPE_4__*, i64, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalidating snapshot: Error reading/writing.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalidating snapshot: Unable to allocate exception.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, i32)* @__invalidate_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__invalidate_snapshot(%struct.dm_snapshot* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %6 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %55

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @DMERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %25

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @DMERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %27 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %31, align 8
  %33 = icmp ne i32 (%struct.TYPE_6__*)* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %36 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %40, align 8
  %42 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %43 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 %41(%struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %34, %25
  %47 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %48 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %50 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dm_table_event(i32 %53)
  br label %55

55:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_table_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
