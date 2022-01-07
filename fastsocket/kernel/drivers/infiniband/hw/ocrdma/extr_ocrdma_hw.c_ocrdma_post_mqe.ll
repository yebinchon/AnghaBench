; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_post_mqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_post_mqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ocrdma_mqe = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_mqe*)* @ocrdma_post_mqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_post_mqe(%struct.ocrdma_dev* %0, %struct.ocrdma_mqe* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_mqe*, align 8
  %5 = alloca %struct.ocrdma_mqe*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_mqe* %1, %struct.ocrdma_mqe** %4, align 8
  %6 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %18 = call %struct.ocrdma_mqe* @ocrdma_get_mqe(%struct.ocrdma_dev* %17)
  store %struct.ocrdma_mqe* %18, %struct.ocrdma_mqe** %5, align 8
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %4, align 8
  %25 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %28 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %4, align 8
  %29 = call i32 @ocrdma_copy_cpu_to_le32(%struct.ocrdma_mqe* %27, %struct.ocrdma_mqe* %28, i32 4)
  %30 = call i32 (...) @wmb()
  %31 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %32 = call i32 @ocrdma_mq_inc_head(%struct.ocrdma_dev* %31)
  %33 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %34 = call i32 @ocrdma_ring_mq_db(%struct.ocrdma_dev* %33)
  ret void
}

declare dso_local %struct.ocrdma_mqe* @ocrdma_get_mqe(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_copy_cpu_to_le32(%struct.ocrdma_mqe*, %struct.ocrdma_mqe*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ocrdma_mq_inc_head(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_ring_mq_db(%struct.ocrdma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
