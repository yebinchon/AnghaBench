; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_dev_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ahd_softc = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.ahd_linux_device = type { i32, i32, i32 }
%struct.scb = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__*, i64, %struct.scsi_cmnd* }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.ahd_linux_device* }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempting to queue a TARGET RESET message:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CDB:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Is not an active device\0A\00", align 1
@AHD_NEVER_COL_IDX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"No SCB available\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SIU_TASKMGMT_LUN_RESET = common dso_local global i32 0, align 4
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@pending_links = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: Device reset code sleeping\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"%s: Device reset timer expired (active %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: Device reset returning 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ahd_linux_dev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_linux_dev_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.ahd_linux_device*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahd_initiator_tinfo*, align 8
  %12 = alloca %struct.ahd_tmode_tstate*, align 8
  %13 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %14 = load i32, i32* @SUCCESS, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @done, align 4
  %16 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %15)
  store %struct.scb* null, %struct.scb** %6, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ahd_softc**
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %26, align 8
  store %struct.ahd_softc* %27, %struct.ahd_softc** %4, align 8
  %28 = load i32, i32* @KERN_INFO, align 4
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = call i32 @scmd_printk(i32 %28, %struct.scsi_cmnd* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %46, %1
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %32

49:                                               ; preds = %32
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call %struct.ahd_linux_device* @scsi_transport_device_data(%struct.TYPE_12__* %53)
  store %struct.ahd_linux_device* %54, %struct.ahd_linux_device** %5, align 8
  %55 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %5, align 8
  %56 = icmp eq %struct.ahd_linux_device* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %60 = call i32 @scmd_printk(i32 %58, %struct.scsi_cmnd* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @SUCCESS, align 4
  store i32 %61, i32* %2, align 4
  br label %219

62:                                               ; preds = %49
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %64 = load i32, i32* @AHD_NEVER_COL_IDX, align 4
  %65 = call %struct.scb* @ahd_get_scb(%struct.ahd_softc* %63, i32 %64)
  store %struct.scb* %65, %struct.scb** %6, align 8
  %66 = load %struct.scb*, %struct.scb** %6, align 8
  %67 = icmp ne %struct.scb* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = call i32 @scmd_printk(i32 %69, %struct.scsi_cmnd* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @FAILED, align 4
  store i32 %72, i32* %2, align 4
  br label %219

73:                                               ; preds = %62
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %76 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %74, i8 signext 65, i32 %77, i32 %82, %struct.ahd_tmode_tstate** %12)
  store %struct.ahd_initiator_tinfo* %83, %struct.ahd_initiator_tinfo** %11, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %85 = load %struct.scb*, %struct.scb** %6, align 8
  %86 = getelementptr inbounds %struct.scb, %struct.scb* %85, i32 0, i32 4
  store %struct.scsi_cmnd* %84, %struct.scsi_cmnd** %86, align 8
  %87 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %5, align 8
  %88 = load %struct.scb*, %struct.scb** %6, align 8
  %89 = getelementptr inbounds %struct.scb, %struct.scb* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store %struct.ahd_linux_device* %87, %struct.ahd_linux_device** %91, align 8
  %92 = load %struct.scb*, %struct.scb** %6, align 8
  %93 = getelementptr inbounds %struct.scb, %struct.scb* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.scb*, %struct.scb** %6, align 8
  %95 = call i32 @ahd_set_residual(%struct.scb* %94, i32 0)
  %96 = load %struct.scb*, %struct.scb** %6, align 8
  %97 = call i32 @ahd_set_sense_residual(%struct.scb* %96, i32 0)
  %98 = load %struct.scb*, %struct.scb** %6, align 8
  %99 = getelementptr inbounds %struct.scb, %struct.scb* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.scb*, %struct.scb** %6, align 8
  %103 = getelementptr inbounds %struct.scb, %struct.scb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %108 = call i32 @BUILD_SCSIID(%struct.ahd_softc* %106, %struct.scsi_cmnd* %107)
  %109 = load %struct.scb*, %struct.scb** %6, align 8
  %110 = getelementptr inbounds %struct.scb, %struct.scb* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  store i32 %108, i32* %112, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.scb*, %struct.scb** %6, align 8
  %119 = getelementptr inbounds %struct.scb, %struct.scb* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  store i32 %117, i32* %121, align 8
  %122 = load %struct.scb*, %struct.scb** %6, align 8
  %123 = getelementptr inbounds %struct.scb, %struct.scb* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @SIU_TASKMGMT_LUN_RESET, align 4
  %127 = load %struct.scb*, %struct.scb** %6, align 8
  %128 = getelementptr inbounds %struct.scb, %struct.scb* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %132 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @SCB_ACTIVE, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.scb*, %struct.scb** %6, align 8
  %137 = getelementptr inbounds %struct.scb, %struct.scb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %141 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %73
  %148 = load i32, i32* @SCB_PACKETIZED, align 4
  %149 = load %struct.scb*, %struct.scb** %6, align 8
  %150 = getelementptr inbounds %struct.scb, %struct.scb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %161

153:                                              ; preds = %73
  %154 = load i32, i32* @MK_MESSAGE, align 4
  %155 = load %struct.scb*, %struct.scb** %6, align 8
  %156 = getelementptr inbounds %struct.scb, %struct.scb* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %154
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %153, %147
  %162 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %5, align 8
  %163 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %5, align 8
  %167 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %5, align 8
  %171 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %175 = call i32 @ahd_lock(%struct.ahd_softc* %174, i64* %13)
  %176 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %177 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %176, i32 0, i32 1
  %178 = load %struct.scb*, %struct.scb** %6, align 8
  %179 = load i32, i32* @pending_links, align 4
  %180 = call i32 @LIST_INSERT_HEAD(i32* %177, %struct.scb* %178, i32 %179)
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %182 = load %struct.scb*, %struct.scb** %6, align 8
  %183 = call i32 @ahd_queue_scb(%struct.ahd_softc* %181, %struct.scb* %182)
  %184 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %185 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i32* @done, i32** %187, align 8
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %189 = call i32 @ahd_unlock(%struct.ahd_softc* %188, i64* %13)
  %190 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %191 = call i8* @ahd_name(%struct.ahd_softc* %190)
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  %193 = load i32, i32* @HZ, align 4
  %194 = mul nsw i32 5, %193
  %195 = call i32 @wait_for_completion_timeout(i32* @done, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %161
  %198 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %199 = call i32 @ahd_lock(%struct.ahd_softc* %198, i64* %13)
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %201 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %200, i32 0, i32 0
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  store i32* null, i32** %203, align 8
  %204 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %205 = call i32 @ahd_unlock(%struct.ahd_softc* %204, i64* %13)
  %206 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %207 = call i8* @ahd_name(%struct.ahd_softc* %206)
  %208 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %5, align 8
  %209 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %207, i32 %210)
  %212 = load i32, i32* @FAILED, align 4
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %197, %161
  %214 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %215 = call i8* @ahd_name(%struct.ahd_softc* %214)
  %216 = load i32, i32* %8, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %215, i32 %216)
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %213, %68, %57
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.ahd_linux_device* @scsi_transport_device_data(%struct.TYPE_12__*) #1

declare dso_local %struct.scb* @ahd_get_scb(%struct.ahd_softc*, i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_set_residual(%struct.scb*, i32) #1

declare dso_local i32 @ahd_set_sense_residual(%struct.scb*, i32) #1

declare dso_local i32 @BUILD_SCSIID(%struct.ahd_softc*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_queue_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i64*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
