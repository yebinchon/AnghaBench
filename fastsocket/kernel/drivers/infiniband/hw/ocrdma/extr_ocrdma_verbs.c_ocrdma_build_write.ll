; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32 }
%struct.ocrdma_hdr_wqe = type { i32 }
%struct.ib_send_wr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocrdma_sge = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*)* @ocrdma_build_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_build_write(%struct.ocrdma_qp* %0, %struct.ocrdma_hdr_wqe* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_sge*, align 8
  %10 = alloca %struct.ocrdma_sge*, align 8
  %11 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %5, align 8
  store %struct.ocrdma_hdr_wqe* %1, %struct.ocrdma_hdr_wqe** %6, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %7, align 8
  %12 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %6, align 8
  %13 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %12, i64 1
  %14 = bitcast %struct.ocrdma_hdr_wqe* %13 to %struct.ocrdma_sge*
  store %struct.ocrdma_sge* %14, %struct.ocrdma_sge** %9, align 8
  %15 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %9, align 8
  %16 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %15, i64 1
  store %struct.ocrdma_sge* %16, %struct.ocrdma_sge** %10, align 8
  store i32 20, i32* %11, align 4
  %17 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %18 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %6, align 8
  %19 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %10, align 8
  %20 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @ocrdma_build_inline_sges(%struct.ocrdma_qp* %17, %struct.ocrdma_hdr_wqe* %18, %struct.ocrdma_sge* %19, %struct.ib_send_wr* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %29 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %9, align 8
  %34 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %36 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %9, align 8
  %42 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %9, align 8
  %49 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %6, align 8
  %51 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %9, align 8
  %54 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %27, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ocrdma_build_inline_sges(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ocrdma_sge*, %struct.ib_send_wr*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
