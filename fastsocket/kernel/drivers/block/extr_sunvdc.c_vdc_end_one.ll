; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_end_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_end_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.vdc_req_entry* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vdc_req_entry = type { %struct.request* }
%struct.request = type { i32 }
%struct.vio_dring_state = type { i32 }
%struct.vio_disk_desc = type { i32, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@VIO_DESC_DONE = common dso_local global i64 0, align 8
@VIO_DESC_FREE = common dso_local global i64 0, align 8
@VDC_TX_RING_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*, %struct.vio_dring_state*, i32)* @vdc_end_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_end_one(%struct.vdc_port* %0, %struct.vio_dring_state* %1, i32 %2) #0 {
  %4 = alloca %struct.vdc_port*, align 8
  %5 = alloca %struct.vio_dring_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vio_disk_desc*, align 8
  %8 = alloca %struct.vdc_req_entry*, align 8
  %9 = alloca %struct.request*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %4, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.vio_disk_desc* @vio_dring_entry(%struct.vio_dring_state* %10, i32 %11)
  store %struct.vio_disk_desc* %12, %struct.vio_disk_desc** %7, align 8
  %13 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %14 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %13, i32 0, i32 2
  %15 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %15, i64 %17
  store %struct.vdc_req_entry* %18, %struct.vdc_req_entry** %8, align 8
  %19 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %20 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VIO_DESC_DONE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %93

29:                                               ; preds = %3
  %30 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %31 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %35 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %38 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ldc_unmap(i32 %33, i32 %36, i32 %39)
  %41 = load i64, i64* @VIO_DESC_FREE, align 8
  %42 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %43 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  %47 = load i32, i32* @VDC_TX_RING_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = load %struct.vio_dring_state*, %struct.vio_dring_state** %5, align 8
  %51 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %8, align 8
  %53 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %52, i32 0, i32 0
  %54 = load %struct.request*, %struct.request** %53, align 8
  store %struct.request* %54, %struct.request** %9, align 8
  %55 = load %struct.request*, %struct.request** %9, align 8
  %56 = icmp eq %struct.request* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  %58 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %59 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %60 = call i32 @vdc_end_special(%struct.vdc_port* %58, %struct.vio_disk_desc* %59)
  br label %93

61:                                               ; preds = %29
  %62 = load %struct.vdc_req_entry*, %struct.vdc_req_entry** %8, align 8
  %63 = getelementptr inbounds %struct.vdc_req_entry, %struct.vdc_req_entry* %62, i32 0, i32 0
  store %struct.request* null, %struct.request** %63, align 8
  %64 = load %struct.request*, %struct.request** %9, align 8
  %65 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %66 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  %75 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %7, align 8
  %76 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @__blk_end_request(%struct.request* %64, i32 %74, i32 %77)
  %79 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %80 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @blk_queue_stopped(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %88 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @blk_start_queue(i32 %91)
  br label %93

93:                                               ; preds = %28, %57, %86, %73
  ret void
}

declare dso_local %struct.vio_disk_desc* @vio_dring_entry(%struct.vio_dring_state*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ldc_unmap(i32, i32, i32) #1

declare dso_local i32 @vdc_end_special(%struct.vdc_port*, %struct.vio_disk_desc*) #1

declare dso_local i32 @__blk_end_request(%struct.request*, i32, i32) #1

declare dso_local i64 @blk_queue_stopped(i32) #1

declare dso_local i32 @blk_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
