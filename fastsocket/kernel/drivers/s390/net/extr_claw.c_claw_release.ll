; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.claw_privbk = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, i64, i32*, i32, %struct.ccwbk*, %struct.ccwbk*, %struct.ccwbk*, i32*, i32*, i32*, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__*, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ccwbk = type { %struct.ccwbk*, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"release\00", align 1
@TB_STOP = common dso_local global i32 0, align 4
@CLAW_STOP = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"none2fre\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"freebufs\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"freeread\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"freewrit\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"clearptr\00", align 1
@CLAW_PENDING = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [84 x i8] c"Deactivating %s completed with incorrect subchannel status (read %02x, write %02x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"badclose\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rlsexit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @claw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claw_release(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.claw_privbk*, align 8
  %9 = alloca %struct.ccwbk*, align 8
  %10 = alloca %struct.ccwbk*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %413

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.claw_privbk*
  store %struct.claw_privbk* %21, %struct.claw_privbk** %8, align 8
  %22 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %23 = icmp ne %struct.claw_privbk* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %413

25:                                               ; preds = %17
  %26 = load i32, i32* @trace, align 4
  %27 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %29 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @TB_STOP, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @claw_setbit_busy(i32 %30, %struct.net_device* %31)
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %153, %25
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %156

36:                                               ; preds = %33
  %37 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %38 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %37, i32 0, i32 5
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call i32 @get_ccwdev_lock(%struct.TYPE_10__* %44)
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32 %45, i64 %46)
  %48 = load i32, i32* @CLAW_STOP, align 4
  %49 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %50 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %49, i32 0, i32 5
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  store i32 %48, i32* %55, align 8
  %56 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %57 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %56, i32 0, i32 5
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %64 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %63, i32 0, i32 5
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = ptrtoint %struct.TYPE_7__* %68 to i64
  store i64 %69, i64* %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @WRITE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %36
  %74 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %75 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %74, i32 0, i32 5
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* @WRITE, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = call i32 @claw_purge_skb_queue(i32* %80)
  br label %82

82:                                               ; preds = %73, %36
  %83 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %84 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %83, i32 0, i32 5
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @ccw_device_halt(%struct.TYPE_10__* %90, i64 %91)
  store i32 %92, i32* %4, align 4
  %93 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %94 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %82
  %98 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %99 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %98, i32 0, i32 5
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = call i32 @init_waitqueue_head(i32* %104)
  br label %106

106:                                              ; preds = %97, %82
  %107 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %108 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %107, i32 0, i32 5
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = call i32 @add_wait_queue(i32* %113, i32* @wait)
  %115 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %116 = call i32 @set_current_state(i32 %115)
  %117 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %118 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %117, i32 0, i32 5
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = call i32 @get_ccwdev_lock(%struct.TYPE_10__* %124)
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32 %125, i64 %126)
  %128 = call i32 (...) @schedule()
  %129 = load i32, i32* @TASK_RUNNING, align 4
  %130 = call i32 @set_current_state(i32 %129)
  %131 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %132 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %131, i32 0, i32 5
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = call i32 @remove_wait_queue(i32* %137, i32* @wait)
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %106
  %142 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %143 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %142, i32 0, i32 5
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @ccw_check_return_code(%struct.TYPE_10__* %149, i32 %150)
  br label %152

152:                                              ; preds = %141, %106
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %5, align 4
  br label %33

156:                                              ; preds = %33
  %157 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %158 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %157, i32 0, i32 21
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %163 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %162, i32 0, i32 21
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @dev_kfree_skb_any(i32* %164)
  %166 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %167 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %166, i32 0, i32 21
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %161, %156
  %169 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %170 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 1
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* @trace, align 4
  %175 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %413

176:                                              ; preds = %168
  %177 = load i32, i32* @trace, align 4
  %178 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %179 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %180 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %179, i32 0, i32 14
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %185 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %184, i32 0, i32 14
  %186 = load i32*, i32** %185, align 8
  %187 = ptrtoint i32* %186 to i64
  %188 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %189 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %188, i32 0, i32 20
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @pages_to_order_of_mag(i32 %190)
  %192 = trunc i64 %191 to i32
  %193 = call i32 @free_pages(i64 %187, i32 %192)
  br label %194

194:                                              ; preds = %183, %176
  %195 = load i32, i32* @trace, align 4
  %196 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %197 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %198 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %197, i32 0, i32 17
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @PAGE_SIZE, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %194
  %205 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %206 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %205, i32 0, i32 13
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %211 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %210, i32 0, i32 13
  %212 = load i32*, i32** %211, align 8
  %213 = ptrtoint i32* %212 to i64
  %214 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %215 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %214, i32 0, i32 19
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @pages_to_order_of_mag(i32 %216)
  %218 = trunc i64 %217 to i32
  %219 = call i32 @free_pages(i64 %213, i32 %218)
  br label %220

220:                                              ; preds = %209, %204
  br label %242

221:                                              ; preds = %194
  %222 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %223 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %222, i32 0, i32 11
  %224 = load %struct.ccwbk*, %struct.ccwbk** %223, align 8
  store %struct.ccwbk* %224, %struct.ccwbk** %10, align 8
  br label %225

225:                                              ; preds = %228, %221
  %226 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %227 = icmp ne %struct.ccwbk* %226, null
  br i1 %227, label %228, label %241

228:                                              ; preds = %225
  %229 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %230 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %233 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %232, i32 0, i32 18
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @pages_to_order_of_mag(i32 %234)
  %236 = trunc i64 %235 to i32
  %237 = call i32 @free_pages(i64 %231, i32 %236)
  %238 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %239 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %238, i32 0, i32 0
  %240 = load %struct.ccwbk*, %struct.ccwbk** %239, align 8
  store %struct.ccwbk* %240, %struct.ccwbk** %10, align 8
  br label %225

241:                                              ; preds = %225
  br label %242

242:                                              ; preds = %241, %220
  %243 = load i32, i32* @trace, align 4
  %244 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %243, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %245 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %246 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %245, i32 0, i32 17
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @PAGE_SIZE, align 8
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %242
  %253 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %254 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %253, i32 0, i32 12
  %255 = load i32*, i32** %254, align 8
  %256 = ptrtoint i32* %255 to i64
  %257 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %258 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %257, i32 0, i32 16
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @pages_to_order_of_mag(i32 %259)
  %261 = trunc i64 %260 to i32
  %262 = call i32 @free_pages(i64 %256, i32 %261)
  br label %284

263:                                              ; preds = %242
  %264 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %265 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %264, i32 0, i32 10
  %266 = load %struct.ccwbk*, %struct.ccwbk** %265, align 8
  store %struct.ccwbk* %266, %struct.ccwbk** %10, align 8
  br label %267

267:                                              ; preds = %270, %263
  %268 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %269 = icmp ne %struct.ccwbk* %268, null
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %272 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %275 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %274, i32 0, i32 15
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @pages_to_order_of_mag(i32 %276)
  %278 = trunc i64 %277 to i32
  %279 = call i32 @free_pages(i64 %273, i32 %278)
  %280 = load %struct.ccwbk*, %struct.ccwbk** %10, align 8
  %281 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %280, i32 0, i32 0
  %282 = load %struct.ccwbk*, %struct.ccwbk** %281, align 8
  store %struct.ccwbk* %282, %struct.ccwbk** %10, align 8
  br label %267

283:                                              ; preds = %267
  br label %284

284:                                              ; preds = %283, %252
  %285 = load i32, i32* @trace, align 4
  %286 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %287 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %288 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %287, i32 0, i32 2
  store i32 0, i32* %288, align 8
  %289 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %290 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %289, i32 0, i32 14
  store i32* null, i32** %290, align 8
  %291 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %292 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %291, i32 0, i32 13
  store i32* null, i32** %292, align 8
  %293 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %294 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %293, i32 0, i32 12
  store i32* null, i32** %294, align 8
  %295 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %296 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %295, i32 0, i32 1
  store i32 0, i32* %296, align 4
  %297 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %298 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %297, i32 0, i32 0
  store i32 0, i32* %298, align 8
  %299 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %300 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %299, i32 0, i32 11
  %301 = load %struct.ccwbk*, %struct.ccwbk** %300, align 8
  store %struct.ccwbk* %301, %struct.ccwbk** %9, align 8
  br label %302

302:                                              ; preds = %305, %284
  %303 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %304 = icmp ne %struct.ccwbk* %303, null
  br i1 %304, label %305, label %318

305:                                              ; preds = %302
  %306 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %307 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  store i32 65535, i32* %308, align 8
  %309 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %310 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  store i32 255, i32* %311, align 4
  %312 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %313 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  store i32 0, i32* %314, align 8
  %315 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %316 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %315, i32 0, i32 0
  %317 = load %struct.ccwbk*, %struct.ccwbk** %316, align 8
  store %struct.ccwbk* %317, %struct.ccwbk** %9, align 8
  br label %302

318:                                              ; preds = %302
  br label %319

319:                                              ; preds = %324, %318
  %320 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %321 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %320, i32 0, i32 10
  %322 = load %struct.ccwbk*, %struct.ccwbk** %321, align 8
  %323 = icmp ne %struct.ccwbk* %322, null
  br i1 %323, label %324, label %349

324:                                              ; preds = %319
  %325 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %326 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %325, i32 0, i32 10
  %327 = load %struct.ccwbk*, %struct.ccwbk** %326, align 8
  store %struct.ccwbk* %327, %struct.ccwbk** %9, align 8
  %328 = load i32, i32* @CLAW_PENDING, align 4
  %329 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %330 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 2
  store i32 %328, i32* %331, align 8
  %332 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %333 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %332, i32 0, i32 0
  %334 = load %struct.ccwbk*, %struct.ccwbk** %333, align 8
  %335 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %336 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %335, i32 0, i32 10
  store %struct.ccwbk* %334, %struct.ccwbk** %336, align 8
  %337 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %338 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %337, i32 0, i32 9
  %339 = load %struct.ccwbk*, %struct.ccwbk** %338, align 8
  %340 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %341 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %340, i32 0, i32 0
  store %struct.ccwbk* %339, %struct.ccwbk** %341, align 8
  %342 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %343 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %344 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %343, i32 0, i32 9
  store %struct.ccwbk* %342, %struct.ccwbk** %344, align 8
  %345 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %346 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %346, align 8
  br label %319

349:                                              ; preds = %319
  %350 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %351 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %350, i32 0, i32 7
  store i32* null, i32** %351, align 8
  %352 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %353 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %352, i32 0, i32 3
  store i32 -1, i32* %353, align 4
  %354 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %355 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %354, i32 0, i32 4
  store i32 1, i32* %355, align 8
  %356 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %357 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %356, i32 0, i32 6
  store i64 0, i64* %357, align 8
  %358 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %359 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %358, i32 0, i32 5
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %359, align 8
  %361 = load i64, i64* @READ, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %366 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %365, i32 0, i32 5
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %366, align 8
  %368 = load i32, i32* @WRITE, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %364, %372
  %374 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %375 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %376 = or i32 %374, %375
  %377 = xor i32 %376, -1
  %378 = and i32 %373, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %410

380:                                              ; preds = %349
  %381 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %382 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %381, i32 0, i32 5
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %382, align 8
  %384 = load i64, i64* @READ, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_10__*, %struct.TYPE_10__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 0
  %389 = load %struct.net_device*, %struct.net_device** %3, align 8
  %390 = getelementptr inbounds %struct.net_device, %struct.net_device* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %393 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %392, i32 0, i32 5
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %393, align 8
  %395 = load i64, i64* @READ, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %400 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %399, i32 0, i32 5
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %400, align 8
  %402 = load i32, i32* @WRITE, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @dev_warn(i32* %388, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i32 %391, i32 %398, i32 %406)
  %408 = load i32, i32* @trace, align 4
  %409 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %410

410:                                              ; preds = %380, %349
  %411 = load i32, i32* @trace, align 4
  %412 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %411, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %413

413:                                              ; preds = %410, %173, %24, %16
  %414 = load i32, i32* %2, align 4
  ret i32 %414
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @claw_setbit_busy(i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @claw_purge_skb_queue(i32*) #1

declare dso_local i32 @ccw_device_halt(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @ccw_check_return_code(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @pages_to_order_of_mag(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
