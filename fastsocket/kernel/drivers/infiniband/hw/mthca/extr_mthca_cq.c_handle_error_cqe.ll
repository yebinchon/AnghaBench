; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_handle_error_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_handle_error_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_cq = type { i32, i32 }
%struct.mthca_qp = type { i32 }
%struct.mthca_err_cqe = type { i32, i32, i32, i32, i32 }
%struct.ib_wc = type { i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"local QP operation err (QPN %06x, WQE @ %08x, CQN %06x, index %d)\0A\00", align 1
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_EEC_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@IB_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_RDD_VIOL_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_RD_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@IB_WC_INV_EECN_ERR = common dso_local global i32 0, align 4
@IB_WC_INV_EEC_STATE_ERR = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_cq*, %struct.mthca_qp*, i32, i32, %struct.mthca_err_cqe*, %struct.ib_wc*, i32*)* @handle_error_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_error_cqe(%struct.mthca_dev* %0, %struct.mthca_cq* %1, %struct.mthca_qp* %2, i32 %3, i32 %4, %struct.mthca_err_cqe* %5, %struct.ib_wc* %6, i32* %7) #0 {
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca %struct.mthca_cq*, align 8
  %11 = alloca %struct.mthca_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mthca_err_cqe*, align 8
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %9, align 8
  store %struct.mthca_cq* %1, %struct.mthca_cq** %10, align 8
  store %struct.mthca_qp* %2, %struct.mthca_qp** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.mthca_err_cqe* %5, %struct.mthca_err_cqe** %14, align 8
  store %struct.ib_wc* %6, %struct.ib_wc** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %20 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 138
  br i1 %22, label %23, label %43

23:                                               ; preds = %8
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %25 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %26 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %30 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = load %struct.mthca_cq*, %struct.mthca_cq** %10, align 8
  %34 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mthca_cq*, %struct.mthca_cq** %10, align 8
  %37 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mthca_dbg(%struct.mthca_dev* %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %41 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %42 = call i32 @dump_cqe(%struct.mthca_dev* %40, %struct.mthca_err_cqe* %41)
  br label %43

43:                                               ; preds = %23, %8
  %44 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %45 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %119 [
    i32 140, label %47
    i32 138, label %51
    i32 141, label %55
    i32 139, label %59
    i32 128, label %63
    i32 136, label %67
    i32 145, label %71
    i32 142, label %75
    i32 132, label %79
    i32 134, label %83
    i32 131, label %87
    i32 130, label %91
    i32 129, label %95
    i32 137, label %99
    i32 133, label %103
    i32 135, label %107
    i32 144, label %111
    i32 143, label %115
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  %49 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %123

51:                                               ; preds = %43
  %52 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %53 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %123

55:                                               ; preds = %43
  %56 = load i32, i32* @IB_WC_LOC_EEC_OP_ERR, align 4
  %57 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %123

59:                                               ; preds = %43
  %60 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %61 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %123

63:                                               ; preds = %43
  %64 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %65 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %123

67:                                               ; preds = %43
  %68 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  %69 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %123

71:                                               ; preds = %43
  %72 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  %73 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %123

75:                                               ; preds = %43
  %76 = load i32, i32* @IB_WC_LOC_ACCESS_ERR, align 4
  %77 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %123

79:                                               ; preds = %43
  %80 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  %81 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %123

83:                                               ; preds = %43
  %84 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  %85 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %86 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %123

87:                                               ; preds = %43
  %88 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  %89 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %90 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %123

91:                                               ; preds = %43
  %92 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %93 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %94 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %123

95:                                               ; preds = %43
  %96 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  %97 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %98 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %123

99:                                               ; preds = %43
  %100 = load i32, i32* @IB_WC_LOC_RDD_VIOL_ERR, align 4
  %101 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %123

103:                                              ; preds = %43
  %104 = load i32, i32* @IB_WC_REM_INV_RD_REQ_ERR, align 4
  %105 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %106 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %123

107:                                              ; preds = %43
  %108 = load i32, i32* @IB_WC_REM_ABORT_ERR, align 4
  %109 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %110 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %123

111:                                              ; preds = %43
  %112 = load i32, i32* @IB_WC_INV_EECN_ERR, align 4
  %113 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %114 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %123

115:                                              ; preds = %43
  %116 = load i32, i32* @IB_WC_INV_EEC_STATE_ERR, align 4
  %117 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %118 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %123

119:                                              ; preds = %43
  %120 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  %121 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %122 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47
  %124 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %125 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %128 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %130 = call i64 @mthca_is_memfree(%struct.mthca_dev* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %164

133:                                              ; preds = %123
  %134 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %135 = load %struct.mthca_qp*, %struct.mthca_qp** %11, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @mthca_free_err_wqe(%struct.mthca_dev* %134, %struct.mthca_qp* %135, i32 %136, i32 %137, i32* %17, i32* %18)
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @cpu_to_be32(i32 63)
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %145 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148, %133
  br label %164

152:                                              ; preds = %148, %143
  %153 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %154 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %153, i32 0, i32 3
  %155 = load i32, i32* %17, align 4
  %156 = sub nsw i32 0, %155
  %157 = call i32 @be16_add_cpu(i32* %154, i32 %156)
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %160 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.mthca_err_cqe*, %struct.mthca_err_cqe** %14, align 8
  %162 = getelementptr inbounds %struct.mthca_err_cqe, %struct.mthca_err_cqe* %161, i32 0, i32 0
  store i32 128, i32* %162, align 4
  %163 = load i32*, i32** %16, align 8
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %152, %151, %132
  ret void
}

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dump_cqe(%struct.mthca_dev*, %struct.mthca_err_cqe*) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_err_wqe(%struct.mthca_dev*, %struct.mthca_qp*, i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
