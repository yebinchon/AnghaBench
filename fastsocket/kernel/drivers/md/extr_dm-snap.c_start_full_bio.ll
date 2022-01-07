; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_start_full_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_start_full_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_pending_exception = type { i8*, i32, %struct.bio*, %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32 }
%struct.bio = type { i8*, i32 }

@copy_callback = common dso_local global i32 0, align 4
@full_bio_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snap_pending_exception*, %struct.bio*)* @start_full_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_full_bio(%struct.dm_snap_pending_exception* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_snap_pending_exception*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca i8*, align 8
  store %struct.dm_snap_pending_exception* %0, %struct.dm_snap_pending_exception** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %8 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %7, i32 0, i32 3
  %9 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  store %struct.dm_snapshot* %9, %struct.dm_snapshot** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %12 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %11, i32 0, i32 2
  store %struct.bio* %10, %struct.bio** %12, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %17 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %22 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %24 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @copy_callback, align 4
  %27 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %28 = call i8* @dm_kcopyd_prepare_callback(i32 %25, i32 %26, %struct.dm_snap_pending_exception* %27)
  store i8* %28, i8** %6, align 8
  %29 = load i32, i32* @full_bio_end_io, align 4
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = call i32 @generic_make_request(%struct.bio* %35)
  ret void
}

declare dso_local i8* @dm_kcopyd_prepare_callback(i32, i32, %struct.dm_snap_pending_exception*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
