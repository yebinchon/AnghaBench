; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rpa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { i32 }
%struct.TYPE_18__ = type { i32* (%struct.TYPE_25__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.ct_fdmi_port_attr = type { %struct.TYPE_24__, i8*, i8* }
%struct.TYPE_24__ = type { i32*, i8*, i8*, i32, i8*, i8* }
%struct.init_cb_24xx = type { i32 }

@RPA_RSP_SIZE = common dso_local global i32 0, align 4
@RPA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@FDMI_PORT_ATTR_COUNT = common dso_local global i32 0, align 4
@FDMI_PORT_FC4_TYPES = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"FC4_TYPES=%02x %02x.\0A\00", align 1
@FDMI_PORT_SUPPORT_SPEED = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_10GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_1GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_2GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_4GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_8GB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Supported_Speed=%x.\0A\00", align 1
@FDMI_PORT_CURRENT_SPEED = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_16GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Current_Speed=%x.\0A\00", align 1
@FDMI_PORT_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Max_Frame_Size=%x.\0A\00", align 1
@FDMI_PORT_OS_DEVICE_NAME = common dso_local global i32 0, align 4
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"OS_Device_Name=%s.\0A\00", align 1
@FDMI_PORT_HOST_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"HostName=%s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"RPA portname= %02x%02x%02x%02x%02X%02x%02x%02x size=%d.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"RPA issue IOCB failed (%d).\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"RPA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"RPA exiting nornally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @qla2x00_fdmi_rpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmi_rpa(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ct_sns_req*, align 8
  %10 = alloca %struct.ct_sns_rsp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ct_fdmi_port_attr*, align 8
  %13 = alloca %struct.init_cb_24xx*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %7, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = bitcast %struct.TYPE_17__* %19 to %struct.init_cb_24xx*
  store %struct.init_cb_24xx* %20, %struct.init_cb_24xx** %13, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32* (%struct.TYPE_25__*, i32, i32)*, i32* (%struct.TYPE_25__*, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %27 = load i32, i32* @RPA_RSP_SIZE, align 4
  %28 = call i32* %25(%struct.TYPE_25__* %26, i32 0, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* @RPA_CMD, align 4
  %35 = load i32, i32* @RPA_RSP_SIZE, align 4
  %36 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(i32* %33, i32 %34, i32 %35)
  store %struct.ct_sns_req* %36, %struct.ct_sns_req** %9, align 8
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store %struct.ct_sns_rsp* %41, %struct.ct_sns_rsp** %10, align 8
  %42 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %43 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WWN_SIZE, align 4
  %51 = call i32 @memcpy(i32* %46, i32 %49, i32 %50)
  %52 = load i32, i32* @WWN_SIZE, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @FDMI_PORT_ATTR_COUNT, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i8* @__constant_cpu_to_be32(i32 %55)
  %57 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %58 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  %62 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %63 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %71, %struct.ct_fdmi_port_attr** %12, align 8
  %72 = load i32, i32* @FDMI_PORT_FC4_TYPES, align 4
  %73 = call i8* @__constant_cpu_to_be16(i32 %72)
  %74 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %75 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = call i8* @__constant_cpu_to_be16(i32 36)
  %77 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %78 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %80 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 36
  store i32 %85, i32* %5, align 4
  %86 = load i64, i64* @ql_dbg_disc, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %88 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %89 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %95 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %86, %struct.TYPE_25__* %87, i32 8249, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = bitcast i32* %104 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %105, %struct.ct_fdmi_port_attr** %12, align 8
  %106 = load i32, i32* @FDMI_PORT_SUPPORT_SPEED, align 4
  %107 = call i8* @__constant_cpu_to_be16(i32 %106)
  %108 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %109 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = call i8* @__constant_cpu_to_be16(i32 8)
  %111 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %112 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %114 = call i64 @IS_CNA_CAPABLE(%struct.qla_hw_data* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %1
  %117 = load i32, i32* @FDMI_PORT_SPEED_10GB, align 4
  %118 = call i8* @__constant_cpu_to_be32(i32 %117)
  %119 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %120 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 5
  store i8* %118, i8** %121, align 8
  br label %173

122:                                              ; preds = %1
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %124 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %128 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %133 = or i32 %131, %132
  %134 = call i8* @__constant_cpu_to_be32(i32 %133)
  %135 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %136 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 5
  store i8* %134, i8** %137, align 8
  br label %172

138:                                              ; preds = %122
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %140 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %144 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %147 = or i32 %145, %146
  %148 = call i8* @__constant_cpu_to_be32(i32 %147)
  %149 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %150 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 5
  store i8* %148, i8** %151, align 8
  br label %171

152:                                              ; preds = %138
  %153 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %154 = call i64 @IS_QLA23XX(%struct.qla_hw_data* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %158 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %159 = or i32 %157, %158
  %160 = call i8* @__constant_cpu_to_be32(i32 %159)
  %161 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %162 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 5
  store i8* %160, i8** %163, align 8
  br label %170

164:                                              ; preds = %152
  %165 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %166 = call i8* @__constant_cpu_to_be32(i32 %165)
  %167 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %168 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 5
  store i8* %166, i8** %169, align 8
  br label %170

170:                                              ; preds = %164, %156
  br label %171

171:                                              ; preds = %170, %142
  br label %172

172:                                              ; preds = %171, %126
  br label %173

173:                                              ; preds = %172, %116
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 8
  store i32 %175, i32* %5, align 4
  %176 = load i64, i64* @ql_dbg_disc, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %178 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %179 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 5
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %176, %struct.TYPE_25__* %177, i32 8250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = bitcast i32* %186 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %187, %struct.ct_fdmi_port_attr** %12, align 8
  %188 = load i32, i32* @FDMI_PORT_CURRENT_SPEED, align 4
  %189 = call i8* @__constant_cpu_to_be16(i32 %188)
  %190 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %191 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = call i8* @__constant_cpu_to_be16(i32 8)
  %193 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %194 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %196 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %234 [
    i32 131, label %198
    i32 130, label %204
    i32 129, label %210
    i32 128, label %216
    i32 133, label %222
    i32 132, label %228
  ]

198:                                              ; preds = %173
  %199 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %200 = call i8* @__constant_cpu_to_be32(i32 %199)
  %201 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %202 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 4
  store i8* %200, i8** %203, align 8
  br label %240

204:                                              ; preds = %173
  %205 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %206 = call i8* @__constant_cpu_to_be32(i32 %205)
  %207 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %208 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 4
  store i8* %206, i8** %209, align 8
  br label %240

210:                                              ; preds = %173
  %211 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %212 = call i8* @__constant_cpu_to_be32(i32 %211)
  %213 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %214 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 4
  store i8* %212, i8** %215, align 8
  br label %240

216:                                              ; preds = %173
  %217 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %218 = call i8* @__constant_cpu_to_be32(i32 %217)
  %219 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %220 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 4
  store i8* %218, i8** %221, align 8
  br label %240

222:                                              ; preds = %173
  %223 = load i32, i32* @FDMI_PORT_SPEED_10GB, align 4
  %224 = call i8* @__constant_cpu_to_be32(i32 %223)
  %225 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %226 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 4
  store i8* %224, i8** %227, align 8
  br label %240

228:                                              ; preds = %173
  %229 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %230 = call i8* @__constant_cpu_to_be32(i32 %229)
  %231 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %232 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 4
  store i8* %230, i8** %233, align 8
  br label %240

234:                                              ; preds = %173
  %235 = load i32, i32* @FDMI_PORT_SPEED_UNKNOWN, align 4
  %236 = call i8* @__constant_cpu_to_be32(i32 %235)
  %237 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %238 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 4
  store i8* %236, i8** %239, align 8
  br label %240

240:                                              ; preds = %234, %228, %222, %216, %210, %204, %198
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 8
  store i32 %242, i32* %5, align 4
  %243 = load i64, i64* @ql_dbg_disc, align 8
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %245 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %246 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %243, %struct.TYPE_25__* %244, i32 8251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %248)
  %250 = load i32*, i32** %11, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = bitcast i32* %253 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %254, %struct.ct_fdmi_port_attr** %12, align 8
  %255 = load i32, i32* @FDMI_PORT_MAX_FRAME_SIZE, align 4
  %256 = call i8* @__constant_cpu_to_be16(i32 %255)
  %257 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %258 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  %259 = call i8* @__constant_cpu_to_be16(i32 8)
  %260 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %261 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %263 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %240
  %266 = load %struct.init_cb_24xx*, %struct.init_cb_24xx** %13, align 8
  %267 = getelementptr inbounds %struct.init_cb_24xx, %struct.init_cb_24xx* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @le16_to_cpu(i32 %268)
  br label %277

270:                                              ; preds = %240
  %271 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %272 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %271, i32 0, i32 3
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @le16_to_cpu(i32 %275)
  br label %277

277:                                              ; preds = %270, %265
  %278 = phi i32 [ %269, %265 ], [ %276, %270 ]
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @cpu_to_be32(i32 %279)
  %281 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %282 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 3
  store i32 %280, i32* %283, align 8
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 8
  store i32 %285, i32* %5, align 4
  %286 = load i64, i64* @ql_dbg_disc, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %288 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %289 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %286, %struct.TYPE_25__* %287, i32 8252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %291)
  %293 = load i32*, i32** %11, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = bitcast i32* %296 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %297, %struct.ct_fdmi_port_attr** %12, align 8
  %298 = load i32, i32* @FDMI_PORT_OS_DEVICE_NAME, align 4
  %299 = call i8* @__constant_cpu_to_be16(i32 %298)
  %300 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %301 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %300, i32 0, i32 2
  store i8* %299, i8** %301, align 8
  %302 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %303 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %307 = call i32 @strcpy(i8* %305, i32 %306)
  %308 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %309 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @strlen(i8* %311)
  store i32 %312, i32* %4, align 4
  %313 = load i32, i32* %4, align 4
  %314 = and i32 %313, 3
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %277
  %317 = load i32, i32* %4, align 4
  %318 = and i32 %317, 3
  %319 = sub nsw i32 4, %318
  br label %321

320:                                              ; preds = %277
  br label %321

321:                                              ; preds = %320, %316
  %322 = phi i32 [ %319, %316 ], [ 4, %320 ]
  %323 = load i32, i32* %4, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %4, align 4
  %325 = load i32, i32* %4, align 4
  %326 = add nsw i32 4, %325
  %327 = call i8* @cpu_to_be16(i32 %326)
  %328 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %329 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %328, i32 0, i32 1
  store i8* %327, i8** %329, align 8
  %330 = load i32, i32* %4, align 4
  %331 = add nsw i32 4, %330
  %332 = load i32, i32* %5, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %5, align 4
  %334 = load i64, i64* @ql_dbg_disc, align 8
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %336 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %337 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %334, %struct.TYPE_25__* %335, i32 8267, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %339)
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i8* @fc_host_system_hostname(i32 %343)
  %345 = call i32 @strlen(i8* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %406

347:                                              ; preds = %321
  %348 = load i32, i32* @FDMI_PORT_ATTR_COUNT, align 4
  %349 = call i8* @__constant_cpu_to_be32(i32 %348)
  %350 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %351 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 0
  store i8* %349, i8** %354, align 8
  %355 = load i32*, i32** %11, align 8
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = bitcast i32* %358 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %359, %struct.ct_fdmi_port_attr** %12, align 8
  %360 = load i32, i32* @FDMI_PORT_HOST_NAME, align 4
  %361 = call i8* @__constant_cpu_to_be16(i32 %360)
  %362 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %363 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %362, i32 0, i32 2
  store i8* %361, i8** %363, align 8
  %364 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %365 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i8* @fc_host_system_hostname(i32 %370)
  %372 = call i32 @snprintf(i8* %367, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %371)
  %373 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %374 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 2
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @strlen(i8* %376)
  store i32 %377, i32* %4, align 4
  %378 = load i32, i32* %4, align 4
  %379 = and i32 %378, 3
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %347
  %382 = load i32, i32* %4, align 4
  %383 = and i32 %382, 3
  %384 = sub nsw i32 4, %383
  br label %386

385:                                              ; preds = %347
  br label %386

386:                                              ; preds = %385, %381
  %387 = phi i32 [ %384, %381 ], [ 4, %385 ]
  %388 = load i32, i32* %4, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %4, align 4
  %390 = load i32, i32* %4, align 4
  %391 = add nsw i32 4, %390
  %392 = call i8* @cpu_to_be16(i32 %391)
  %393 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %394 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %393, i32 0, i32 1
  store i8* %392, i8** %394, align 8
  %395 = load i32, i32* %4, align 4
  %396 = add nsw i32 4, %395
  %397 = load i32, i32* %5, align 4
  %398 = add nsw i32 %397, %396
  store i32 %398, i32* %5, align 4
  %399 = load i64, i64* @ql_dbg_disc, align 8
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %401 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %12, align 8
  %402 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 2
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %399, %struct.TYPE_25__* %400, i32 8253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %404)
  br label %406

406:                                              ; preds = %386, %321
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %408 = load i32, i32* %5, align 4
  %409 = add nsw i32 %408, 16
  %410 = call i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_25__* %407, i32 %409)
  %411 = load i64, i64* @ql_dbg_disc, align 8
  %412 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %413 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %414 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 0
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %421 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 0
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 1
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %428 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %435 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 3
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %442 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 4
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %449 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 5
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %456 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %457, i32 0, i32 0
  %459 = load i32*, i32** %458, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 6
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %463 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 7
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %5, align 4
  %470 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %411, %struct.TYPE_25__* %412, i32 8254, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %419, i32 %426, i32 %433, i32 %440, i32 %447, i32 %454, i32 %461, i32 %468, i32 %469)
  %471 = load i64, i64* @ql_dbg_disc, align 8
  %472 = load i64, i64* @ql_dbg_buffer, align 8
  %473 = add nsw i64 %471, %472
  %474 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %475 = load i32*, i32** %11, align 8
  %476 = load i32, i32* %5, align 4
  %477 = call i32 @ql_dump_buffer(i64 %473, %struct.TYPE_25__* %474, i32 8313, i32* %475, i32 %476)
  %478 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %479 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %480 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %483 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @qla2x00_issue_iocb(%struct.TYPE_25__* %478, i32 %481, i32 %484, i32 4)
  store i32 %485, i32* %3, align 4
  %486 = load i32, i32* %3, align 4
  %487 = load i32, i32* @QLA_SUCCESS, align 4
  %488 = icmp ne i32 %486, %487
  br i1 %488, label %489, label %494

489:                                              ; preds = %406
  %490 = load i64, i64* @ql_dbg_disc, align 8
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %492 = load i32, i32* %3, align 4
  %493 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %490, %struct.TYPE_25__* %491, i32 8256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %492)
  br label %508

494:                                              ; preds = %406
  %495 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %496 = load i32*, i32** %8, align 8
  %497 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %498 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_25__* %495, i32* %496, %struct.ct_sns_rsp* %497, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %499 = load i32, i32* @QLA_SUCCESS, align 4
  %500 = icmp ne i32 %498, %499
  br i1 %500, label %501, label %503

501:                                              ; preds = %494
  %502 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %502, i32* %3, align 4
  br label %507

503:                                              ; preds = %494
  %504 = load i64, i64* @ql_dbg_disc, align 8
  %505 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %506 = call i32 (i64, %struct.TYPE_25__*, i32, i8*, ...) @ql_dbg(i64 %504, %struct.TYPE_25__* %505, i32 8257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %507

507:                                              ; preds = %503, %501
  br label %508

508:                                              ; preds = %507, %489
  %509 = load i32, i32* %3, align 4
  ret i32 %509
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @__constant_cpu_to_be32(i32) #1

declare dso_local i8* @__constant_cpu_to_be16(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i64 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA23XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @fc_host_system_hostname(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_25__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
