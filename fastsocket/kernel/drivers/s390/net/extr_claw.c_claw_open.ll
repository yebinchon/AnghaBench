; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.claw_privbk = type { i64, i32*, i32*, i32*, %struct.TYPE_6__*, i32, %struct.ccwbk*, i32, %struct.TYPE_5__*, i32, %struct.ccwbk*, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.ccwbk = type { %struct.ccwbk*, i64 }
%struct.timer_list = type { i64, i64, i8* }
%struct.ccw_device = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"openmem\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WS_APPL_NAME_PACKED = common dso_local global i32 0, align 4
@DEF_PACK_BUFSIZE = common dso_local global i8* null, align 8
@PACKING_ASK = common dso_local global i64 0, align 8
@CLAW_FRAME_SIZE = common dso_local global i8* null, align 8
@READ = common dso_local global i64 0, align 8
@claw_irq_tasklet = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"opn_ch%d\00", align 1
@WRITE = common dso_local global i32 0, align 4
@CLAW_TIMER = common dso_local global i32 0, align 4
@claw_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CLAW_START_HALT_IO = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: remote side is not ready\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"notrdy\00", align 1
@CLAW_STOP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"open EIO\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"openok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @claw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claw_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.claw_privbk*, align 8
  %9 = alloca %struct.timer_list, align 8
  %10 = alloca %struct.ccwbk*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = load i32, i32* @trace, align 4
  %15 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.claw_privbk*
  store %struct.claw_privbk* %19, %struct.claw_privbk** %8, align 8
  %20 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %21 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @init_ccw_bk(%struct.net_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @trace, align 4
  %31 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %521

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %37 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %36, i32 0, i32 14
  store i64 0, i64* %37, align 8
  %38 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %39 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %38, i32 0, i32 13
  store i64 0, i64* %39, align 8
  %40 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %41 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %40, i32 0, i32 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @WS_APPL_NAME_PACKED, align 4
  %46 = call i64 @strncmp(i32 %44, i32 %45, i32 6)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %35
  %49 = load i8*, i8** @DEF_PACK_BUFSIZE, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %52 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %51, i32 0, i32 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load i8*, i8** @DEF_PACK_BUFSIZE, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %58 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %57, i32 0, i32 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %56, i64* %60, align 8
  %61 = load i64, i64* @PACKING_ASK, align 8
  %62 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %63 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %62, i32 0, i32 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i64 %61, i64* %65, align 8
  br label %83

66:                                               ; preds = %35
  %67 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %68 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %67, i32 0, i32 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i8*, i8** @CLAW_FRAME_SIZE, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %74 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %73, i32 0, i32 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load i8*, i8** @CLAW_FRAME_SIZE, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %80 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %79, i32 0, i32 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %66, %48
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i32 @claw_set_busy(%struct.net_device* %84)
  %86 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %87 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %86, i32 0, i32 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* @READ, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  %92 = load i32, i32* @claw_irq_tasklet, align 4
  %93 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %94 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i64, i64* @READ, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %96
  %98 = ptrtoint %struct.TYPE_6__* %97 to i64
  %99 = call i32 @tasklet_init(i32* %91, i32 %92, i64 %98)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %269, %83
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %272

103:                                              ; preds = %100
  %104 = load i32, i32* @trace, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %108 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = call i32 @init_waitqueue_head(i32* %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @WRITE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %103
  %119 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %120 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* @WRITE, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  %126 = call i32 @skb_queue_head_init(i32* %125)
  br label %127

127:                                              ; preds = %118, %103
  %128 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %129 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %128, i32 0, i32 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  store i64 0, i64* %134, align 8
  %135 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %136 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @CLAW_TIMER, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %145 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %143
  store i32 %152, i32* %150, align 8
  %153 = call i32 @init_timer(%struct.timer_list* %9)
  %154 = load i64, i64* @claw_timer, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %9, i32 0, i32 2
  store i8* %155, i8** %156, align 8
  %157 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %158 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %157, i32 0, i32 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = ptrtoint %struct.TYPE_6__* %162 to i64
  %164 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %9, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = load i64, i64* @jiffies, align 8
  %166 = load i32, i32* @HZ, align 4
  %167 = mul nsw i32 15, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %165, %168
  %170 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %9, i32 0, i32 1
  store i64 %169, i64* %170, align 8
  %171 = call i32 @add_timer(%struct.timer_list* %9)
  %172 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %173 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %172, i32 0, i32 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = call i32 @get_ccwdev_lock(%struct.TYPE_7__* %179)
  %181 = load i64, i64* %6, align 8
  %182 = call i32 @spin_lock_irqsave(i32 %180, i64 %181)
  %183 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %184 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %183, i32 0, i32 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %187
  %189 = ptrtoint %struct.TYPE_6__* %188 to i64
  store i64 %189, i64* %7, align 8
  %190 = load i32, i32* @CLAW_START_HALT_IO, align 4
  %191 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %192 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %191, i32 0, i32 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  store i32 %190, i32* %197, align 8
  store i32 0, i32* %4, align 4
  %198 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %199 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %198, i32 0, i32 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 4
  %205 = call i32 @add_wait_queue(i32* %204, i32* @wait)
  %206 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %207 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %206, i32 0, i32 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = bitcast %struct.TYPE_7__* %213 to %struct.ccw_device*
  %215 = load i64, i64* %7, align 8
  %216 = call i32 @ccw_device_halt(%struct.ccw_device* %214, i64 %215)
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %218 = call i32 @set_current_state(i32 %217)
  %219 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %220 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %219, i32 0, i32 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = call i32 @get_ccwdev_lock(%struct.TYPE_7__* %226)
  %228 = load i64, i64* %6, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32 %227, i64 %228)
  %230 = call i32 (...) @schedule()
  %231 = load i32, i32* @TASK_RUNNING, align 4
  %232 = call i32 @set_current_state(i32 %231)
  %233 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %234 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %233, i32 0, i32 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = call i32 @remove_wait_queue(i32* %239, i32* @wait)
  %241 = load i32, i32* %4, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %127
  %244 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %245 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %244, i32 0, i32 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %4, align 4
  %253 = call i32 @ccw_check_return_code(%struct.TYPE_7__* %251, i32 %252)
  br label %254

254:                                              ; preds = %243, %127
  %255 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %256 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %255, i32 0, i32 4
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @CLAW_TIMER, align 4
  %264 = and i32 %262, %263
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %254
  %267 = call i32 @del_timer(%struct.timer_list* %9)
  br label %268

268:                                              ; preds = %266, %254
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %5, align 4
  br label %100

272:                                              ; preds = %100
  %273 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %274 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %273, i32 0, i32 4
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %274, align 8
  %276 = load i64, i64* @READ, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %281 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %280, i32 0, i32 4
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* @WRITE, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %279, %287
  %289 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %290 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %291 = or i32 %289, %290
  %292 = xor i32 %291, -1
  %293 = and i32 %288, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %315, label %295

295:                                              ; preds = %272
  %296 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %297 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %296, i32 0, i32 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = load i64, i64* @READ, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %304 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %303, i32 0, i32 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i32, i32* @WRITE, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %302, %310
  %312 = load i32, i32* @CLAW_TIMER, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %516

315:                                              ; preds = %295, %272
  %316 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %317 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %316, i32 0, i32 4
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = load i64, i64* @READ, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = load %struct.net_device*, %struct.net_device** %3, align 8
  %325 = getelementptr inbounds %struct.net_device, %struct.net_device* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @dev_info(i32* %323, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* @trace, align 4
  %329 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %330

330:                                              ; preds = %395, %315
  %331 = load i32, i32* %5, align 4
  %332 = icmp slt i32 %331, 2
  br i1 %332, label %333, label %398

333:                                              ; preds = %330
  %334 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %335 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %334, i32 0, i32 4
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = call i32 @get_ccwdev_lock(%struct.TYPE_7__* %341)
  %343 = load i64, i64* %6, align 8
  %344 = call i32 @spin_lock_irqsave(i32 %342, i64 %343)
  %345 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %346 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %345, i32 0, i32 4
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i64 %349
  %351 = ptrtoint %struct.TYPE_6__* %350 to i64
  store i64 %351, i64* %7, align 8
  %352 = load i32, i32* @CLAW_STOP, align 4
  %353 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %354 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %353, i32 0, i32 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 3
  store i32 %352, i32* %359, align 8
  %360 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %361 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %360, i32 0, i32 4
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %361, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 2
  %367 = bitcast %struct.TYPE_7__** %366 to %struct.ccw_device*
  %368 = load i64, i64* %7, align 8
  %369 = call i32 @ccw_device_halt(%struct.ccw_device* %367, i64 %368)
  store i32 %369, i32* %4, align 4
  %370 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %371 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %370, i32 0, i32 4
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = load i32, i32* %5, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = call i32 @get_ccwdev_lock(%struct.TYPE_7__* %377)
  %379 = load i64, i64* %6, align 8
  %380 = call i32 @spin_unlock_irqrestore(i32 %378, i64 %379)
  %381 = load i32, i32* %4, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %333
  %384 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %385 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %384, i32 0, i32 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  %387 = load i32, i32* %5, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = load i32, i32* %4, align 4
  %393 = call i32 @ccw_check_return_code(%struct.TYPE_7__* %391, i32 %392)
  br label %394

394:                                              ; preds = %383, %333
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %5, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %5, align 4
  br label %330

398:                                              ; preds = %330
  %399 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %400 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %399, i32 0, i32 3
  %401 = load i32*, i32** %400, align 8
  %402 = ptrtoint i32* %401 to i64
  %403 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %404 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %403, i32 0, i32 12
  %405 = load i32, i32* %404, align 4
  %406 = call i64 @pages_to_order_of_mag(i32 %405)
  %407 = trunc i64 %406 to i32
  %408 = call i32 @free_pages(i64 %402, i32 %407)
  %409 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %410 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %409, i32 0, i32 8
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @PAGE_SIZE, align 8
  %415 = icmp slt i64 %413, %414
  br i1 %415, label %416, label %427

416:                                              ; preds = %398
  %417 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %418 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %417, i32 0, i32 2
  %419 = load i32*, i32** %418, align 8
  %420 = ptrtoint i32* %419 to i64
  %421 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %422 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %421, i32 0, i32 11
  %423 = load i32, i32* %422, align 8
  %424 = call i64 @pages_to_order_of_mag(i32 %423)
  %425 = trunc i64 %424 to i32
  %426 = call i32 @free_pages(i64 %420, i32 %425)
  br label %448

427:                                              ; preds = %398
  %428 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %429 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %428, i32 0, i32 10
  %430 = load %struct.ccwbk*, %struct.ccwbk** %429, align 8
  store %struct.ccwbk* %430, %struct.ccwbk** %10, align 8
  br label %431

431:                                              ; preds = %434, %427
  %432 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %433 = icmp ne %struct.ccwbk* %432, null
  br i1 %433, label %434, label %447

434:                                              ; preds = %431
  %435 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %436 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %439 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %438, i32 0, i32 9
  %440 = load i32, i32* %439, align 8
  %441 = call i64 @pages_to_order_of_mag(i32 %440)
  %442 = trunc i64 %441 to i32
  %443 = call i32 @free_pages(i64 %437, i32 %442)
  %444 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %445 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %444, i32 0, i32 0
  %446 = load %struct.ccwbk*, %struct.ccwbk** %445, align 8
  store %struct.ccwbk* %446, %struct.ccwbk** %10, align 8
  br label %431

447:                                              ; preds = %431
  br label %448

448:                                              ; preds = %447, %416
  %449 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %450 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %449, i32 0, i32 8
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @PAGE_SIZE, align 8
  %455 = icmp slt i64 %453, %454
  br i1 %455, label %456, label %467

456:                                              ; preds = %448
  %457 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %458 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = ptrtoint i32* %459 to i64
  %461 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %462 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 8
  %464 = call i64 @pages_to_order_of_mag(i32 %463)
  %465 = trunc i64 %464 to i32
  %466 = call i32 @free_pages(i64 %460, i32 %465)
  br label %488

467:                                              ; preds = %448
  %468 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %469 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %468, i32 0, i32 6
  %470 = load %struct.ccwbk*, %struct.ccwbk** %469, align 8
  store %struct.ccwbk* %470, %struct.ccwbk** %10, align 8
  br label %471

471:                                              ; preds = %474, %467
  %472 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %473 = icmp ne %struct.ccwbk* %472, null
  br i1 %473, label %474, label %487

474:                                              ; preds = %471
  %475 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %476 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %479 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %478, i32 0, i32 5
  %480 = load i32, i32* %479, align 8
  %481 = call i64 @pages_to_order_of_mag(i32 %480)
  %482 = trunc i64 %481 to i32
  %483 = call i32 @free_pages(i64 %477, i32 %482)
  %484 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %485 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %484, i32 0, i32 0
  %486 = load %struct.ccwbk*, %struct.ccwbk** %485, align 8
  store %struct.ccwbk* %486, %struct.ccwbk** %10, align 8
  br label %471

487:                                              ; preds = %471
  br label %488

488:                                              ; preds = %487, %456
  %489 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %490 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %489, i32 0, i32 0
  store i64 0, i64* %490, align 8
  %491 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %492 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %491, i32 0, i32 4
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %492, align 8
  %494 = load i64, i64* @READ, align 8
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 0
  store i32 0, i32* %496, align 8
  %497 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %498 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %497, i32 0, i32 4
  %499 = load %struct.TYPE_6__*, %struct.TYPE_6__** %498, align 8
  %500 = load i32, i32* @WRITE, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 0
  store i32 0, i32* %503, align 8
  %504 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %505 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %504, i32 0, i32 3
  store i32* null, i32** %505, align 8
  %506 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %507 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %506, i32 0, i32 2
  store i32* null, i32** %507, align 8
  %508 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %509 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %508, i32 0, i32 1
  store i32* null, i32** %509, align 8
  %510 = load %struct.net_device*, %struct.net_device** %3, align 8
  %511 = call i32 @claw_clear_busy(%struct.net_device* %510)
  %512 = load i32, i32* @trace, align 4
  %513 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %514 = load i32, i32* @EIO, align 4
  %515 = sub nsw i32 0, %514
  store i32 %515, i32* %2, align 4
  br label %521

516:                                              ; preds = %295
  %517 = load %struct.net_device*, %struct.net_device** %3, align 8
  %518 = call i32 @claw_clear_busy(%struct.net_device* %517)
  %519 = load i32, i32* @trace, align 4
  %520 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %519, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %521

521:                                              ; preds = %516, %488, %29
  %522 = load i32, i32* %2, align 4
  ret i32 %522
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @init_ccw_bk(%struct.net_device*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @claw_set_busy(%struct.net_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_timer(%struct.timer_list*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @ccw_device_halt(%struct.ccw_device*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @ccw_check_return_code(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @del_timer(%struct.timer_list*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @pages_to_order_of_mag(i32) #1

declare dso_local i32 @claw_clear_busy(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
