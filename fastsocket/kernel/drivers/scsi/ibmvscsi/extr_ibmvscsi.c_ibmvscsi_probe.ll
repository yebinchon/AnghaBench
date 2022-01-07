; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*, %struct.ibmvscsi_host_data*, i32)*, i64 (%struct.ibmvscsi_host_data*, i32, i32)*, i32 (i32*, %struct.ibmvscsi_host_data*, i32)* }
%struct.ibmvscsi_host_data = type { %struct.srp_rport*, i32, i32, %struct.Scsi_Host*, i32, %struct.TYPE_3__, %struct.device*, i32, i32 }
%struct.srp_rport = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.vio_dev = type { %struct.device }
%struct.vio_device_id = type { i32 }
%struct.srp_rport_identifiers = type { i32, i32 }

@driver_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't allocate host data\0A\00", align 1
@ibmvscsi_transport_template = common dso_local global i32 0, align 4
@IBMVSCSI_MAX_SECTORS_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't map persistent buffers\0A\00", align 1
@ibmvscsi_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ibmvscsi\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"couldn't initialize kthread. rc=%ld\0A\00", align 1
@ibmvscsi_ops = common dso_local global %struct.TYPE_4__* null, align 8
@max_events = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"couldn't initialize crq. rc=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"couldn't initialize event pool\0A\00", align 1
@max_id = common dso_local global i32 0, align 4
@max_channel = common dso_local global i32 0, align 4
@SRP_RPORT_ROLE_TARGET = common dso_local global i32 0, align 4
@IBMVSCSI_CRQ_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@init_timeout = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @ibmvscsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.ibmvscsi_host_data*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.srp_rport_identifiers, align 4
  %10 = alloca %struct.srp_rport*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  %13 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %16 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_set_drvdata(%struct.device* %16, %struct.ibmvscsi_host_data* null)
  %18 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @driver_template, i32 48)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %7, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %20 = icmp ne %struct.Scsi_Host* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %23 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %22, i32 0, i32 0
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %225

25:                                               ; preds = %2
  %26 = load i32, i32* @ibmvscsi_transport_template, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %30 = call %struct.ibmvscsi_host_data* @shost_priv(%struct.Scsi_Host* %29)
  store %struct.ibmvscsi_host_data* %30, %struct.ibmvscsi_host_data** %6, align 8
  %31 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %32 = call i32 @memset(%struct.ibmvscsi_host_data* %31, i32 0, i32 48)
  %33 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %34 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %33, i32 0, i32 8
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %37 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %36, i32 0, i32 7
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %40 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %41 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %40, i32 0, i32 3
  store %struct.Scsi_Host* %39, %struct.Scsi_Host** %41, align 8
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %44 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %43, i32 0, i32 6
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %46 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %45, i32 0, i32 4
  %47 = call i32 @atomic_set(i32* %46, i32 -1)
  %48 = load i32, i32* @IBMVSCSI_MAX_SECTORS_DEFAULT, align 4
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 3
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %50, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 4
  %53 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %54 = call i64 @map_persist_bufs(%struct.ibmvscsi_host_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %25
  %57 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %58 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %57, i32 0, i32 0
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %222

60:                                               ; preds = %25
  %61 = load i32, i32* @ibmvscsi_work, align 4
  %62 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.srp_rport* @kthread_run(i32 %61, %struct.ibmvscsi_host_data* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %68 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %67, i32 0, i32 0
  store %struct.srp_rport* %66, %struct.srp_rport** %68, align 8
  %69 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %70 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %69, i32 0, i32 0
  %71 = load %struct.srp_rport*, %struct.srp_rport** %70, align 8
  %72 = call i64 @IS_ERR(%struct.srp_rport* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %76 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %75, i32 0, i32 0
  %77 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %78 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %77, i32 0, i32 0
  %79 = load %struct.srp_rport*, %struct.srp_rport** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.srp_rport* %79)
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %219

82:                                               ; preds = %60
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ibmvscsi_ops, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (i32*, %struct.ibmvscsi_host_data*, i32)*, i32 (i32*, %struct.ibmvscsi_host_data*, i32)** %84, align 8
  %86 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %87 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %86, i32 0, i32 1
  %88 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %89 = load i32, i32* @max_events, align 4
  %90 = call i32 %85(i32* %87, %struct.ibmvscsi_host_data* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @H_RESOURCE, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %99 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %12, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %214

102:                                              ; preds = %93, %82
  %103 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %104 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %103, i32 0, i32 2
  %105 = load i32, i32* @max_events, align 4
  %106 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %107 = call i64 @initialize_event_pool(i32* %104, i32 %105, %struct.ibmvscsi_host_data* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %111 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %110, i32 0, i32 0
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %205

113:                                              ; preds = %102
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %114, i32 0, i32 0
  store i32 8, i32* %115, align 4
  %116 = load i32, i32* @max_id, align 4
  %117 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %118 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @max_channel, align 4
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %121 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %123 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %122, i32 0, i32 1
  store i32 16, i32* %123, align 4
  %124 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %125 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %124, i32 0, i32 3
  %126 = load %struct.Scsi_Host*, %struct.Scsi_Host** %125, align 8
  %127 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %128 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %127, i32 0, i32 6
  %129 = load %struct.device*, %struct.device** %128, align 8
  %130 = call i64 @scsi_add_host(%struct.Scsi_Host* %126, %struct.device* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %113
  br label %200

133:                                              ; preds = %113
  %134 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %9, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %137 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memcpy(i32 %135, i32 %139, i32 4)
  %141 = load i32, i32* @SRP_RPORT_ROLE_TARGET, align 4
  %142 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %9, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %144 = call %struct.srp_rport* @srp_rport_add(%struct.Scsi_Host* %143, %struct.srp_rport_identifiers* %9)
  store %struct.srp_rport* %144, %struct.srp_rport** %10, align 8
  %145 = load %struct.srp_rport*, %struct.srp_rport** %10, align 8
  %146 = call i64 @IS_ERR(%struct.srp_rport* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %133
  br label %195

149:                                              ; preds = %133
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ibmvscsi_ops, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i64 (%struct.ibmvscsi_host_data*, i32, i32)*, i64 (%struct.ibmvscsi_host_data*, i32, i32)** %151, align 8
  %153 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %154 = load i32, i32* @IBMVSCSI_CRQ_INIT, align 4
  %155 = call i64 %152(%struct.ibmvscsi_host_data* %153, i32 %154, i32 0)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @H_RESOURCE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %157, %149
  %162 = load i64, i64* @jiffies, align 8
  %163 = load i64, i64* @init_timeout, align 8
  %164 = load i64, i64* @HZ, align 8
  %165 = mul i64 %163, %164
  %166 = add i64 %162, %165
  store i64 %166, i64* %11, align 8
  br label %167

167:                                              ; preds = %179, %161
  %168 = load i64, i64* @jiffies, align 8
  %169 = load i64, i64* %11, align 8
  %170 = call i64 @time_before(i64 %168, i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %174 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %173, i32 0, i32 4
  %175 = call i32 @atomic_read(i32* %174)
  %176 = icmp slt i32 %175, 2
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i1 [ false, %167 ], [ %176, %172 ]
  br i1 %178, label %179, label %181

179:                                              ; preds = %177
  %180 = call i32 @msleep(i32 10)
  br label %167

181:                                              ; preds = %177
  %182 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %183 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %182, i32 0, i32 4
  %184 = call i32 @atomic_read(i32* %183)
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %188 = call i32 @scsi_scan_host(%struct.Scsi_Host* %187)
  br label %189

189:                                              ; preds = %186, %181
  br label %190

190:                                              ; preds = %189, %157
  %191 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %192 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %191, i32 0, i32 0
  %193 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %194 = call i32 @dev_set_drvdata(%struct.device* %192, %struct.ibmvscsi_host_data* %193)
  store i32 0, i32* %3, align 4
  br label %226

195:                                              ; preds = %148
  %196 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %197 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %196, i32 0, i32 3
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %197, align 8
  %199 = call i32 @scsi_remove_host(%struct.Scsi_Host* %198)
  br label %200

200:                                              ; preds = %195, %132
  %201 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %202 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %201, i32 0, i32 2
  %203 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %204 = call i32 @release_event_pool(i32* %202, %struct.ibmvscsi_host_data* %203)
  br label %205

205:                                              ; preds = %200, %109
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ibmvscsi_ops, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i32 (i32*, %struct.ibmvscsi_host_data*, i32)*, i32 (i32*, %struct.ibmvscsi_host_data*, i32)** %207, align 8
  %209 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %210 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %209, i32 0, i32 1
  %211 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %212 = load i32, i32* @max_events, align 4
  %213 = call i32 %208(i32* %210, %struct.ibmvscsi_host_data* %211, i32 %212)
  br label %214

214:                                              ; preds = %205, %97
  %215 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %216 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %215, i32 0, i32 0
  %217 = load %struct.srp_rport*, %struct.srp_rport** %216, align 8
  %218 = call i32 @kthread_stop(%struct.srp_rport* %217)
  br label %219

219:                                              ; preds = %214, %74
  %220 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %221 = call i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data* %220)
  br label %222

222:                                              ; preds = %219, %56
  %223 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %224 = call i32 @scsi_host_put(%struct.Scsi_Host* %223)
  br label %225

225:                                              ; preds = %222, %21
  store i32 -1, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %190
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ibmvscsi_host_data*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ibmvscsi_host_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.ibmvscsi_host_data*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @map_persist_bufs(%struct.ibmvscsi_host_data*) #1

declare dso_local %struct.srp_rport* @kthread_run(i32, %struct.ibmvscsi_host_data*, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.srp_rport*) #1

declare dso_local i32 @PTR_ERR(%struct.srp_rport*) #1

declare dso_local i64 @initialize_event_pool(i32*, i32, %struct.ibmvscsi_host_data*) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, %struct.device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.srp_rport* @srp_rport_add(%struct.Scsi_Host*, %struct.srp_rport_identifiers*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @release_event_pool(i32*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @kthread_stop(%struct.srp_rport*) #1

declare dso_local i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
