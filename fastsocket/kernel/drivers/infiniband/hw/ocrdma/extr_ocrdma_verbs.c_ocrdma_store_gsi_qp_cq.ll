; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_store_gsi_qp_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_store_gsi_qp_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i8*, i8* }
%struct.ib_qp_init_attr = type { i64, i32, i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ib_qp_init_attr*)* @ocrdma_store_gsi_qp_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_store_gsi_qp_cq(%struct.ocrdma_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %4, align 8
  %5 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %6 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IB_QPT_GSI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @get_ocrdma_cq(i32 %15)
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @get_ocrdma_cq(i32 %21)
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %10, %2
  ret void
}

declare dso_local i8* @get_ocrdma_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
