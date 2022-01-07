; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, %struct.c2_qp*, %struct.TYPE_8__, i32 (%struct.iw_cm_id*)*, i32 }
%struct.c2_qp = type { %struct.iw_cm_id*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }
%struct.c2_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp = type { i32 }
%struct.c2wr_qp_connect_req = type { i64, i32*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.c2_vq_req = type { i32 }
%union.c2wr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@C2_MAX_PRIVATE_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCWR_QP_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_llp_connect(%struct.iw_cm_id* %0, %struct.iw_cm_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.iw_cm_conn_param*, align 8
  %6 = alloca %struct.c2_dev*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.c2_qp*, align 8
  %9 = alloca %struct.c2wr_qp_connect_req*, align 8
  %10 = alloca %struct.c2_vq_req*, align 8
  %11 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store %struct.iw_cm_conn_param* %1, %struct.iw_cm_conn_param** %5, align 8
  %12 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %13 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.c2_dev* @to_c2dev(i32 %14)
  store %struct.c2_dev* %15, %struct.c2_dev** %6, align 8
  %16 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %17 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %20 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ib_qp* @c2_get_qp(i32 %18, i32 %21)
  store %struct.ib_qp* %22, %struct.ib_qp** %7, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %24 = icmp ne %struct.ib_qp* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %164

28:                                               ; preds = %2
  %29 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %30 = call %struct.c2_qp* @to_c2qp(%struct.ib_qp* %29)
  store %struct.c2_qp* %30, %struct.c2_qp** %8, align 8
  %31 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %32 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %33 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %32, i32 0, i32 1
  store %struct.c2_qp* %31, %struct.c2_qp** %33, align 8
  %34 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %35 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %34, i32 0, i32 3
  %36 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %35, align 8
  %37 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %38 = call i32 %36(%struct.iw_cm_id* %37)
  %39 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %40 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %41 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %40, i32 0, i32 0
  store %struct.iw_cm_id* %39, %struct.iw_cm_id** %41, align 8
  %42 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %43 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @C2_MAX_PRIVATE_DATA_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %149

50:                                               ; preds = %28
  %51 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %52 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %53 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %54 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %57 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @c2_qp_set_read_limits(%struct.c2_dev* %51, %struct.c2_qp* %52, i32 %55, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %149

63:                                               ; preds = %50
  %64 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %65 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.c2wr_qp_connect_req* @kmalloc(i32 %67, i32 %68)
  store %struct.c2wr_qp_connect_req* %69, %struct.c2wr_qp_connect_req** %9, align 8
  %70 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %71 = icmp ne %struct.c2wr_qp_connect_req* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %149

75:                                               ; preds = %63
  %76 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %77 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %76)
  store %struct.c2_vq_req* %77, %struct.c2_vq_req** %10, align 8
  %78 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %79 = icmp ne %struct.c2_vq_req* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %146

83:                                               ; preds = %75
  %84 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %85 = load i32, i32* @CCWR_QP_CONNECT, align 4
  %86 = call i32 @c2_wr_set_id(%struct.c2wr_qp_connect_req* %84, i32 %85)
  %87 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %88 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %91 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %94 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %96 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %99 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %101 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %106 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %108 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %112 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %114 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %83
  %118 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %119 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @cpu_to_be32(i32 %120)
  %122 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %123 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %125 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %129 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %132 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @memcpy(i32* %127, i32 %130, i32 %133)
  br label %138

135:                                              ; preds = %83
  %136 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %137 = getelementptr inbounds %struct.c2wr_qp_connect_req, %struct.c2wr_qp_connect_req* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %135, %117
  %139 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %140 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %141 = bitcast %struct.c2wr_qp_connect_req* %140 to %union.c2wr*
  %142 = call i32 @vq_send_wr(%struct.c2_dev* %139, %union.c2wr* %141)
  store i32 %142, i32* %11, align 4
  %143 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %144 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %145 = call i32 @vq_req_free(%struct.c2_dev* %143, %struct.c2_vq_req* %144)
  br label %146

146:                                              ; preds = %138, %80
  %147 = load %struct.c2wr_qp_connect_req*, %struct.c2wr_qp_connect_req** %9, align 8
  %148 = call i32 @kfree(%struct.c2wr_qp_connect_req* %147)
  br label %149

149:                                              ; preds = %146, %72, %62, %47
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %154 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %153, i32 0, i32 1
  store %struct.c2_qp* null, %struct.c2_qp** %154, align 8
  %155 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %156 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %155, i32 0, i32 0
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %156, align 8
  %157 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %158 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %157, i32 0, i32 0
  %159 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %158, align 8
  %160 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %161 = call i32 %159(%struct.iw_cm_id* %160)
  br label %162

162:                                              ; preds = %152, %149
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %25
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.ib_qp* @c2_get_qp(i32, i32) #1

declare dso_local %struct.c2_qp* @to_c2qp(%struct.ib_qp*) #1

declare dso_local i32 @c2_qp_set_read_limits(%struct.c2_dev*, %struct.c2_qp*, i32, i32) #1

declare dso_local %struct.c2wr_qp_connect_req* @kmalloc(i32, i32) #1

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_qp_connect_req*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @kfree(%struct.c2wr_qp_connect_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
