; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer_element = type { i32 }
%struct.zfcp_qdio_queue = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.qdio_buffer_element* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qdio_buffer_element* (%struct.zfcp_qdio_queue*, i32, i32)* @zfcp_qdio_sbale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qdio_buffer_element* @zfcp_qdio_sbale(%struct.zfcp_qdio_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_qdio_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zfcp_qdio_queue* %0, %struct.zfcp_qdio_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %4, align 8
  %8 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %15, i64 %17
  ret %struct.qdio_buffer_element* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
