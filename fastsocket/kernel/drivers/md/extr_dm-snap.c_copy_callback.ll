; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_copy_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_copy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_pending_exception = type { i32, %struct.dm_snapshot* }
%struct.dm_snapshot = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*, i32, %struct.dm_snap_pending_exception*)* }

@commit_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @copy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_callback(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dm_snap_pending_exception*, align 8
  %8 = alloca %struct.dm_snapshot*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.dm_snap_pending_exception*
  store %struct.dm_snap_pending_exception* %10, %struct.dm_snap_pending_exception** %7, align 8
  %11 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %7, align 8
  %12 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %11, i32 0, i32 1
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  store %struct.dm_snapshot* %13, %struct.dm_snapshot** %8, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %3
  %20 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %7, align 8
  %21 = call i32 @pending_complete(%struct.dm_snap_pending_exception* %20, i32 0)
  br label %38

22:                                               ; preds = %16
  %23 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %24 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_4__*, i32*, i32, %struct.dm_snap_pending_exception*)*, i32 (%struct.TYPE_4__*, i32*, i32, %struct.dm_snap_pending_exception*)** %28, align 8
  %30 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %31 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %7, align 8
  %34 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %33, i32 0, i32 0
  %35 = load i32, i32* @commit_callback, align 4
  %36 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %7, align 8
  %37 = call i32 %29(%struct.TYPE_4__* %32, i32* %34, i32 %35, %struct.dm_snap_pending_exception* %36)
  br label %38

38:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @pending_complete(%struct.dm_snap_pending_exception*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
