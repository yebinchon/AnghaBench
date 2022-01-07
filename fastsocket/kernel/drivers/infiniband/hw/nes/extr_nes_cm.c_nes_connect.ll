; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.nes_cm_node* (%struct.TYPE_21__*, %struct.nes_vnic*, i32, i8*, %struct.nes_cm_info*)* }
%struct.nes_cm_node = type { i32, %struct.nes_qp* }
%struct.nes_qp = type { i32, i32, %struct.TYPE_12__, %struct.nes_cm_node*, %struct.TYPE_14__*, %struct.iw_cm_id*, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, %struct.TYPE_19__, i32 (%struct.iw_cm_id*)*, %struct.TYPE_17__, %struct.nes_qp*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.nes_vnic = type { i64, %struct.nes_device* }
%struct.nes_device = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.nes_cm_info = type { i32, %struct.iw_cm_id*, i8*, i8*, i8*, i8* }
%struct.iw_cm_conn_param = type { i32, i64, i64, i32 }
%struct.ib_qp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"QP%u, current IP = 0x%08X, Destination IP = 0x%08X:0x%04X, local = 0x%08X:0x%04X.\0A\00", align 1
@cm_connects = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"requested ord = 0x%08X.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"mpa private data len =%u\0A\00", align 1
@NES_MANAGE_APBVT_ADD = common dso_local global i32 0, align 4
@NES_CM_IWARP_CONN_TYPE = common dso_local global i32 0, align 4
@g_cm_core = common dso_local global %struct.TYPE_21__* null, align 8
@NES_MANAGE_APBVT_DEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_connect(%struct.iw_cm_id* %0, %struct.iw_cm_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.iw_cm_conn_param*, align 8
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.nes_qp*, align 8
  %8 = alloca %struct.nes_vnic*, align 8
  %9 = alloca %struct.nes_device*, align 8
  %10 = alloca %struct.nes_cm_node*, align 8
  %11 = alloca %struct.nes_cm_info, align 8
  %12 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store %struct.iw_cm_conn_param* %1, %struct.iw_cm_conn_param** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %14 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %17 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ib_qp* @nes_get_qp(i32 %15, i32 %18)
  store %struct.ib_qp* %19, %struct.ib_qp** %6, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %21 = icmp ne %struct.ib_qp* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %268

25:                                               ; preds = %2
  %26 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %27 = call %struct.nes_qp* @to_nesqp(%struct.ib_qp* %26)
  store %struct.nes_qp* %27, %struct.nes_qp** %7, align 8
  %28 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %29 = icmp ne %struct.nes_qp* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %268

33:                                               ; preds = %25
  %34 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %35 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.nes_vnic* @to_nesvnic(i32 %37)
  store %struct.nes_vnic* %38, %struct.nes_vnic** %8, align 8
  %39 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %40 = icmp ne %struct.nes_vnic* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %268

44:                                               ; preds = %33
  %45 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %46 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %45, i32 0, i32 1
  %47 = load %struct.nes_device*, %struct.nes_device** %46, align 8
  store %struct.nes_device* %47, %struct.nes_device** %9, align 8
  %48 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %49 = icmp ne %struct.nes_device* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %268

53:                                               ; preds = %44
  %54 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %55 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %61 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %268

68:                                               ; preds = %59
  %69 = load i32, i32* @NES_DBG_CM, align 4
  %70 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %71 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %75 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ntohl(i64 %76)
  %78 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %79 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ntohl(i64 %82)
  %84 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %85 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ntohs(i32 %87)
  %89 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %90 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ntohl(i64 %93)
  %95 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %96 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ntohs(i32 %98)
  %100 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %69, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %77, i32 %83, i32 %88, i32 %94, i32 %99)
  %101 = call i32 @atomic_inc(i32* @cm_connects)
  %102 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %103 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %105 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %106 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %105, i32 0, i32 5
  store %struct.iw_cm_id* %104, %struct.iw_cm_id** %106, align 8
  %107 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %108 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %109 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %108, i32 0, i32 4
  store %struct.nes_qp* %107, %struct.nes_qp** %109, align 8
  %110 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %111 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %114 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %116 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @cpu_to_le32(i32 %118)
  %120 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %121 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %120, i32 0, i32 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %119
  store i32 %125, i32* %123, align 4
  %126 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %127 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %68
  %131 = call i32 @cpu_to_le32(i32 1)
  %132 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %133 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %132, i32 0, i32 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %130, %68
  %139 = load i32, i32* @NES_DBG_CM, align 4
  %140 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %141 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @NES_DBG_CM, align 4
  %146 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %147 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %151 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %156 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %154, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %138
  %162 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %163 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %164 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ntohs(i32 %166)
  %168 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %169 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @PCI_FUNC(i32 %172)
  %174 = load i32, i32* @NES_MANAGE_APBVT_ADD, align 4
  %175 = call i32 @nes_manage_apbvt(%struct.nes_vnic* %162, i32 %167, i32 %173, i32 %174)
  store i32 1, i32* %12, align 4
  br label %176

176:                                              ; preds = %161, %138
  %177 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %178 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @htonl(i64 %181)
  %183 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %11, i32 0, i32 5
  store i8* %182, i8** %183, align 8
  %184 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %185 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @htons(i32 %187)
  %189 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %11, i32 0, i32 4
  store i8* %188, i8** %189, align 8
  %190 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %191 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i8* @htonl(i64 %194)
  %196 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %11, i32 0, i32 3
  store i8* %195, i8** %196, align 8
  %197 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %198 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @htons(i32 %200)
  %202 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %11, i32 0, i32 2
  store i8* %201, i8** %202, align 8
  %203 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %204 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %11, i32 0, i32 1
  store %struct.iw_cm_id* %203, %struct.iw_cm_id** %204, align 8
  %205 = load i32, i32* @NES_CM_IWARP_CONN_TYPE, align 4
  %206 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %11, i32 0, i32 0
  store i32 %205, i32* %206, align 8
  %207 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %208 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %207, i32 0, i32 2
  %209 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %208, align 8
  %210 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %211 = call i32 %209(%struct.iw_cm_id* %210)
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_cm_core, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load %struct.nes_cm_node* (%struct.TYPE_21__*, %struct.nes_vnic*, i32, i8*, %struct.nes_cm_info*)*, %struct.nes_cm_node* (%struct.TYPE_21__*, %struct.nes_vnic*, i32, i8*, %struct.nes_cm_info*)** %215, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_cm_core, align 8
  %218 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %219 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %220 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %223 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i8*
  %226 = call %struct.nes_cm_node* %216(%struct.TYPE_21__* %217, %struct.nes_vnic* %218, i32 %221, i8* %225, %struct.nes_cm_info* %11)
  store %struct.nes_cm_node* %226, %struct.nes_cm_node** %10, align 8
  %227 = load %struct.nes_cm_node*, %struct.nes_cm_node** %10, align 8
  %228 = icmp ne %struct.nes_cm_node* %227, null
  br i1 %228, label %255, label %229

229:                                              ; preds = %176
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %234 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %235 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @ntohs(i32 %237)
  %239 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %240 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %239, i32 0, i32 0
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @PCI_FUNC(i32 %243)
  %245 = load i32, i32* @NES_MANAGE_APBVT_DEL, align 4
  %246 = call i32 @nes_manage_apbvt(%struct.nes_vnic* %233, i32 %238, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %232, %229
  %248 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %249 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %248, i32 0, i32 0
  %250 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %249, align 8
  %251 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %252 = call i32 %250(%struct.iw_cm_id* %251)
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %3, align 4
  br label %268

255:                                              ; preds = %176
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.nes_cm_node*, %struct.nes_cm_node** %10, align 8
  %258 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.nes_cm_node*, %struct.nes_cm_node** %10, align 8
  %260 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %261 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %260, i32 0, i32 3
  store %struct.nes_cm_node* %259, %struct.nes_cm_node** %261, align 8
  %262 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %263 = load %struct.nes_cm_node*, %struct.nes_cm_node** %10, align 8
  %264 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %263, i32 0, i32 1
  store %struct.nes_qp* %262, %struct.nes_qp** %264, align 8
  %265 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %266 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %265, i32 0, i32 2
  %267 = call i32 @nes_add_ref(%struct.TYPE_12__* %266)
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %255, %247, %65, %50, %41, %30, %22
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.ib_qp* @nes_get_qp(i32, i32) #1

declare dso_local %struct.nes_qp* @to_nesqp(%struct.ib_qp*) #1

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @nes_manage_apbvt(%struct.nes_vnic*, i32, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @nes_add_ref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
