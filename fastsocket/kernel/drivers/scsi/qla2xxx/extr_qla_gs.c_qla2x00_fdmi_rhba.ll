; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rhba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_21__*, i64, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*, i32)*, i32* (%struct.TYPE_26__*, i32, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64 }
%struct.ct_sns_req = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_20__, i32*, i8* }
%struct.TYPE_20__ = type { i8* }
%struct.ct_fdmi_hba_attr = type { %struct.TYPE_22__, i8*, i8* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@RHBA_RSP_SIZE = common dso_local global i32 0, align 4
@RHBA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@FDMI_HBA_ATTR_COUNT = common dso_local global i32 0, align 4
@FDMI_HBA_NODE_NAME = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"NodeName = %02x%02x%02x%02x%02x%02x%02x%02x.\0A\00", align 1
@FDMI_HBA_MANUFACTURER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"QLogic Corporation\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Manufacturer = %s.\0A\00", align 1
@FDMI_HBA_SERIAL_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%c%05d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Serial no. = %s.\0A\00", align 1
@FDMI_HBA_MODEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Model Name = %s.\0A\00", align 1
@FDMI_HBA_MODEL_DESCRIPTION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Model Desc = %s.\0A\00", align 1
@FDMI_HBA_HARDWARE_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Hardware ver = %s.\0A\00", align 1
@FDMI_HBA_DRIVER_VERSION = common dso_local global i32 0, align 4
@qla2x00_version_str = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"Driver ver = %s.\0A\00", align 1
@FDMI_HBA_OPTION_ROM_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"0.00\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Optrom vers = %s.\0A\00", align 1
@FDMI_HBA_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Firmware vers = %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"RHBA identifier = %02x%02x%02x%02x%02x%02x%02x%02x size=%d.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"RHBA issue IOCB failed (%d).\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"RHBA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@CT_REASON_CANNOT_PERFORM = common dso_local global i64 0, align 8
@CT_EXPL_ALREADY_REGISTERED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"HBA already registered.\0A\00", align 1
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"RHBA exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @qla2x00_fdmi_rhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmi_rhba(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ct_fdmi_hba_attr*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %12, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 7
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load i32* (%struct.TYPE_26__*, i32, i32)*, i32* (%struct.TYPE_26__*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %22 = load i32, i32* @RHBA_RSP_SIZE, align 4
  %23 = call i32* %20(%struct.TYPE_26__* %21, i32 0, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 9
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i32, i32* @RHBA_CMD, align 4
  %30 = load i32, i32* @RHBA_RSP_SIZE, align 4
  %31 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(i32* %28, i32 %29, i32 %30)
  store %struct.ct_sns_req* %31, %struct.ct_sns_req** %8, align 8
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 9
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store %struct.ct_sns_rsp* %36, %struct.ct_sns_rsp** %9, align 8
  %37 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %38 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WWN_SIZE, align 4
  %46 = call i32 @memcpy(i32* %41, i32 %44, i32 %45)
  %47 = call i8* @__constant_cpu_to_be32(i32 1)
  %48 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %49 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  store i8* %47, i8** %51, align 8
  %52 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %53 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WWN_SIZE, align 4
  %61 = call i32 @memcpy(i32* %56, i32 %59, i32 %60)
  %62 = load i32, i32* @WWN_SIZE, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @FDMI_HBA_ATTR_COUNT, align 4
  %67 = call i8* @__constant_cpu_to_be32(i32 %66)
  %68 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %69 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  store i8* %67, i8** %72, align 8
  %73 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %74 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %82, %struct.ct_fdmi_hba_attr** %11, align 8
  %83 = load i32, i32* @FDMI_HBA_NODE_NAME, align 4
  %84 = call i8* @__constant_cpu_to_be16(i32 %83)
  %85 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %86 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @WWN_SIZE, align 4
  %88 = add nsw i32 4, %87
  %89 = call i8* @__constant_cpu_to_be16(i32 %88)
  %90 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %91 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %93 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @WWN_SIZE, align 4
  %100 = call i32 @memcpy(i32* %95, i32 %98, i32 %99)
  %101 = load i32, i32* @WWN_SIZE, align 4
  %102 = add nsw i32 4, %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i64, i64* @ql_dbg_disc, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %107 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %108 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %114 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %120 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 8
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %126 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 8
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %132 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 8
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %138 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 8
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %144 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 8
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %150 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %105, %struct.TYPE_26__* %106, i32 8229, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %118, i32 %124, i32 %130, i32 %136, i32 %142, i32 %148, i32 %154)
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = bitcast i32* %159 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %160, %struct.ct_fdmi_hba_attr** %11, align 8
  %161 = load i32, i32* @FDMI_HBA_MANUFACTURER, align 4
  %162 = call i8* @__constant_cpu_to_be16(i32 %161)
  %163 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %164 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %166 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strcpy(i32 %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %170 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %171 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strlen(i32 %173)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %1
  %179 = load i32, i32* %4, align 4
  %180 = and i32 %179, 3
  %181 = sub nsw i32 4, %180
  br label %183

182:                                              ; preds = %1
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi i32 [ %181, %178 ], [ 4, %182 ]
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = add nsw i32 4, %187
  %189 = call i8* @cpu_to_be16(i32 %188)
  %190 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %191 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 4, %192
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %5, align 4
  %196 = load i64, i64* @ql_dbg_disc, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %198 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %199 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %196, %struct.TYPE_26__* %197, i32 8230, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = bitcast i32* %206 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %207, %struct.ct_fdmi_hba_attr** %11, align 8
  %208 = load i32, i32* @FDMI_HBA_SERIAL_NUMBER, align 4
  %209 = call i8* @__constant_cpu_to_be16(i32 %208)
  %210 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %211 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %210, i32 0, i32 2
  store i8* %209, i8** %211, align 8
  %212 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %213 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, 31
  %216 = shl i32 %215, 16
  %217 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %218 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = shl i32 %219, 8
  %221 = or i32 %216, %220
  %222 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %223 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %221, %224
  store i32 %225, i32* %6, align 4
  %226 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %227 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sdiv i32 %230, 100000
  %232 = add nsw i32 65, %231
  %233 = trunc i32 %232 to i8
  %234 = load i32, i32* %6, align 4
  %235 = srem i32 %234, 100000
  %236 = call i32 @sprintf(i32 %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 signext %233, i32 %235)
  %237 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %238 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @strlen(i32 %240)
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %4, align 4
  %243 = and i32 %242, 3
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %183
  %246 = load i32, i32* %4, align 4
  %247 = and i32 %246, 3
  %248 = sub nsw i32 4, %247
  br label %250

249:                                              ; preds = %183
  br label %250

250:                                              ; preds = %249, %245
  %251 = phi i32 [ %248, %245 ], [ 4, %249 ]
  %252 = load i32, i32* %4, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 4, %254
  %256 = call i8* @cpu_to_be16(i32 %255)
  %257 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %258 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %257, i32 0, i32 1
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 4, %259
  %261 = load i32, i32* %5, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %5, align 4
  %263 = load i64, i64* @ql_dbg_disc, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %265 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %266 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %263, %struct.TYPE_26__* %264, i32 8231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %268)
  %270 = load i32*, i32** %10, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = bitcast i32* %273 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %274, %struct.ct_fdmi_hba_attr** %11, align 8
  %275 = load i32, i32* @FDMI_HBA_MODEL, align 4
  %276 = call i8* @__constant_cpu_to_be16(i32 %275)
  %277 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %278 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %277, i32 0, i32 2
  store i8* %276, i8** %278, align 8
  %279 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %280 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %284 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %283, i32 0, i32 3
  %285 = load i8*, i8** %284, align 8
  %286 = call i32 @strcpy(i32 %282, i8* %285)
  %287 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %288 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @strlen(i32 %290)
  store i32 %291, i32* %4, align 4
  %292 = load i32, i32* %4, align 4
  %293 = and i32 %292, 3
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %250
  %296 = load i32, i32* %4, align 4
  %297 = and i32 %296, 3
  %298 = sub nsw i32 4, %297
  br label %300

299:                                              ; preds = %250
  br label %300

300:                                              ; preds = %299, %295
  %301 = phi i32 [ %298, %295 ], [ 4, %299 ]
  %302 = load i32, i32* %4, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %4, align 4
  %304 = load i32, i32* %4, align 4
  %305 = add nsw i32 4, %304
  %306 = call i8* @cpu_to_be16(i32 %305)
  %307 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %308 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %307, i32 0, i32 1
  store i8* %306, i8** %308, align 8
  %309 = load i32, i32* %4, align 4
  %310 = add nsw i32 4, %309
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %5, align 4
  %313 = load i64, i64* @ql_dbg_disc, align 8
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %315 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %316 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %313, %struct.TYPE_26__* %314, i32 8232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %318)
  %320 = load i32*, i32** %10, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = bitcast i32* %323 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %324, %struct.ct_fdmi_hba_attr** %11, align 8
  %325 = load i32, i32* @FDMI_HBA_MODEL_DESCRIPTION, align 4
  %326 = call i8* @__constant_cpu_to_be16(i32 %325)
  %327 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %328 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %327, i32 0, i32 2
  store i8* %326, i8** %328, align 8
  %329 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %330 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %329, i32 0, i32 8
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %300
  %334 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %335 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %339 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %338, i32 0, i32 8
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @strncpy(i32 %337, i64 %340, i32 80)
  br label %342

342:                                              ; preds = %333, %300
  %343 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %344 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @strlen(i32 %346)
  store i32 %347, i32* %4, align 4
  %348 = load i32, i32* %4, align 4
  %349 = and i32 %348, 3
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %342
  %352 = load i32, i32* %4, align 4
  %353 = and i32 %352, 3
  %354 = sub nsw i32 4, %353
  br label %356

355:                                              ; preds = %342
  br label %356

356:                                              ; preds = %355, %351
  %357 = phi i32 [ %354, %351 ], [ 4, %355 ]
  %358 = load i32, i32* %4, align 4
  %359 = add nsw i32 %358, %357
  store i32 %359, i32* %4, align 4
  %360 = load i32, i32* %4, align 4
  %361 = add nsw i32 4, %360
  %362 = call i8* @cpu_to_be16(i32 %361)
  %363 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %364 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %363, i32 0, i32 1
  store i8* %362, i8** %364, align 8
  %365 = load i32, i32* %4, align 4
  %366 = add nsw i32 4, %365
  %367 = load i32, i32* %5, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %5, align 4
  %369 = load i64, i64* @ql_dbg_disc, align 8
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %371 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %372 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %369, %struct.TYPE_26__* %370, i32 8233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %374)
  %376 = load i32*, i32** %10, align 8
  %377 = load i32, i32* %5, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = bitcast i32* %379 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %380, %struct.ct_fdmi_hba_attr** %11, align 8
  %381 = load i32, i32* @FDMI_HBA_HARDWARE_VERSION, align 4
  %382 = call i8* @__constant_cpu_to_be16(i32 %381)
  %383 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %384 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %383, i32 0, i32 2
  store i8* %382, i8** %384, align 8
  %385 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %386 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %390 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %389, i32 0, i32 4
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @strcpy(i32 %388, i8* %391)
  %393 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %394 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @strlen(i32 %396)
  store i32 %397, i32* %4, align 4
  %398 = load i32, i32* %4, align 4
  %399 = and i32 %398, 3
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %356
  %402 = load i32, i32* %4, align 4
  %403 = and i32 %402, 3
  %404 = sub nsw i32 4, %403
  br label %406

405:                                              ; preds = %356
  br label %406

406:                                              ; preds = %405, %401
  %407 = phi i32 [ %404, %401 ], [ 4, %405 ]
  %408 = load i32, i32* %4, align 4
  %409 = add nsw i32 %408, %407
  store i32 %409, i32* %4, align 4
  %410 = load i32, i32* %4, align 4
  %411 = add nsw i32 4, %410
  %412 = call i8* @cpu_to_be16(i32 %411)
  %413 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %414 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %413, i32 0, i32 1
  store i8* %412, i8** %414, align 8
  %415 = load i32, i32* %4, align 4
  %416 = add nsw i32 4, %415
  %417 = load i32, i32* %5, align 4
  %418 = add nsw i32 %417, %416
  store i32 %418, i32* %5, align 4
  %419 = load i64, i64* @ql_dbg_disc, align 8
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %421 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %422 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %419, %struct.TYPE_26__* %420, i32 8234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %424)
  %426 = load i32*, i32** %10, align 8
  %427 = load i32, i32* %5, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = bitcast i32* %429 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %430, %struct.ct_fdmi_hba_attr** %11, align 8
  %431 = load i32, i32* @FDMI_HBA_DRIVER_VERSION, align 4
  %432 = call i8* @__constant_cpu_to_be16(i32 %431)
  %433 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %434 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %433, i32 0, i32 2
  store i8* %432, i8** %434, align 8
  %435 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %436 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i8*, i8** @qla2x00_version_str, align 8
  %440 = call i32 @strcpy(i32 %438, i8* %439)
  %441 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %442 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @strlen(i32 %444)
  store i32 %445, i32* %4, align 4
  %446 = load i32, i32* %4, align 4
  %447 = and i32 %446, 3
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %406
  %450 = load i32, i32* %4, align 4
  %451 = and i32 %450, 3
  %452 = sub nsw i32 4, %451
  br label %454

453:                                              ; preds = %406
  br label %454

454:                                              ; preds = %453, %449
  %455 = phi i32 [ %452, %449 ], [ 4, %453 ]
  %456 = load i32, i32* %4, align 4
  %457 = add nsw i32 %456, %455
  store i32 %457, i32* %4, align 4
  %458 = load i32, i32* %4, align 4
  %459 = add nsw i32 4, %458
  %460 = call i8* @cpu_to_be16(i32 %459)
  %461 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %462 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %461, i32 0, i32 1
  store i8* %460, i8** %462, align 8
  %463 = load i32, i32* %4, align 4
  %464 = add nsw i32 4, %463
  %465 = load i32, i32* %5, align 4
  %466 = add nsw i32 %465, %464
  store i32 %466, i32* %5, align 4
  %467 = load i64, i64* @ql_dbg_disc, align 8
  %468 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %469 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %470 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %467, %struct.TYPE_26__* %468, i32 8235, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %472)
  %474 = load i32*, i32** %10, align 8
  %475 = load i32, i32* %5, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = bitcast i32* %477 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %478, %struct.ct_fdmi_hba_attr** %11, align 8
  %479 = load i32, i32* @FDMI_HBA_OPTION_ROM_VERSION, align 4
  %480 = call i8* @__constant_cpu_to_be16(i32 %479)
  %481 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %482 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %481, i32 0, i32 2
  store i8* %480, i8** %482, align 8
  %483 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %484 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @strcpy(i32 %486, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %488 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %489 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @strlen(i32 %491)
  store i32 %492, i32* %4, align 4
  %493 = load i32, i32* %4, align 4
  %494 = and i32 %493, 3
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %500

496:                                              ; preds = %454
  %497 = load i32, i32* %4, align 4
  %498 = and i32 %497, 3
  %499 = sub nsw i32 4, %498
  br label %501

500:                                              ; preds = %454
  br label %501

501:                                              ; preds = %500, %496
  %502 = phi i32 [ %499, %496 ], [ 4, %500 ]
  %503 = load i32, i32* %4, align 4
  %504 = add nsw i32 %503, %502
  store i32 %504, i32* %4, align 4
  %505 = load i32, i32* %4, align 4
  %506 = add nsw i32 4, %505
  %507 = call i8* @cpu_to_be16(i32 %506)
  %508 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %509 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %508, i32 0, i32 1
  store i8* %507, i8** %509, align 8
  %510 = load i32, i32* %4, align 4
  %511 = add nsw i32 4, %510
  %512 = load i32, i32* %5, align 4
  %513 = add nsw i32 %512, %511
  store i32 %513, i32* %5, align 4
  %514 = load i64, i64* @ql_dbg_disc, align 8
  %515 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %516 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %517 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %514, %struct.TYPE_26__* %515, i32 8236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %519)
  %521 = load i32*, i32** %10, align 8
  %522 = load i32, i32* %5, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  %525 = bitcast i32* %524 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %525, %struct.ct_fdmi_hba_attr** %11, align 8
  %526 = load i32, i32* @FDMI_HBA_FIRMWARE_VERSION, align 4
  %527 = call i8* @__constant_cpu_to_be16(i32 %526)
  %528 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %529 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %528, i32 0, i32 2
  store i8* %527, i8** %529, align 8
  %530 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %531 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %530, i32 0, i32 7
  %532 = load %struct.TYPE_21__*, %struct.TYPE_21__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %532, i32 0, i32 0
  %534 = load i32 (%struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_26__*, i32)** %533, align 8
  %535 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %536 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %537 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = call i32 %534(%struct.TYPE_26__* %535, i32 %539)
  %541 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %542 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = call i32 @strlen(i32 %544)
  store i32 %545, i32* %4, align 4
  %546 = load i32, i32* %4, align 4
  %547 = and i32 %546, 3
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %553

549:                                              ; preds = %501
  %550 = load i32, i32* %4, align 4
  %551 = and i32 %550, 3
  %552 = sub nsw i32 4, %551
  br label %554

553:                                              ; preds = %501
  br label %554

554:                                              ; preds = %553, %549
  %555 = phi i32 [ %552, %549 ], [ 4, %553 ]
  %556 = load i32, i32* %4, align 4
  %557 = add nsw i32 %556, %555
  store i32 %557, i32* %4, align 4
  %558 = load i32, i32* %4, align 4
  %559 = add nsw i32 4, %558
  %560 = call i8* @cpu_to_be16(i32 %559)
  %561 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %562 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %561, i32 0, i32 1
  store i8* %560, i8** %562, align 8
  %563 = load i32, i32* %4, align 4
  %564 = add nsw i32 4, %563
  %565 = load i32, i32* %5, align 4
  %566 = add nsw i32 %565, %564
  store i32 %566, i32* %5, align 4
  %567 = load i64, i64* @ql_dbg_disc, align 8
  %568 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %569 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %570 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %567, %struct.TYPE_26__* %568, i32 8237, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %572)
  %574 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %575 = load i32, i32* %5, align 4
  %576 = add nsw i32 %575, 16
  %577 = call i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_26__* %574, i32 %576)
  %578 = load i64, i64* @ql_dbg_disc, align 8
  %579 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %580 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %581 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %582, i32 0, i32 0
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 0
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %588 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %589, i32 0, i32 0
  %591 = load i32*, i32** %590, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 1
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %595 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %596, i32 0, i32 0
  %598 = load i32*, i32** %597, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 2
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %602 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %603, i32 0, i32 0
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 3
  %607 = load i32, i32* %606, align 4
  %608 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %609 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %610, i32 0, i32 0
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 4
  %614 = load i32, i32* %613, align 4
  %615 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %616 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %617, i32 0, i32 0
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 5
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %623 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %624, i32 0, i32 0
  %626 = load i32*, i32** %625, align 8
  %627 = getelementptr inbounds i32, i32* %626, i64 6
  %628 = load i32, i32* %627, align 4
  %629 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %630 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %631, i32 0, i32 0
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 7
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %5, align 4
  %637 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %578, %struct.TYPE_26__* %579, i32 8238, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %586, i32 %593, i32 %600, i32 %607, i32 %614, i32 %621, i32 %628, i32 %635, i32 %636)
  %638 = load i64, i64* @ql_dbg_disc, align 8
  %639 = load i64, i64* @ql_dbg_buffer, align 8
  %640 = add nsw i64 %638, %639
  %641 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %642 = load i32*, i32** %10, align 8
  %643 = load i32, i32* %5, align 4
  %644 = call i32 @ql_dump_buffer(i64 %640, %struct.TYPE_26__* %641, i32 8310, i32* %642, i32 %643)
  %645 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %646 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %647 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %646, i32 0, i32 6
  %648 = load i32, i32* %647, align 4
  %649 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %650 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %649, i32 0, i32 5
  %651 = load i32, i32* %650, align 8
  %652 = call i32 @qla2x00_issue_iocb(%struct.TYPE_26__* %645, i32 %648, i32 %651, i32 4)
  store i32 %652, i32* %3, align 4
  %653 = load i32, i32* %3, align 4
  %654 = load i32, i32* @QLA_SUCCESS, align 4
  %655 = icmp ne i32 %653, %654
  br i1 %655, label %656, label %661

656:                                              ; preds = %554
  %657 = load i64, i64* @ql_dbg_disc, align 8
  %658 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %659 = load i32, i32* %3, align 4
  %660 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %657, %struct.TYPE_26__* %658, i32 8240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %659)
  br label %694

661:                                              ; preds = %554
  %662 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %663 = load i32*, i32** %7, align 8
  %664 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %665 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_26__* %662, i32* %663, %struct.ct_sns_rsp* %664, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %666 = load i32, i32* @QLA_SUCCESS, align 4
  %667 = icmp ne i32 %665, %666
  br i1 %667, label %668, label %689

668:                                              ; preds = %661
  %669 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %669, i32* %3, align 4
  %670 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %671 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @CT_REASON_CANNOT_PERFORM, align 8
  %675 = icmp eq i64 %673, %674
  br i1 %675, label %676, label %688

676:                                              ; preds = %668
  %677 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %678 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %677, i32 0, i32 0
  %679 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %678, i32 0, i32 1
  %680 = load i64, i64* %679, align 8
  %681 = load i64, i64* @CT_EXPL_ALREADY_REGISTERED, align 8
  %682 = icmp eq i64 %680, %681
  br i1 %682, label %683, label %688

683:                                              ; preds = %676
  %684 = load i64, i64* @ql_dbg_disc, align 8
  %685 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %686 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %684, %struct.TYPE_26__* %685, i32 8244, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %687 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  store i32 %687, i32* %3, align 4
  br label %688

688:                                              ; preds = %683, %676, %668
  br label %693

689:                                              ; preds = %661
  %690 = load i64, i64* @ql_dbg_disc, align 8
  %691 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %692 = call i32 (i64, %struct.TYPE_26__*, i32, i8*, ...) @ql_dbg(i64 %690, %struct.TYPE_26__* %691, i32 8245, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %693

693:                                              ; preds = %689, %688
  br label %694

694:                                              ; preds = %693, %656
  %695 = load i32, i32* %3, align 4
  ret i32 %695
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @__constant_cpu_to_be32(i32) #1

declare dso_local i8* @__constant_cpu_to_be16(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i32, i64, i32) #1

declare dso_local i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_26__*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_26__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
