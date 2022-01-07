; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_initiator_msgout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_initiator_msgout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32*, i8*, i64, i64, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.scb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_FLAG_PACKETIZED = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i64 0, align 8
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"%s: WARNING. No pending message for I_T msgin.  Issuing NO-OP\0A\00", align 1
@MSG_NOOP = common dso_local global i32 0, align 4
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@MSG_IDENTIFYFLAG = common dso_local global i64 0, align 8
@DISCENB = common dso_local global i32 0, align 4
@MSG_IDENTIFY_DISCFLAG = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@SCB_TAG_TYPE = common dso_local global i32 0, align 4
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bus Device Reset Message Sent\0A\00", align 1
@SCSISEQ0 = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Abort%s Message Sent\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" Tag\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_NEGOTIATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"ahd_intr: AWAITING_MSG for an SCB that does not have a waiting message\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"SCSIID = %x, target_mask = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"SCB = %d, SCB Control = %x:%x, MSG_OUT = %x SCB flags = %x\00", align 1
@SCB_CONTROL = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@AHD_SHOW_MESSAGES = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.scb*)* @ahd_setup_initiator_msgout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_setup_initiator_msgout(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.ahd_devinfo*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %13 = call i64 @ahd_currently_packetized(%struct.ahd_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_FLAG_PACKETIZED, align 4
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %28 = load i32, i32* @MSG_OUT, align 4
  %29 = call i64 @ahd_inb(%struct.ahd_softc* %27, i32 %28)
  %30 = load i64, i64* @HOST_MSG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %35, i32* %43, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %323

51:                                               ; preds = %26, %21
  %52 = load %struct.scb*, %struct.scb** %6, align 8
  %53 = icmp eq %struct.scb* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %56 = call i8* @ahd_name(%struct.ahd_softc* %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @MSG_NOOP, align 4
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %63 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %58, i32* %66, align 4
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %323

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.scb*, %struct.scb** %6, align 8
  %77 = getelementptr inbounds %struct.scb, %struct.scb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %168

82:                                               ; preds = %75
  %83 = load %struct.scb*, %struct.scb** %6, align 8
  %84 = getelementptr inbounds %struct.scb, %struct.scb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SCB_PACKETIZED, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %168

89:                                               ; preds = %82
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %91 = load i32, i32* @MSG_OUT, align 4
  %92 = call i64 @ahd_inb(%struct.ahd_softc* %90, i32 %91)
  %93 = load i64, i64* @MSG_IDENTIFYFLAG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %168

95:                                               ; preds = %89
  %96 = load i64, i64* @MSG_IDENTIFYFLAG, align 8
  %97 = load %struct.scb*, %struct.scb** %6, align 8
  %98 = call i64 @SCB_GET_LUN(%struct.scb* %97)
  %99 = or i64 %96, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load %struct.scb*, %struct.scb** %6, align 8
  %102 = getelementptr inbounds %struct.scb, %struct.scb* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DISCENB, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %95
  %110 = load i32, i32* @MSG_IDENTIFY_DISCFLAG, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %95
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %116 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %114, i32* %122, align 4
  %123 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.scb*, %struct.scb** %6, align 8
  %128 = getelementptr inbounds %struct.scb, %struct.scb* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TAG_ENB, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %113
  %136 = load %struct.scb*, %struct.scb** %6, align 8
  %137 = getelementptr inbounds %struct.scb, %struct.scb* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TAG_ENB, align 4
  %142 = load i32, i32* @SCB_TAG_TYPE, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %146 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %149 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %144, i32* %152, align 4
  %153 = load %struct.scb*, %struct.scb** %6, align 8
  %154 = call i32 @SCB_GET_TAG(%struct.scb* %153)
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %159 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %154, i32* %162, align 4
  %163 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %164 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 2
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %135, %113
  br label %168

168:                                              ; preds = %167, %89, %82, %75
  %169 = load %struct.scb*, %struct.scb** %6, align 8
  %170 = getelementptr inbounds %struct.scb, %struct.scb* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %168
  %176 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %177 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %178 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %181 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %176, i32* %184, align 4
  %185 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %186 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %190 = load %struct.scb*, %struct.scb** %6, align 8
  %191 = call i32 @ahd_print_path(%struct.ahd_softc* %189, %struct.scb* %190)
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %193 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %194 = load i32, i32* @SCSISEQ0, align 4
  %195 = call i32 @ahd_outb(%struct.ahd_softc* %193, i32 %194, i32 0)
  br label %300

196:                                              ; preds = %168
  %197 = load %struct.scb*, %struct.scb** %6, align 8
  %198 = getelementptr inbounds %struct.scb, %struct.scb* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @SCB_ABORT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %254

203:                                              ; preds = %196
  %204 = load %struct.scb*, %struct.scb** %6, align 8
  %205 = getelementptr inbounds %struct.scb, %struct.scb* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TAG_ENB, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %203
  %213 = load i32, i32* @MSG_ABORT_TAG, align 4
  %214 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %215 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %218 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 %213, i32* %221, align 4
  br label %232

222:                                              ; preds = %203
  %223 = load i32, i32* @MSG_ABORT, align 4
  %224 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %225 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %228 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  %231 = getelementptr inbounds i32, i32* %226, i64 %229
  store i32 %223, i32* %231, align 4
  br label %232

232:                                              ; preds = %222, %212
  %233 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %234 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %234, align 8
  %237 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %238 = load %struct.scb*, %struct.scb** %6, align 8
  %239 = call i32 @ahd_print_path(%struct.ahd_softc* %237, %struct.scb* %238)
  %240 = load %struct.scb*, %struct.scb** %6, align 8
  %241 = getelementptr inbounds %struct.scb, %struct.scb* %240, i32 0, i32 1
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @TAG_ENB, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %249)
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %252 = load i32, i32* @SCSISEQ0, align 4
  %253 = call i32 @ahd_outb(%struct.ahd_softc* %251, i32 %252, i32 0)
  br label %299

254:                                              ; preds = %196
  %255 = load %struct.scb*, %struct.scb** %6, align 8
  %256 = getelementptr inbounds %struct.scb, %struct.scb* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %259 = load i32, i32* @SCB_NEGOTIATE, align 4
  %260 = or i32 %258, %259
  %261 = and i32 %257, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %254
  %264 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %265 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %266 = call i32 @ahd_build_transfer_msg(%struct.ahd_softc* %264, %struct.ahd_devinfo* %265)
  %267 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %268 = load i32, i32* @SCSISEQ0, align 4
  %269 = call i32 @ahd_outb(%struct.ahd_softc* %267, i32 %268, i32 0)
  br label %298

270:                                              ; preds = %254
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  %272 = load %struct.scb*, %struct.scb** %6, align 8
  %273 = getelementptr inbounds %struct.scb, %struct.scb* %272, i32 0, i32 1
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %278 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %276, i32 %279)
  %281 = load %struct.scb*, %struct.scb** %6, align 8
  %282 = call i32 @SCB_GET_TAG(%struct.scb* %281)
  %283 = load %struct.scb*, %struct.scb** %6, align 8
  %284 = getelementptr inbounds %struct.scb, %struct.scb* %283, i32 0, i32 1
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %289 = load i32, i32* @SCB_CONTROL, align 4
  %290 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %288, i32 %289)
  %291 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %292 = load i32, i32* @MSG_OUT, align 4
  %293 = call i64 @ahd_inb(%struct.ahd_softc* %291, i32 %292)
  %294 = load %struct.scb*, %struct.scb** %6, align 8
  %295 = getelementptr inbounds %struct.scb, %struct.scb* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %282, i32 %287, i32 %290, i64 %293, i32 %296)
  br label %298

298:                                              ; preds = %270, %263
  br label %299

299:                                              ; preds = %298, %232
  br label %300

300:                                              ; preds = %299, %175
  %301 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %302 = load i32, i32* @SCB_CONTROL, align 4
  %303 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %304 = load i32, i32* @SCB_CONTROL, align 4
  %305 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %303, i32 %304)
  %306 = load i32, i32* @MK_MESSAGE, align 4
  %307 = xor i32 %306, -1
  %308 = and i32 %305, %307
  %309 = call i32 @ahd_outb(%struct.ahd_softc* %301, i32 %302, i32 %308)
  %310 = load i32, i32* @MK_MESSAGE, align 4
  %311 = xor i32 %310, -1
  %312 = load %struct.scb*, %struct.scb** %6, align 8
  %313 = getelementptr inbounds %struct.scb, %struct.scb* %312, i32 0, i32 1
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %311
  store i32 %317, i32* %315, align 4
  %318 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %319 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %318, i32 0, i32 3
  store i64 0, i64* %319, align 8
  %320 = load i8*, i8** @MSG_TYPE_INITIATOR_MSGOUT, align 8
  %321 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %322 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %321, i32 0, i32 2
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %300, %54, %32
  ret void
}

declare dso_local i64 @ahd_currently_packetized(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i64 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_build_transfer_msg(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
