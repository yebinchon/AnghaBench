; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_chunk_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_chunk_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dm_io_region = type { i32, i32, i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.mdata_req = type { i32, i32, %struct.dm_io_request*, %struct.dm_io_region* }
%struct.TYPE_10__ = type { i32 }

@DM_IO_VMA = common dso_local global i32 0, align 4
@do_metadata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*, i8*, i32, i32, i32)* @chunk_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_io(%struct.pstore* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pstore*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_io_region, align 4
  %13 = alloca %struct.dm_io_request, align 8
  %14 = alloca %struct.mdata_req, align 8
  store %struct.pstore* %0, %struct.pstore** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %12, i32 0, i32 0
  %16 = load %struct.pstore*, %struct.pstore** %7, align 8
  %17 = getelementptr inbounds %struct.pstore, %struct.pstore* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %12, i32 0, i32 1
  %24 = load %struct.pstore*, %struct.pstore** %7, align 8
  %25 = getelementptr inbounds %struct.pstore, %struct.pstore* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %12, i32 0, i32 2
  %30 = load %struct.pstore*, %struct.pstore** %7, align 8
  %31 = getelementptr inbounds %struct.pstore, %struct.pstore* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_10__* @dm_snap_cow(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %29, align 4
  %38 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 0
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 2
  %43 = load %struct.pstore*, %struct.pstore** %7, align 8
  %44 = getelementptr inbounds %struct.pstore, %struct.pstore* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %51 = load i32, i32* @DM_IO_VMA, align 4
  store i32 %51, i32* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %5
  %55 = call i32 @dm_io(%struct.dm_io_request* %13, i32 1, %struct.dm_io_region* %12, i32* null)
  store i32 %55, i32* %6, align 4
  br label %73

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %14, i32 0, i32 3
  store %struct.dm_io_region* %12, %struct.dm_io_region** %57, align 8
  %58 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %14, i32 0, i32 2
  store %struct.dm_io_request* %13, %struct.dm_io_request** %58, align 8
  %59 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %14, i32 0, i32 1
  %60 = load i32, i32* @do_metadata, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.pstore*, %struct.pstore** %7, align 8
  %63 = getelementptr inbounds %struct.pstore, %struct.pstore* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %14, i32 0, i32 1
  %66 = call i32 @queue_work(i32 %64, i32* %65)
  %67 = load %struct.pstore*, %struct.pstore** %7, align 8
  %68 = getelementptr inbounds %struct.pstore, %struct.pstore* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @flush_workqueue(i32 %69)
  %71 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %56, %54
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_10__* @dm_snap_cow(i32) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
