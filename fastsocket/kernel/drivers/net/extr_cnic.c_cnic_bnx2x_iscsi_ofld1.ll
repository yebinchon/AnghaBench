; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_ofld1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_ofld1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context*, i32 }
%struct.cnic_context = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.iscsi_kwqe_conn_offload1 = type { i32 }
%struct.iscsi_kwqe_conn_offload2 = type { i32 }
%struct.iscsi_kcqe = type { i32, i32, i32, i32 }
%struct.kcqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@ISCSI_KCQE_OPCODE_OFFLOAD_CONN = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE = common dso_local global i32 0, align 4
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32, i32*)* @cnic_bnx2x_iscsi_ofld1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_iscsi_ofld1(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iscsi_kwqe_conn_offload1*, align 8
  %11 = alloca %struct.iscsi_kwqe_conn_offload2*, align 8
  %12 = alloca %struct.cnic_local*, align 8
  %13 = alloca %struct.cnic_context*, align 8
  %14 = alloca %struct.iscsi_kcqe, align 4
  %15 = alloca [1 x %struct.kcqe*], align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load %struct.cnic_local*, %struct.cnic_local** %19, align 8
  store %struct.cnic_local* %20, %struct.cnic_local** %12, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %142

28:                                               ; preds = %4
  %29 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %30 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %29, i64 0
  %31 = load %struct.kwqe*, %struct.kwqe** %30, align 8
  %32 = bitcast %struct.kwqe* %31 to %struct.iscsi_kwqe_conn_offload1*
  store %struct.iscsi_kwqe_conn_offload1* %32, %struct.iscsi_kwqe_conn_offload1** %10, align 8
  %33 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %34 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %33, i64 1
  %35 = load %struct.kwqe*, %struct.kwqe** %34, align 8
  %36 = bitcast %struct.kwqe* %35 to %struct.iscsi_kwqe_conn_offload2*
  store %struct.iscsi_kwqe_conn_offload2* %36, %struct.iscsi_kwqe_conn_offload2** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load %struct.iscsi_kwqe_conn_offload2*, %struct.iscsi_kwqe_conn_offload2** %11, align 8
  %40 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, %struct.iscsi_kwqe_conn_offload2* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %142

48:                                               ; preds = %28
  %49 = load %struct.iscsi_kwqe_conn_offload2*, %struct.iscsi_kwqe_conn_offload2** %11, align 8
  %50 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, %struct.iscsi_kwqe_conn_offload2* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 2, %51
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.iscsi_kwqe_conn_offload1*, %struct.iscsi_kwqe_conn_offload1** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, %struct.iscsi_kwqe_conn_offload1* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %142

63:                                               ; preds = %48
  %64 = call i32 @memset(%struct.iscsi_kcqe* %14, i32 0, i32 16)
  %65 = load i32, i32* @ISCSI_KCQE_OPCODE_OFFLOAD_CONN, align 4
  %66 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %14, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %14, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE, align 4
  %70 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %14, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %72 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %71, i32 0, i32 0
  %73 = load %struct.cnic_context*, %struct.cnic_context** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %73, i64 %75
  store %struct.cnic_context* %76, %struct.cnic_context** %13, align 8
  %77 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %78 = load %struct.cnic_context*, %struct.cnic_context** %13, align 8
  %79 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %78, i32 0, i32 1
  %80 = call i64 @test_bit(i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %63
  %83 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY, align 4
  %84 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %14, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  br label %135

85:                                               ; preds = %63
  %86 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %87 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %86, i32 0, i32 1
  %88 = call i64 @atomic_inc_return(i32* %87)
  %89 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %90 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %95 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %94, i32 0, i32 1
  %96 = call i32 @atomic_dec(i32* %95)
  br label %135

97:                                               ; preds = %85
  %98 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev* %98, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %105 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %104, i32 0, i32 1
  %106 = call i32 @atomic_dec(i32* %105)
  store i32 0, i32* %17, align 4
  br label %135

107:                                              ; preds = %97
  %108 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %109 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @cnic_setup_bnx2x_ctx(%struct.cnic_dev* %108, %struct.kwqe** %109, i32 %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %115, i32 %116)
  %118 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %119 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %118, i32 0, i32 1
  %120 = call i32 @atomic_dec(i32* %119)
  br label %135

121:                                              ; preds = %107
  %122 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_SUCCESS, align 4
  %123 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %14, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %125 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %126 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %125, i32 0, i32 0
  %127 = load %struct.cnic_context*, %struct.cnic_context** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %127, i64 %129
  %131 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @BNX2X_HW_CID(%struct.cnic_local* %124, i32 %132)
  %134 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %14, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %121, %114, %103, %93, %82
  %136 = bitcast %struct.iscsi_kcqe* %14 to %struct.kcqe*
  %137 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %15, i64 0, i64 0
  store %struct.kcqe* %136, %struct.kcqe** %137, align 8
  %138 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %139 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %140 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %15, i64 0, i64 0
  %141 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %138, i32 %139, %struct.kcqe** %140, i32 1)
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %135, %60, %43, %23
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @memset(%struct.iscsi_kcqe*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_setup_bnx2x_ctx(%struct.cnic_dev*, %struct.kwqe**, i32) #1

declare dso_local i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.cnic_local*, i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
