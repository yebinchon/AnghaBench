; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_av_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_av_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ocrdma_modify_qp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.ib_qp_attr = type { %struct.ib_ah_attr }
%struct.ib_ah_attr = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }
%union.ib_gid = type { i32* }

@IB_AH_GRH = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_TCLASS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLOW_LABEL_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_HOP_LMT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_FLOW_LBL_VALID = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_VLAN_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_VLAN_EN_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*)* @ocrdma_set_av_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_set_av_params(%struct.ocrdma_qp* %0, %struct.ocrdma_modify_qp* %1, %struct.ib_qp_attr* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_modify_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca %struct.ib_ah_attr*, align 8
  %8 = alloca %union.ib_gid, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_modify_qp* %1, %struct.ocrdma_modify_qp** %5, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %6, align 8
  %11 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %12 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %11, i32 0, i32 0
  store %struct.ib_ah_attr* %12, %struct.ib_ah_attr** %7, align 8
  %13 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %14 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IB_AH_GRH, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %161

20:                                               ; preds = %3
  %21 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %22 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OCRDMA_QP_PARAMS_TCLASS_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %33 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OCRDMA_QP_PARAMS_FLOW_LABEL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %44 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @OCRDMA_QP_PARAMS_HOP_LMT_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %50 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @OCRDMA_QP_PARA_FLOW_LBL_VALID, align 4
  %55 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %56 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %60 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %65 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @memcpy(i32* %63, i32* %69, i32 8)
  %71 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %72 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ocrdma_query_gid(i32* %74, i32 1, i32 %78, %union.ib_gid* %8)
  %80 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %85 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %87 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = bitcast %union.ib_gid* %8 to i32**
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i32 @memcpy(i32* %90, i32* %93, i32 8)
  %95 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %96 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %99 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %102 = call i32 @ocrdma_resolve_dgid(%struct.TYPE_7__* %97, %struct.TYPE_8__* %100, i32* %101)
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 8
  %108 = or i32 %104, %107
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 16
  %112 = or i32 %108, %111
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 24
  %116 = or i32 %112, %115
  %117 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %118 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %121 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = call i32 @ocrdma_cpu_to_le32(i32* %124, i32 8)
  %126 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %127 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @ocrdma_cpu_to_le32(i32* %130, i32 8)
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  %133 = load i32, i32* %132, align 16
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = or i32 %133, %136
  %138 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %139 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  store i32 %137, i32* %140, align 8
  %141 = call i32 @rdma_get_vlan_id(%union.ib_gid* %8)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %20
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 4096
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @OCRDMA_QP_PARAMS_VLAN_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %152 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @OCRDMA_QP_PARA_VLAN_EN_VALID, align 4
  %157 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %5, align 8
  %158 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %19, %147, %144, %20
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ocrdma_query_gid(i32*, i32, i32, %union.ib_gid*) #1

declare dso_local i32 @ocrdma_resolve_dgid(%struct.TYPE_7__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ocrdma_cpu_to_le32(i32*, i32) #1

declare dso_local i32 @rdma_get_vlan_id(%union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
