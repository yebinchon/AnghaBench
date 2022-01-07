; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_def.h_zfcp_qdio_sbal_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_def.h_zfcp_qdio_sbal_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_queue_req = type { i32, i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32)* @zfcp_qdio_sbal_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_sbal_limit(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_queue_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @min(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %5, align 8
  %16 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %22 = srem i32 %20, %21
  %23 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %5, align 8
  %24 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
