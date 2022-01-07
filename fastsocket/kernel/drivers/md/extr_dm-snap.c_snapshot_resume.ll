; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32 }

@_origins_lock = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @snapshot_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_resume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  store %struct.dm_snapshot* %8, %struct.dm_snapshot** %3, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %4, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %5, align 8
  %9 = call i32 @down_read(i32* @_origins_lock)
  %10 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %11 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %10, %struct.dm_snapshot** %4, %struct.dm_snapshot** %5, i32* null)
  %12 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %13 = icmp ne %struct.dm_snapshot* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %16 = icmp ne %struct.dm_snapshot* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %19 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %18, i32 0, i32 1
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %22 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %21, i32 0, i32 1
  %23 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %24 = call i32 @down_write_nested(i32* %22, i32 %23)
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %26 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %27 = call i32 @__handover_exceptions(%struct.dm_snapshot* %25, %struct.dm_snapshot* %26)
  %28 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %29 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %28, i32 0, i32 1
  %30 = call i32 @up_write(i32* %29)
  %31 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %32 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %31, i32 0, i32 1
  %33 = call i32 @up_write(i32* %32)
  br label %34

34:                                               ; preds = %17, %14, %1
  %35 = call i32 @up_read(i32* @_origins_lock)
  %36 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %37 = call i32 @reregister_snapshot(%struct.dm_snapshot* %36)
  %38 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %39 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %38, i32 0, i32 1
  %40 = call i32 @down_write(i32* %39)
  %41 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %42 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %44 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %43, i32 0, i32 1
  %45 = call i32 @up_write(i32* %44)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot*, %struct.dm_snapshot**, %struct.dm_snapshot**, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @__handover_exceptions(%struct.dm_snapshot*, %struct.dm_snapshot*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @reregister_snapshot(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
