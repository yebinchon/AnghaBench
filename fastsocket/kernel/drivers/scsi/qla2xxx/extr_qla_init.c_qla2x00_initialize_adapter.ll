; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_initialize_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_initialize_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, i64, %struct.TYPE_22__, i64, i32, i32, i32, %struct.qla_hw_data* }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.qla_hw_data = type { i32, %struct.TYPE_24__, i32, %struct.TYPE_23__*, i32, i32, i64, i64, %struct.req_que** }
%struct.TYPE_24__ = type { i32, i64, i64, i64 }
%struct.TYPE_23__ = type { {}*, {}*, {}*, i32 (%struct.TYPE_25__*, i32)*, {}* }
%struct.req_que = type { i32 }

@THERMAL_SUPPORT_I2C = common dso_local global i32 0, align 4
@THERMAL_SUPPORT_ISP = common dso_local global i32 0, align 4
@LOOP_DOWN_TIME = common dso_local global i32 0, align 4
@LOOP_DOWN = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring PCI space...\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to configure PCI space.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to validate FLASH data.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Configure NVRAM parameters...\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"Masking HBA WWPN %02x%02x%02x%02x%02x%02x%02x%02x (via NVRAM).\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Verifying loaded RISC code...\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to configure ISP84XX.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unable to initialize ISP84XX.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Error in initializing NIC Core f/w.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_initialize_adapter(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.req_que*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 7
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 8
  %12 = load %struct.req_que**, %struct.req_que*** %11, align 8
  %13 = getelementptr inbounds %struct.req_que*, %struct.req_que** %12, i64 0
  %14 = load %struct.req_que*, %struct.req_que** %13, align 8
  store %struct.req_que* %14, %struct.req_que** %6, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @THERMAL_SUPPORT_I2C, align 4
  %31 = load i32, i32* @THERMAL_SUPPORT_ISP, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 6
  %37 = load i32, i32* @LOOP_DOWN_TIME, align 4
  %38 = call i32 @atomic_set(i32* %36, i32 %37)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 5
  %41 = load i32, i32* @LOOP_DOWN, align 4
  %42 = call i32 @atomic_set(i32* %40, i32 %41)
  %43 = load i32, i32* @DFLG_NO_CABLE, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_bit(i32 0, i32 %59)
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @set_bit(i32 0, i32 %63)
  %65 = load i32, i32* @ql_dbg_init, align 4
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = call i32 @ql_dbg(i32 %65, %struct.TYPE_25__* %66, i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 3
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.TYPE_25__*)**
  %73 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %72, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = call i32 %73(%struct.TYPE_25__* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %1
  %79 = load i32, i32* @ql_log_warn, align 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %81 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %79, %struct.TYPE_25__* %80, i32 68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %274

83:                                               ; preds = %1
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 3
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 4
  %88 = bitcast {}** %87 to i32 (%struct.TYPE_25__*)**
  %89 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %88, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = call i32 %89(%struct.TYPE_25__* %90)
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %93 = call i32 @qla2xxx_get_flash_info(%struct.TYPE_25__* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load i32, i32* @ql_log_fatal, align 4
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %99 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %97, %struct.TYPE_25__* %98, i32 79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %274

101:                                              ; preds = %83
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  %106 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %105, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %108 = load %struct.req_que*, %struct.req_que** %6, align 8
  %109 = getelementptr inbounds %struct.req_que, %struct.req_que* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %106(%struct.TYPE_25__* %107, i32 %110)
  %112 = load i32, i32* @ql_dbg_init, align 4
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %114 = call i32 @ql_dbg(i32 %112, %struct.TYPE_25__* %113, i32 97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 3
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = bitcast {}** %118 to i32 (%struct.TYPE_25__*)**
  %120 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %122 = call i32 %120(%struct.TYPE_25__* %121)
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %173

128:                                              ; preds = %101
  %129 = load i32, i32* @ql_log_info, align 4
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 6
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 7
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %129, %struct.TYPE_25__* %130, i32 119, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %140, i32 %145, i32 %150, i32 %155, i32 %160, i32 %165, i32 %170)
  %172 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %172, i32* %2, align 4
  br label %274

173:                                              ; preds = %101
  %174 = load i32, i32* @ql_dbg_init, align 4
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %176 = call i32 @ql_dbg(i32 %174, %struct.TYPE_25__* %175, i32 120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %178 = call i32 @qla2x00_isp_firmware(%struct.TYPE_25__* %177)
  %179 = load i32, i32* @QLA_SUCCESS, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %173
  %182 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %183 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %182, i32 0, i32 3
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = bitcast {}** %185 to i32 (%struct.TYPE_25__*)**
  %187 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %186, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %189 = call i32 %187(%struct.TYPE_25__* %188)
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %274

194:                                              ; preds = %181
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %196 = call i32 @qla2x00_setup_chip(%struct.TYPE_25__* %195)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* %4, align 4
  store i32 %200, i32* %2, align 4
  br label %274

201:                                              ; preds = %194
  br label %202

202:                                              ; preds = %201, %173
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %204 = call i64 @IS_QLA84XX(%struct.qla_hw_data* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %202
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %208 = call i32 @qla84xx_get_chip(%struct.TYPE_25__* %207)
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %210 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %212 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %206
  %216 = load i32, i32* @ql_log_warn, align 4
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %218 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %216, %struct.TYPE_25__* %217, i32 208, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %219 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %219, i32* %2, align 4
  br label %274

220:                                              ; preds = %206
  br label %221

221:                                              ; preds = %220, %202
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %223 = call i32 @qla2x00_init_rings(%struct.TYPE_25__* %222)
  store i32 %223, i32* %4, align 4
  %224 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %225 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  store i32 1, i32* %226, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @QLA_SUCCESS, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %221
  %231 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %232 = call i64 @IS_QLA84XX(%struct.qla_hw_data* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %230
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %236 = call i32 @qla84xx_init_chip(%struct.TYPE_25__* %235)
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @QLA_SUCCESS, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load i32, i32* @ql_log_warn, align 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %243 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %241, %struct.TYPE_25__* %242, i32 212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %245 = call i32 @qla84xx_put_chip(%struct.TYPE_25__* %244)
  br label %246

246:                                              ; preds = %240, %234
  br label %247

247:                                              ; preds = %246, %230, %221
  %248 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %249 = call i64 @IS_QLA8031(%struct.qla_hw_data* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %253 = call i32 @qla83xx_nic_core_fw_load(%struct.TYPE_25__* %252)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load i32, i32* @ql_log_warn, align 4
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %259 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ql_log(i32 %257, %struct.TYPE_25__* %258, i32 290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %260

260:                                              ; preds = %256, %251
  br label %261

261:                                              ; preds = %260, %247
  %262 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %263 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %267 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %265, %261
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %271 = call i32 @qla24xx_read_fcp_prio_cfg(%struct.TYPE_25__* %270)
  br label %272

272:                                              ; preds = %269, %265
  %273 = load i32, i32* %4, align 4
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %272, %215, %199, %192, %128, %96, %78
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @qla2xxx_get_flash_info(%struct.TYPE_25__*) #1

declare dso_local i32 @qla2x00_isp_firmware(%struct.TYPE_25__*) #1

declare dso_local i32 @qla2x00_setup_chip(%struct.TYPE_25__*) #1

declare dso_local i64 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla84xx_get_chip(%struct.TYPE_25__*) #1

declare dso_local i32 @qla2x00_init_rings(%struct.TYPE_25__*) #1

declare dso_local i32 @qla84xx_init_chip(%struct.TYPE_25__*) #1

declare dso_local i32 @qla84xx_put_chip(%struct.TYPE_25__*) #1

declare dso_local i64 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_nic_core_fw_load(%struct.TYPE_25__*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_read_fcp_prio_cfg(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
