; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_init_port_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_init_port_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, %struct.TYPE_8__*, i32, %struct.ehea_adapter* }
%struct.TYPE_8__ = type { i32 }
%struct.ehea_adapter = type { i32 }
%struct.ehea_port_res = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i32, %struct.ehea_port*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.port_res_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.ehea_qp_init_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EHEA_EQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EHEA_MAX_ENTRIES_EQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"create_eq failed (eq)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"create_cq failed (cq_recv)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"create_cq failed (cq_send)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Send CQ: act_nr_cqes=%d, Recv CQ: act_nr_cqes=%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"no mem for ehea_qp_init_attr\00", align 1
@EHEA_SG_SQ = common dso_local global i32 0, align 4
@EHEA_SG_RQ1 = common dso_local global i32 0, align 4
@EHEA_SG_RQ2 = common dso_local global i32 0, align 4
@EHEA_SG_RQ3 = common dso_local global i32 0, align 4
@EHEA_RQ2_THRESHOLD = common dso_local global i32 0, align 4
@EHEA_RQ3_THRESHOLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"create_qp failed\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"QP: qp_nr=%d\0A act_nr_snd_wqe=%d\0A nr_rwqe_rq1=%d\0A nr_rwqe_rq2=%d\0A nr_rwqe_rq3=%d\00", align 1
@ehea_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port*, %struct.ehea_port_res*, %struct.port_res_cfg*, i32)* @ehea_init_port_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_init_port_res(%struct.ehea_port* %0, %struct.ehea_port_res* %1, %struct.port_res_cfg* %2, i32 %3) #0 {
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca %struct.ehea_port_res*, align 8
  %7 = alloca %struct.port_res_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehea_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehea_qp_init_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.ehea_port* %0, %struct.ehea_port** %5, align 8
  store %struct.ehea_port_res* %1, %struct.ehea_port_res** %6, align 8
  store %struct.port_res_cfg* %2, %struct.port_res_cfg** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %18 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %17, i32 0, i32 3
  %19 = load %struct.ehea_adapter*, %struct.ehea_adapter** %18, align 8
  store %struct.ehea_adapter* %19, %struct.ehea_adapter** %9, align 8
  %20 = load i32, i32* @EHEA_EQ, align 4
  store i32 %20, i32* %10, align 4
  store %struct.ehea_qp_init_attr* null, %struct.ehea_qp_init_attr** %11, align 8
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %24 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %23, i32 0, i32 16
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %27 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %26, i32 0, i32 15
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  %29 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %30 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %29, i32 0, i32 14
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %14, align 8
  %32 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %33 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %32, i32 0, i32 13
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %16, align 8
  %35 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %36 = call i32 @memset(%struct.ehea_port_res* %35, i32 0, i32 104)
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %39 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %38, i32 0, i32 16
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %42 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %45 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %44, i32 0, i32 14
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %48 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %47, i32 0, i32 13
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %50 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %51 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %50, i32 0, i32 11
  store %struct.ehea_port* %49, %struct.ehea_port** %51, align 8
  %52 = load %struct.ehea_adapter*, %struct.ehea_adapter** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @EHEA_MAX_ENTRIES_EQ, align 4
  %55 = call %struct.TYPE_10__* @ehea_create_eq(%struct.ehea_adapter* %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %57 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %56, i32 0, i32 2
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %59 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %4
  %63 = call i32 @ehea_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %323

64:                                               ; preds = %4
  %65 = load %struct.ehea_adapter*, %struct.ehea_adapter** %9, align 8
  %66 = load %struct.port_res_cfg*, %struct.port_res_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.port_res_cfg, %struct.port_res_cfg* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %70 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %75 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @ehea_create_cq(%struct.ehea_adapter* %65, i32 %68, i32 %73, i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_11__*
  %79 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %80 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %79, i32 0, i32 3
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %80, align 8
  %81 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %82 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %81, i32 0, i32 3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = icmp ne %struct.TYPE_11__* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %64
  %86 = call i32 @ehea_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %323

87:                                               ; preds = %64
  %88 = load %struct.ehea_adapter*, %struct.ehea_adapter** %9, align 8
  %89 = load %struct.port_res_cfg*, %struct.port_res_cfg** %7, align 8
  %90 = getelementptr inbounds %struct.port_res_cfg, %struct.port_res_cfg* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %93 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %98 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @ehea_create_cq(%struct.ehea_adapter* %88, i32 %91, i32 %96, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_11__*
  %102 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %103 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %102, i32 0, i32 4
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %103, align 8
  %104 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %105 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %104, i32 0, i32 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %87
  %109 = call i32 @ehea_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %323

110:                                              ; preds = %87
  %111 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %112 = call i64 @netif_msg_ifup(%struct.ehea_port* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %116 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %115, i32 0, i32 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %122 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %121, i32 0, i32 3
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i32, i32, ...) @ehea_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %126)
  br label %128

128:                                              ; preds = %114, %110
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call %struct.ehea_qp_init_attr* @kzalloc(i32 92, i32 %129)
  store %struct.ehea_qp_init_attr* %130, %struct.ehea_qp_init_attr** %11, align 8
  %131 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %132 = icmp ne %struct.ehea_qp_init_attr* %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %12, align 4
  %136 = call i32 @ehea_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %323

137:                                              ; preds = %128
  %138 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %139 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  %140 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %141 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %143 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %142, i32 0, i32 2
  store i32 3, i32* %143, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %146 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.port_res_cfg*, %struct.port_res_cfg** %7, align 8
  %148 = getelementptr inbounds %struct.port_res_cfg, %struct.port_res_cfg* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %151 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %150, i32 0, i32 22
  store i32 %149, i32* %151, align 4
  %152 = load %struct.port_res_cfg*, %struct.port_res_cfg** %7, align 8
  %153 = getelementptr inbounds %struct.port_res_cfg, %struct.port_res_cfg* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %156 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %155, i32 0, i32 21
  store i32 %154, i32* %156, align 4
  %157 = load %struct.port_res_cfg*, %struct.port_res_cfg** %7, align 8
  %158 = getelementptr inbounds %struct.port_res_cfg, %struct.port_res_cfg* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %161 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %160, i32 0, i32 20
  store i32 %159, i32* %161, align 4
  %162 = load %struct.port_res_cfg*, %struct.port_res_cfg** %7, align 8
  %163 = getelementptr inbounds %struct.port_res_cfg, %struct.port_res_cfg* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %166 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %165, i32 0, i32 19
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @EHEA_SG_SQ, align 4
  %168 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %169 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %168, i32 0, i32 18
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @EHEA_SG_RQ1, align 4
  %171 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %172 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %171, i32 0, i32 17
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @EHEA_SG_RQ2, align 4
  %174 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %175 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %174, i32 0, i32 16
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @EHEA_SG_RQ3, align 4
  %177 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %178 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %177, i32 0, i32 15
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @EHEA_RQ2_THRESHOLD, align 4
  %180 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %181 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %180, i32 0, i32 14
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @EHEA_RQ3_THRESHOLD, align 4
  %183 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %184 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %183, i32 0, i32 13
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %186 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %189 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %188, i32 0, i32 12
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %191 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %190, i32 0, i32 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %196 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %195, i32 0, i32 11
  store i32 %194, i32* %196, align 4
  %197 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %198 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %197, i32 0, i32 3
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %203 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 4
  %204 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %205 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %204, i32 0, i32 1
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %210 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ehea_adapter*, %struct.ehea_adapter** %9, align 8
  %212 = load %struct.ehea_adapter*, %struct.ehea_adapter** %9, align 8
  %213 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %216 = call i32 @ehea_create_qp(%struct.ehea_adapter* %211, i32 %214, %struct.ehea_qp_init_attr* %215)
  %217 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %218 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %220 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %137
  %224 = call i32 @ehea_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %225 = load i32, i32* @EIO, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %12, align 4
  br label %323

227:                                              ; preds = %137
  %228 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %229 = call i64 @netif_msg_ifup(%struct.ehea_port* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %227
  %232 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %233 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %236 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %239 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %242 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %245 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, i32, i32, ...) @ehea_info(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 %234, i32 %237, i32 %240, i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %231, %227
  %249 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %250 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  %253 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %254 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %256 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %255, i32 0, i32 9
  %257 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %258 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @ehea_init_q_skba(%struct.TYPE_9__* %256, i32 %259)
  store i32 %260, i32* %12, align 4
  %261 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %262 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %261, i32 0, i32 8
  %263 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %264 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  %267 = call i32 @ehea_init_q_skba(%struct.TYPE_9__* %262, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %12, align 4
  %270 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %271 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %270, i32 0, i32 7
  %272 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %273 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  %276 = call i32 @ehea_init_q_skba(%struct.TYPE_9__* %271, i32 %275)
  %277 = load i32, i32* %12, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %12, align 4
  %279 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %280 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %279, i32 0, i32 6
  %281 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %282 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1
  %285 = call i32 @ehea_init_q_skba(%struct.TYPE_9__* %280, i32 %284)
  %286 = load i32, i32* %12, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %248
  br label %323

291:                                              ; preds = %248
  %292 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %293 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = sdiv i32 %294, 10
  %296 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %297 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  %298 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %299 = call i64 @ehea_gen_smrs(%struct.ehea_port_res* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %291
  %302 = load i32, i32* @EIO, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %12, align 4
  br label %323

304:                                              ; preds = %291
  %305 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %306 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %305, i32 0, i32 12
  %307 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %308 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %309, 1
  %311 = call i32 @atomic_set(i32* %306, i32 %310)
  %312 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %313 = call i32 @kfree(%struct.ehea_qp_init_attr* %312)
  %314 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %315 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %314, i32 0, i32 11
  %316 = load %struct.ehea_port*, %struct.ehea_port** %315, align 8
  %317 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %320 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %319, i32 0, i32 10
  %321 = load i32, i32* @ehea_poll, align 4
  %322 = call i32 @netif_napi_add(i32 %318, i32* %320, i32 %321, i32 64)
  store i32 0, i32* %12, align 4
  br label %362

323:                                              ; preds = %301, %290, %223, %133, %108, %85, %62
  %324 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %11, align 8
  %325 = call i32 @kfree(%struct.ehea_qp_init_attr* %324)
  %326 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %327 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %326, i32 0, i32 9
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @vfree(i32 %329)
  %331 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %332 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %331, i32 0, i32 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @vfree(i32 %334)
  %336 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %337 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %336, i32 0, i32 7
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @vfree(i32 %339)
  %341 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %342 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @vfree(i32 %344)
  %346 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %347 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @ehea_destroy_qp(i32 %348)
  %350 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %351 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %350, i32 0, i32 4
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %351, align 8
  %353 = call i32 @ehea_destroy_cq(%struct.TYPE_11__* %352)
  %354 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %355 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %354, i32 0, i32 3
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %355, align 8
  %357 = call i32 @ehea_destroy_cq(%struct.TYPE_11__* %356)
  %358 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %359 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %358, i32 0, i32 2
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = call i32 @ehea_destroy_eq(%struct.TYPE_10__* %360)
  br label %362

362:                                              ; preds = %323, %304
  %363 = load i32, i32* %12, align 4
  ret i32 %363
}

declare dso_local i32 @memset(%struct.ehea_port_res*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ehea_create_eq(%struct.ehea_adapter*, i32, i32, i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i8* @ehea_create_cq(%struct.ehea_adapter*, i32, i32, i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.ehea_port*) #1

declare dso_local i32 @ehea_info(i8*, i32, i32, ...) #1

declare dso_local %struct.ehea_qp_init_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_create_qp(%struct.ehea_adapter*, i32, %struct.ehea_qp_init_attr*) #1

declare dso_local i32 @ehea_init_q_skba(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ehea_gen_smrs(%struct.ehea_port_res*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ehea_qp_init_attr*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @ehea_destroy_qp(i32) #1

declare dso_local i32 @ehea_destroy_cq(%struct.TYPE_11__*) #1

declare dso_local i32 @ehea_destroy_eq(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
