; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cm.c_c2_llp_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, %struct.c2_qp*, i32 (%struct.iw_cm_id*)*, i32 }
%struct.c2_qp = type { %struct.iw_cm_id*, i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }
%struct.c2_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_qp = type { i32 }
%struct.c2wr_cr_accept_req = type { i64, i32*, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.c2_vq_req = type { i64, i32, %struct.iw_cm_id*, %struct.c2_qp* }
%struct.c2wr_cr_accept_rep = type { i32 }
%union.c2wr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IW_CM_EVENT_ESTABLISHED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CCWR_CR_ACCEPT = common dso_local global i32 0, align 4
@C2_MAX_PRIVATE_DATA_SIZE = common dso_local global i32 0, align 4
@C2_QP_STATE_RTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_llp_accept(%struct.iw_cm_id* %0, %struct.iw_cm_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.iw_cm_conn_param*, align 8
  %6 = alloca %struct.c2_dev*, align 8
  %7 = alloca %struct.c2_qp*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca %struct.c2wr_cr_accept_req*, align 8
  %10 = alloca %struct.c2_vq_req*, align 8
  %11 = alloca %struct.c2wr_cr_accept_rep*, align 8
  %12 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store %struct.iw_cm_conn_param* %1, %struct.iw_cm_conn_param** %5, align 8
  %13 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %14 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.c2_dev* @to_c2dev(i32 %15)
  store %struct.c2_dev* %16, %struct.c2_dev** %6, align 8
  %17 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %18 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %21 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ib_qp* @c2_get_qp(i32 %19, i32 %22)
  store %struct.ib_qp* %23, %struct.ib_qp** %8, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %25 = icmp ne %struct.ib_qp* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %211

29:                                               ; preds = %2
  %30 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %31 = call %struct.c2_qp* @to_c2qp(%struct.ib_qp* %30)
  store %struct.c2_qp* %31, %struct.c2_qp** %7, align 8
  %32 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %33 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %34 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %35 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %38 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @c2_qp_set_read_limits(%struct.c2_dev* %32, %struct.c2_qp* %33, i32 %36, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %196

44:                                               ; preds = %29
  %45 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %46 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %45)
  store %struct.c2_vq_req* %46, %struct.c2_vq_req** %10, align 8
  %47 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %48 = icmp ne %struct.c2_vq_req* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %196

52:                                               ; preds = %44
  %53 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %54 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %55 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %54, i32 0, i32 3
  store %struct.c2_qp* %53, %struct.c2_qp** %55, align 8
  %56 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %57 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %58 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %57, i32 0, i32 2
  store %struct.iw_cm_id* %56, %struct.iw_cm_id** %58, align 8
  %59 = load i32, i32* @IW_CM_EVENT_ESTABLISHED, align 4
  %60 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %61 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %63 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.c2wr_cr_accept_req* @kmalloc(i32 %65, i32 %66)
  store %struct.c2wr_cr_accept_req* %67, %struct.c2wr_cr_accept_req** %9, align 8
  %68 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %69 = icmp ne %struct.c2wr_cr_accept_req* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %52
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %190

73:                                               ; preds = %52
  %74 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %75 = load i32, i32* @CCWR_CR_ACCEPT, align 4
  %76 = call i32 @c2_wr_set_id(%struct.c2wr_cr_accept_req* %74, i32 %75)
  %77 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %78 = ptrtoint %struct.c2_vq_req* %77 to i64
  %79 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %80 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %83 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %86 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %88 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %87, i32 0, i32 1
  %89 = load %struct.c2_qp*, %struct.c2_qp** %88, align 8
  %90 = ptrtoint %struct.c2_qp* %89 to i64
  %91 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %92 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %94 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %97 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %99 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %100 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %99, i32 0, i32 1
  store %struct.c2_qp* %98, %struct.c2_qp** %100, align 8
  %101 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %102 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %101, i32 0, i32 2
  %103 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %102, align 8
  %104 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %105 = call i32 %103(%struct.iw_cm_id* %104)
  %106 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %107 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %108 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %107, i32 0, i32 0
  store %struct.iw_cm_id* %106, %struct.iw_cm_id** %108, align 8
  %109 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %110 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %111 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %110, i32 0, i32 1
  store %struct.c2_qp* %109, %struct.c2_qp** %111, align 8
  %112 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %113 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @C2_MAX_PRIVATE_DATA_SIZE, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %73
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %190

120:                                              ; preds = %73
  %121 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %122 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %127 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @cpu_to_be32(i32 %128)
  %130 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %131 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %133 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %137 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %140 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memcpy(i32* %135, i32 %138, i32 %141)
  br label %146

143:                                              ; preds = %120
  %144 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %145 = getelementptr inbounds %struct.c2wr_cr_accept_req, %struct.c2wr_cr_accept_req* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %125
  %147 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %148 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %149 = call i32 @vq_req_get(%struct.c2_dev* %147, %struct.c2_vq_req* %148)
  %150 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %151 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %152 = bitcast %struct.c2wr_cr_accept_req* %151 to %union.c2wr*
  %153 = call i32 @vq_send_wr(%struct.c2_dev* %150, %union.c2wr* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %158 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %159 = call i32 @vq_req_put(%struct.c2_dev* %157, %struct.c2_vq_req* %158)
  br label %190

160:                                              ; preds = %146
  %161 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %162 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %163 = call i32 @vq_wait_for_reply(%struct.c2_dev* %161, %struct.c2_vq_req* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %190

167:                                              ; preds = %160
  %168 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %169 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.c2wr_cr_accept_rep*
  store %struct.c2wr_cr_accept_rep* %171, %struct.c2wr_cr_accept_rep** %11, align 8
  %172 = load %struct.c2wr_cr_accept_rep*, %struct.c2wr_cr_accept_rep** %11, align 8
  %173 = icmp ne %struct.c2wr_cr_accept_rep* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %12, align 4
  br label %190

177:                                              ; preds = %167
  %178 = load %struct.c2wr_cr_accept_rep*, %struct.c2wr_cr_accept_rep** %11, align 8
  %179 = call i32 @c2_errno(%struct.c2wr_cr_accept_rep* %178)
  store i32 %179, i32* %12, align 4
  %180 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %181 = load %struct.c2wr_cr_accept_rep*, %struct.c2wr_cr_accept_rep** %11, align 8
  %182 = call i32 @vq_repbuf_free(%struct.c2_dev* %180, %struct.c2wr_cr_accept_rep* %181)
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %177
  %186 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %187 = load i32, i32* @C2_QP_STATE_RTS, align 4
  %188 = call i32 @c2_set_qp_state(%struct.c2_qp* %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %177
  br label %190

190:                                              ; preds = %189, %174, %166, %156, %117, %70
  %191 = load %struct.c2wr_cr_accept_req*, %struct.c2wr_cr_accept_req** %9, align 8
  %192 = call i32 @kfree(%struct.c2wr_cr_accept_req* %191)
  %193 = load %struct.c2_dev*, %struct.c2_dev** %6, align 8
  %194 = load %struct.c2_vq_req*, %struct.c2_vq_req** %10, align 8
  %195 = call i32 @vq_req_free(%struct.c2_dev* %193, %struct.c2_vq_req* %194)
  br label %196

196:                                              ; preds = %190, %49, %43
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %201 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %200, i32 0, i32 1
  store %struct.c2_qp* null, %struct.c2_qp** %201, align 8
  %202 = load %struct.c2_qp*, %struct.c2_qp** %7, align 8
  %203 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %202, i32 0, i32 0
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %203, align 8
  %204 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %205 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %204, i32 0, i32 0
  %206 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %205, align 8
  %207 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %208 = call i32 %206(%struct.iw_cm_id* %207)
  br label %209

209:                                              ; preds = %199, %196
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %209, %26
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.ib_qp* @c2_get_qp(i32, i32) #1

declare dso_local %struct.c2_qp* @to_c2qp(%struct.ib_qp*) #1

declare dso_local i32 @c2_qp_set_read_limits(%struct.c2_dev*, %struct.c2_qp*, i32, i32) #1

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local %struct.c2wr_cr_accept_req* @kmalloc(i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_cr_accept_req*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_cr_accept_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_cr_accept_rep*) #1

declare dso_local i32 @c2_set_qp_state(%struct.c2_qp*, i32) #1

declare dso_local i32 @kfree(%struct.c2wr_cr_accept_req*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
