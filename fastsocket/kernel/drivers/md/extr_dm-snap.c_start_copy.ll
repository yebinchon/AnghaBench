; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_start_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_start_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_pending_exception = type { %struct.TYPE_7__, %struct.dm_snapshot* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dm_snapshot = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.TYPE_5__ = type { %struct.block_device* }
%struct.dm_io_region = type { i32, i8*, %struct.block_device* }

@copy_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snap_pending_exception*)* @start_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_copy(%struct.dm_snap_pending_exception* %0) #0 {
  %2 = alloca %struct.dm_snap_pending_exception*, align 8
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_io_region, align 8
  %5 = alloca %struct.dm_io_region, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.dm_snap_pending_exception* %0, %struct.dm_snap_pending_exception** %2, align 8
  %8 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %2, align 8
  %9 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %8, i32 0, i32 1
  %10 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  store %struct.dm_snapshot* %10, %struct.dm_snapshot** %3, align 8
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.block_device*, %struct.block_device** %14, align 8
  store %struct.block_device* %15, %struct.block_device** %6, align 8
  %16 = load %struct.block_device*, %struct.block_device** %6, align 8
  %17 = call i8* @get_dev_size(%struct.block_device* %16)
  store i8* %17, i8** %7, align 8
  %18 = load %struct.block_device*, %struct.block_device** %6, align 8
  %19 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 2
  store %struct.block_device* %18, %struct.block_device** %19, align 8
  %20 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %21 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %2, align 8
  %24 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @chunk_to_sector(%struct.TYPE_8__* %22, i32 %26)
  %28 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %30 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @min(i8* %34, i8* %41)
  %43 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %45 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.block_device*, %struct.block_device** %47, align 8
  %49 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %5, i32 0, i32 2
  store %struct.block_device* %48, %struct.block_device** %49, align 8
  %50 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %51 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %2, align 8
  %54 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @chunk_to_sector(%struct.TYPE_8__* %52, i32 %56)
  %58 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %5, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %5, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %63 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @copy_callback, align 4
  %66 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %2, align 8
  %67 = call i32 @dm_kcopyd_copy(i32 %64, %struct.dm_io_region* %4, i32 1, %struct.dm_io_region* %5, i32 0, i32 %65, %struct.dm_snap_pending_exception* %66)
  ret void
}

declare dso_local i8* @get_dev_size(%struct.block_device*) #1

declare dso_local i8* @chunk_to_sector(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @min(i8*, i8*) #1

declare dso_local i32 @dm_kcopyd_copy(i32, %struct.dm_io_region*, i32, %struct.dm_io_region*, i32, i32, %struct.dm_snap_pending_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
