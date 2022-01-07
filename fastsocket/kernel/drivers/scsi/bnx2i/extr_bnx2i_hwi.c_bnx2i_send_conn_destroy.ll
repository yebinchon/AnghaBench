; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.bnx2i_endpoint = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_kwqe_conn_destroy = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISCSI_KWQE_OPCODE_DESTROY_CONN = common dso_local global i32 0, align 4
@ISCSI_KWQE_LAYER_CODE = common dso_local global i32 0, align 4
@ISCSI_KWQE_HEADER_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_conn_destroy(%struct.bnx2i_hba* %0, %struct.bnx2i_endpoint* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.bnx2i_endpoint*, align 8
  %5 = alloca [2 x %struct.kwqe*], align 16
  %6 = alloca %struct.iscsi_kwqe_conn_destroy, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.bnx2i_endpoint* %1, %struct.bnx2i_endpoint** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 @memset(%struct.iscsi_kwqe_conn_destroy* %6, i32 0, i32 24)
  %11 = load i32, i32* @ISCSI_KWQE_OPCODE_DESTROY_CONN, align 4
  %12 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @ISCSI_KWQE_LAYER_CODE, align 4
  %15 = load i32, i32* @ISCSI_KWQE_HEADER_LAYER_CODE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %20 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %19, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 7
  %36 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.iscsi_kwqe_conn_destroy, %struct.iscsi_kwqe_conn_destroy* %6, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = bitcast %struct.iscsi_kwqe_conn_destroy* %6 to %struct.kwqe*
  %43 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %5, i64 0, i64 0
  store %struct.kwqe* %42, %struct.kwqe** %43, align 16
  %44 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %37
  %49 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_6__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_6__*, %struct.kwqe**, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_6__*, %struct.kwqe**, i32)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_6__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_6__*, %struct.kwqe**, i32)** %59, align 8
  %61 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %62 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %5, i64 0, i64 0
  %65 = call i32 %60(%struct.TYPE_6__* %63, %struct.kwqe** %64, i32 1)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %55, %48, %37
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.iscsi_kwqe_conn_destroy*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
