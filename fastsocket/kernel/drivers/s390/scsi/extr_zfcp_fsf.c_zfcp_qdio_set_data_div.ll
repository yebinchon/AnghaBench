; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_qdio_set_data_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_qdio_set_data_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i32 }
%struct.zfcp_queue_req = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32)* @zfcp_qdio_set_data_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_set_data_div(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_queue_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qdio_buffer_element*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %12 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %17, align 8
  store %struct.qdio_buffer_element* %18, %struct.qdio_buffer_element** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %7, align 8
  %21 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
