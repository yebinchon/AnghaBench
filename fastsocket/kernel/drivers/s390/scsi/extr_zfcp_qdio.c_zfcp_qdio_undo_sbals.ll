; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_undo_sbals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_undo_sbals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qdio_buffer** }
%struct.qdio_buffer = type { i32 }
%struct.zfcp_queue_req = type { i32, i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*, %struct.zfcp_queue_req*)* @zfcp_qdio_undo_sbals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_undo_sbals(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1) #0 {
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_queue_req*, align 8
  %5 = alloca %struct.qdio_buffer**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %4, align 8
  %9 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %11, align 8
  store %struct.qdio_buffer** %12, %struct.qdio_buffer*** %5, align 8
  %13 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %4, align 8
  %14 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %25 = srem i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @zfcp_qdio_zero_sbals(%struct.qdio_buffer** %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @zfcp_qdio_zero_sbals(%struct.qdio_buffer**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
