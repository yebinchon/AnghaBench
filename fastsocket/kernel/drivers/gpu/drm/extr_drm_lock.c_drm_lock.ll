; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_lock.c_drm_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_lock.c_drm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__*, i32, %struct.TYPE_8__, i32* }
%struct.TYPE_6__ = type { i64 (%struct.drm_device*)* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_file = type { i32, i32, %struct.drm_master* }
%struct.drm_master = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, i32, i32, i32, %struct.drm_file* }
%struct.drm_lock = type { i64, i32 }

@entry = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@DRM_KERNEL_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Process %d using kernel context %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%d (pid %d) requests lock (0x%08x), flags = 0x%08x\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@_DRM_STAT_LOCKS = common dso_local global i64 0, align 8
@drm_global_mutex = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"has lock\00", align 1
@SIGSTOP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@drm_notifier = common dso_local global i32 0, align 4
@_DRM_LOCK_QUIESCENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"%d waiting for DMA quiescent\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_lock(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lock*, align 8
  %9 = alloca %struct.drm_master*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i32, i32* @entry, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_lock*
  store %struct.drm_lock* %15, %struct.drm_lock** %8, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 2
  %18 = load %struct.drm_master*, %struct.drm_master** %17, align 8
  store %struct.drm_master* %18, %struct.drm_master** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %24 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRM_KERNEL_CONTEXT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @task_pid_nr(i32 %29)
  %31 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %32 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %226

37:                                               ; preds = %3
  %38 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %39 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @task_pid_nr(i32 %41)
  %43 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %44 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %50 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %42, i32 %48, i32 %51)
  %53 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %54 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = call i32 @add_wait_queue(i32* %55, i32* @entry)
  %57 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %58 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %62 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %67 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock_bh(i32* %68)
  br label %70

70:                                               ; preds = %117, %37
  %71 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %72 = call i32 @__set_current_state(i32 %71)
  %73 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %74 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @SIGTERM, align 4
  %80 = load i32, i32* @current, align 4
  %81 = call i32 @send_sig(i32 %79, i32 %80, i32 0)
  %82 = load i32, i32* @EINTR, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %118

84:                                               ; preds = %70
  %85 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %86 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %85, i32 0, i32 0
  %87 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %88 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @drm_lock_take(%struct.TYPE_7__* %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %84
  %93 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %94 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %95 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store %struct.drm_file* %93, %struct.drm_file** %96, align 8
  %97 = load i32, i32* @jiffies, align 4
  %98 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %99 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 4
  %101 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @_DRM_STAT_LOCKS, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = call i32 @atomic_inc(i32* %105)
  br label %118

107:                                              ; preds = %84
  %108 = call i32 @mutex_unlock(i32* @drm_global_mutex)
  %109 = call i32 (...) @schedule()
  %110 = call i32 @mutex_lock(i32* @drm_global_mutex)
  %111 = load i32, i32* @current, align 4
  %112 = call i64 @signal_pending(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @EINTR, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  br label %118

117:                                              ; preds = %107
  br label %70

118:                                              ; preds = %114, %92, %78
  %119 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %120 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = call i32 @spin_lock_bh(i32* %121)
  %123 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %124 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %129 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load i32, i32* @TASK_RUNNING, align 4
  %133 = call i32 @__set_current_state(i32 %132)
  %134 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %135 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = call i32 @remove_wait_queue(i32* %136, i32* @entry)
  %138 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %139 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %145 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %140, i8* %144)
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %118
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %226

150:                                              ; preds = %118
  %151 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %152 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %194, label %155

155:                                              ; preds = %150
  %156 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %157 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %156, i32 0, i32 1
  %158 = call i32 @sigemptyset(i32* %157)
  %159 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %160 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %159, i32 0, i32 1
  %161 = load i32, i32* @SIGSTOP, align 4
  %162 = call i32 @sigaddset(i32* %160, i32 %161)
  %163 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %164 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %163, i32 0, i32 1
  %165 = load i32, i32* @SIGTSTP, align 4
  %166 = call i32 @sigaddset(i32* %164, i32 %165)
  %167 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %168 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %167, i32 0, i32 1
  %169 = load i32, i32* @SIGTTIN, align 4
  %170 = call i32 @sigaddset(i32* %168, i32 %169)
  %171 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %172 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %171, i32 0, i32 1
  %173 = load i32, i32* @SIGTTOU, align 4
  %174 = call i32 @sigaddset(i32* %172, i32 %173)
  %175 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %176 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %179 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i64 %177, i64* %180, align 8
  %181 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %182 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %186 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  store %struct.TYPE_5__* %184, %struct.TYPE_5__** %187, align 8
  %188 = load i32, i32* @drm_notifier, align 4
  %189 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %190 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %189, i32 0, i32 2
  %191 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %192 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %191, i32 0, i32 1
  %193 = call i32 @block_all_signals(i32 %188, %struct.TYPE_8__* %190, i32* %192)
  br label %194

194:                                              ; preds = %155, %150
  %195 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %196 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64 (%struct.drm_device*)*, i64 (%struct.drm_device*)** %198, align 8
  %200 = icmp ne i64 (%struct.drm_device*)* %199, null
  br i1 %200, label %201, label %225

201:                                              ; preds = %194
  %202 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %203 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @_DRM_LOCK_QUIESCENT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %201
  %209 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %210 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64 (%struct.drm_device*)*, i64 (%struct.drm_device*)** %212, align 8
  %214 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %215 = call i64 %213(%struct.drm_device* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %208
  %218 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %219 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %220)
  %222 = load i32, i32* @EBUSY, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %226

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %201, %194
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %217, %148, %28
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @drm_lock_take(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @block_all_signals(i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
