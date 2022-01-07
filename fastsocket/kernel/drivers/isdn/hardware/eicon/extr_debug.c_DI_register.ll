; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_DI_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_DI_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i8*, i64, %struct.TYPE_8__*, i32, i8*, i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i32, i8*, i8*, i64 }
%struct.TYPE_10__ = type { i32 }

@dbg_q_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"register\00", align 1
@clients = common dso_local global %struct.TYPE_11__* null, align 8
@DBG_HANDLE_REG_NEW = common dso_local global i64 0, align 8
@DI_deregister = common dso_local global i32 0, align 4
@DI_format_locked = common dso_local global i8* null, align 8
@DiProcessEventLog = common dso_local global i32 0, align 4
@DI_format_old = common dso_local global i32 0, align 4
@DBG_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"DIMAINT - drv # %d = '%s' registered\00", align 1
@dbg_queue = common dso_local global i32 0, align 4
@dbg_sequence = common dso_local global i32 0, align 4
@MSG_TYPE_STRING = common dso_local global i32 0, align 4
@DLI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @DI_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DI_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call i32 @diva_os_get_time(i8** %4, i8** %5)
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = bitcast %struct.TYPE_8__* %25 to %struct.TYPE_10__*
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %35, label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24, %1
  br label %250

36:                                               ; preds = %30
  %37 = call i32 @diva_os_enter_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %87, %36
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = icmp eq %struct.TYPE_8__* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %250

54:                                               ; preds = %43
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %87

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i32 %70, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  br label %90

77:                                               ; preds = %63
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %90

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %38

90:                                               ; preds = %85, %76, %38
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %248

93:                                               ; preds = %90
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %99, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  store i8* %100, i8** %105, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i8* %106, i8** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcpy(i32 %117, i8* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %93
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %149

143:                                              ; preds = %93
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** @clients, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %143, %132
  %150 = load i64, i64* @DBG_HANDLE_REG_NEW, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* @DI_deregister, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 8
  %160 = load i8*, i8** @DI_format_locked, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* @DiProcessEventLog, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 8
  %166 = load i8*, i8** @DI_format_locked, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 6
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %149
  %174 = load i32, i32* @DI_format_old, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %173, %149
  %178 = load i64, i64* @DBG_MAGIC, align 8
  %179 = inttoptr i64 %178 to %struct.TYPE_8__*
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %181, align 8
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @sprintf(i8* %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %183, i8* %186)
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %208, %177
  %189 = load i32, i32* @dbg_queue, align 4
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = add i64 %192, 56
  %194 = trunc i64 %193 to i32
  %195 = call i64 @queueAllocMsg(i32 %189, i32 %194)
  %196 = inttoptr i64 %195 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %196, %struct.TYPE_9__** %10, align 8
  %197 = icmp ne %struct.TYPE_9__* %196, null
  %198 = xor i1 %197, true
  br i1 %198, label %199, label %209

199:                                              ; preds = %188
  %200 = load i32, i32* @dbg_queue, align 4
  %201 = call i64 @queuePeekMsg(i32 %200, i32* %13)
  %202 = inttoptr i64 %201 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %202, %struct.TYPE_9__** %10, align 8
  %203 = icmp ne %struct.TYPE_9__* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* @dbg_queue, align 4
  %206 = call i32 @queueFreeMsg(i32 %205)
  br label %208

207:                                              ; preds = %199
  br label %209

208:                                              ; preds = %204
  br label %188

209:                                              ; preds = %207, %188
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %211 = icmp ne %struct.TYPE_9__* %210, null
  br i1 %211, label %212, label %247

212:                                              ; preds = %209
  %213 = load i32, i32* @dbg_sequence, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @dbg_sequence, align 4
  %215 = sext i32 %213 to i64
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 7
  store i64 %215, i64* %217, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 6
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** %5, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 5
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @MSG_TYPE_STRING, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @DLI_REG, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  store i64 0, i64* %231, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  store i64 0, i64* %233, align 8
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i64 1
  %240 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, 1
  %243 = call i32 @memcpy(%struct.TYPE_9__* %239, i8* %240, i32 %242)
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %245 = call i32 @queueCompleteMsg(%struct.TYPE_9__* %244)
  %246 = call i32 (...) @diva_maint_wakeup_read()
  br label %247

247:                                              ; preds = %212, %209
  br label %248

248:                                              ; preds = %247, %90
  %249 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %52, %35
  ret void
}

declare dso_local i32 @diva_os_get_time(i8**, i8**) #1

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @diva_os_leave_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i64 @queueAllocMsg(i32, i32) #1

declare dso_local i64 @queuePeekMsg(i32, i32*) #1

declare dso_local i32 @queueFreeMsg(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @queueCompleteMsg(%struct.TYPE_9__*) #1

declare dso_local i32 @diva_maint_wakeup_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
