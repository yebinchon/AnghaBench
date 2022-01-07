; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___validate_exception_handover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___validate_exception_handover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Snapshot cow pairing for exception table handover failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"A snapshot is already merging.\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Snapshot exception store does not support snapshot-merge.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*)* @__validate_exception_handover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__validate_exception_handover(%struct.dm_snapshot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %4, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %5, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %6, align 8
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %8 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %7, %struct.dm_snapshot** %4, %struct.dm_snapshot** %5, %struct.dm_snapshot** %6)
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %12 = icmp ne %struct.dm_snapshot* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10, %1
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %15 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %10
  %21 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %22 = icmp ne %struct.dm_snapshot* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %67

24:                                               ; preds = %20
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %26 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @dm_target_is_snapshot_merge(%struct.TYPE_6__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %33 = icmp ne %struct.dm_snapshot* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %36 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %31
  %42 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %43 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %52 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %50, %41
  %60 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %61 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %59, %34, %30, %23, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot*, %struct.dm_snapshot**, %struct.dm_snapshot**, %struct.dm_snapshot**) #1

declare dso_local i32 @dm_target_is_snapshot_merge(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
