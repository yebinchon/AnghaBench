; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_kwqe_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_kwqe_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.kwqe = type { i64, i64, i64 }
%struct.kcqe = type { i64, i64, i64, i32 }
%struct.fcoe_kwqe_conn_enable_disable = type { i64, i64 }
%struct.l4_kcq = type { i64, i64, i32 }

@KWQE_LAYER_MASK = common dso_local global i64 0, align 8
@KWQE_FLAGS_LAYER_MASK_L5_FCOE = common dso_local global i64 0, align 8
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@FCOE_KWQE_OPCODE_DISABLE_CONN = common dso_local global i64 0, align 8
@FCOE_KCQE_OPCODE_DISABLE_CONN = common dso_local global i64 0, align 8
@FCOE_KWQE_OPCODE_DESTROY = common dso_local global i64 0, align 8
@FCOE_KCQE_OPCODE_DESTROY_FUNC = common dso_local global i64 0, align 8
@KCQE_FLAGS_OPCODE_SHIFT = common dso_local global i64 0, align 8
@KCQE_FLAGS_LAYER_MASK_L5_FCOE = common dso_local global i64 0, align 8
@FCOE_KCQE_COMPLETION_STATUS_PARITY_ERROR = common dso_local global i32 0, align 4
@KWQE_FLAGS_LAYER_MASK_L5_ISCSI = common dso_local global i64 0, align 8
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@ISCSI_KWQE_OPCODE_UPDATE_CONN = common dso_local global i64 0, align 8
@KCQE_FLAGS_LAYER_MASK_L5_ISCSI = common dso_local global i64 0, align 8
@ISCSI_KCQE_COMPLETION_STATUS_PARITY_ERR = common dso_local global i32 0, align 4
@KWQE_FLAGS_LAYER_MASK_L4 = common dso_local global i64 0, align 8
@CNIC_ULP_L4 = common dso_local global i32 0, align 4
@L4_KWQE_OPCODE_VALUE_CONNECT1 = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE = common dso_local global i64 0, align 8
@L4_KWQE_OPCODE_VALUE_RESET = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_RESET_COMP = common dso_local global i64 0, align 8
@L4_KWQE_OPCODE_VALUE_CLOSE = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_CLOSE_COMP = common dso_local global i64 0, align 8
@KCQE_FLAGS_LAYER_MASK_L4 = common dso_local global i64 0, align 8
@L4_KCQE_COMPLETION_STATUS_PARITY_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_kwqe_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_bnx2x_kwqe_err(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.kcqe, align 8
  %7 = alloca [1 x %struct.kcqe*], align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fcoe_kwqe_conn_enable_disable*, align 8
  %15 = alloca %struct.l4_kcq*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %17 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %16, i32 0, i32 0
  %18 = load %struct.cnic_local*, %struct.cnic_local** %17, align 8
  store %struct.cnic_local* %18, %struct.cnic_local** %5, align 8
  %19 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %20 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @KWQE_OPCODE(i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %24 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KWQE_LAYER_MASK, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %29 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = call i32 @memset(%struct.kcqe* %6, i32 0, i32 32)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @KWQE_FLAGS_LAYER_MASK_L5_FCOE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %2
  store i64 0, i64* %13, align 8
  %36 = load i32, i32* @CNIC_ULP_FCOE, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @FCOE_KWQE_OPCODE_DISABLE_CONN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %42 = bitcast %struct.kwqe* %41 to %struct.fcoe_kwqe_conn_enable_disable*
  store %struct.fcoe_kwqe_conn_enable_disable* %42, %struct.fcoe_kwqe_conn_enable_disable** %14, align 8
  %43 = load i64, i64* @FCOE_KCQE_OPCODE_DISABLE_CONN, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.fcoe_kwqe_conn_enable_disable*, %struct.fcoe_kwqe_conn_enable_disable** %14, align 8
  %45 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load %struct.fcoe_kwqe_conn_enable_disable*, %struct.fcoe_kwqe_conn_enable_disable** %14, align 8
  %48 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  br label %58

50:                                               ; preds = %35
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @FCOE_KWQE_OPCODE_DESTROY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @FCOE_KCQE_OPCODE_DESTROY_FUNC, align 8
  store i64 %55, i64* %11, align 8
  br label %57

56:                                               ; preds = %50
  br label %160

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @KCQE_FLAGS_OPCODE_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L5_FCOE, align 8
  %64 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* @FCOE_KCQE_COMPLETION_STATUS_PARITY_ERROR, align 4
  %68 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  br label %154

73:                                               ; preds = %2
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @KWQE_FLAGS_LAYER_MASK_L5_ISCSI, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @ISCSI_KWQE_OPCODE_UPDATE_CONN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %84 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, 16
  %89 = load i64, i64* @KCQE_FLAGS_OPCODE_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L5_ISCSI, align 8
  %93 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = or i64 %94, %92
  store i64 %95, i64* %93, align 8
  %96 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_PARITY_ERR, align 4
  %97 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 3
  store i32 %96, i32* %97, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 2
  store i64 %98, i64* %99, align 8
  %100 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @BNX2X_SW_CID(i64 %101)
  %103 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 1
  %104 = call i32 @cnic_get_l5_cid(%struct.cnic_local* %100, i32 %102, i64* %103)
  br label %153

105:                                              ; preds = %73
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @KWQE_FLAGS_LAYER_MASK_L4, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %151

109:                                              ; preds = %105
  %110 = bitcast %struct.kcqe* %6 to %struct.l4_kcq*
  store %struct.l4_kcq* %110, %struct.l4_kcq** %15, align 8
  %111 = load i32, i32* @CNIC_ULP_L4, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @L4_KWQE_OPCODE_VALUE_CONNECT1, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE, align 8
  store i64 %116, i64* %11, align 8
  br label %132

117:                                              ; preds = %109
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @L4_KWQE_OPCODE_VALUE_RESET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i64, i64* @L4_KCQE_OPCODE_VALUE_RESET_COMP, align 8
  store i64 %122, i64* %11, align 8
  br label %131

123:                                              ; preds = %117
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @L4_KWQE_OPCODE_VALUE_CLOSE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* @L4_KCQE_OPCODE_VALUE_CLOSE_COMP, align 8
  store i64 %128, i64* %11, align 8
  br label %130

129:                                              ; preds = %123
  br label %160

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130, %121
  br label %132

132:                                              ; preds = %131, %115
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @KCQE_FLAGS_OPCODE_SHIFT, align 8
  %135 = shl i64 %133, %134
  %136 = load i64, i64* @KCQE_FLAGS_LAYER_MASK_L4, align 8
  %137 = or i64 %135, %136
  %138 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %6, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = load i32, i32* @L4_KCQE_COMPLETION_STATUS_PARITY_ERROR, align 4
  %140 = load %struct.l4_kcq*, %struct.l4_kcq** %15, align 8
  %141 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load %struct.l4_kcq*, %struct.l4_kcq** %15, align 8
  %144 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @BNX2X_SW_CID(i64 %146)
  %148 = load %struct.l4_kcq*, %struct.l4_kcq** %15, align 8
  %149 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %148, i32 0, i32 0
  %150 = call i32 @cnic_get_l5_cid(%struct.cnic_local* %145, i32 %147, i64* %149)
  br label %152

151:                                              ; preds = %105
  br label %160

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %152, %86
  br label %154

154:                                              ; preds = %153, %58
  %155 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %7, i64 0, i64 0
  store %struct.kcqe* %6, %struct.kcqe** %155, align 8
  %156 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %157 = load i32, i32* %12, align 4
  %158 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %7, i64 0, i64 0
  %159 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %156, i32 %157, %struct.kcqe** %158, i32 1)
  br label %160

160:                                              ; preds = %154, %151, %129, %56
  ret void
}

declare dso_local i64 @KWQE_OPCODE(i64) #1

declare dso_local i32 @memset(%struct.kcqe*, i32, i32) #1

declare dso_local i32 @cnic_get_l5_cid(%struct.cnic_local*, i32, i64*) #1

declare dso_local i32 @BNX2X_SW_CID(i64) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
