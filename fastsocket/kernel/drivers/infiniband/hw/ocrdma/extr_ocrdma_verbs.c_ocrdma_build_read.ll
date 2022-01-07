; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32 }
%struct.ocrdma_hdr_wqe = type { i32, i32 }
%struct.ib_send_wr = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocrdma_sge = type { i32, i32, i32, i32 }

@OCRDMA_WQE_STRIDE = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_READ = common dso_local global i32 0, align 4
@OCRDMA_WQE_OPCODE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_TYPE_LKEY = common dso_local global i32 0, align 4
@OCRDMA_WQE_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*)* @ocrdma_build_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_read(%struct.ocrdma_qp* %0, %struct.ocrdma_hdr_wqe* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ocrdma_sge*, align 8
  %8 = alloca %struct.ocrdma_sge*, align 8
  %9 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_hdr_wqe* %1, %struct.ocrdma_hdr_wqe** %5, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %6, align 8
  %10 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %11 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %10, i64 1
  %12 = bitcast %struct.ocrdma_hdr_wqe* %11 to %struct.ocrdma_sge*
  store %struct.ocrdma_sge* %12, %struct.ocrdma_sge** %7, align 8
  %13 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %7, align 8
  %14 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %13, i64 1
  store %struct.ocrdma_sge* %14, %struct.ocrdma_sge** %8, align 8
  %15 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = add i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %24 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %8, align 8
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %29 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocrdma_build_sges(%struct.ocrdma_hdr_wqe* %23, %struct.ocrdma_sge* %24, i32 %27, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %34 = sdiv i32 %32, %33
  %35 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %38 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @OCRDMA_READ, align 4
  %42 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %45 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @OCRDMA_TYPE_LKEY, align 4
  %49 = load i32, i32* @OCRDMA_WQE_TYPE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %52 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %7, align 8
  %61 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @upper_32_bits(i32 %66)
  %68 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %7, align 8
  %69 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %7, align 8
  %76 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %78 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %7, align 8
  %81 = getelementptr inbounds %struct.ocrdma_sge, %struct.ocrdma_sge* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  ret void
}

declare dso_local i32 @ocrdma_build_sges(%struct.ocrdma_hdr_wqe*, %struct.ocrdma_sge*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
