; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_initcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_initcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__*, i64, i64, i32, i32*, i32, i64, i64, i8*, i32*, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32*, i32*, i32*, i64, i64, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.cardstate*)* }
%struct.gigaset_driver = type { i32 }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"allocating cs\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"maximum number of devices exceeded\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"allocating bcs[0..%d]\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"allocating inbuf\00", align 1
@gigaset_handle_event = common dso_local global i32 0, align 4
@gigaset_tab_nocid = common dso_local global i32 0, align 4
@gigaset_tab_cid = common dso_local global i32 0, align 4
@M_UNKNOWN = common dso_local global i32 0, align 4
@MS_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"setting up bcs[%d].read\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"could not allocate channel %d data\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"setting up at_state\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"setting up inbuf\00", align 1
@INS_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"setting up cmdbuf\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"setting up iif\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"error registering ISDN device\0A\00", align 1
@VALID_ID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"setting up hw\00", align 1
@timer_tick = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GIG_TICK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"cs initialized\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cardstate* @gigaset_initcs(%struct.gigaset_driver* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca %struct.gigaset_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cardstate*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.gigaset_driver* %0, %struct.gigaset_driver** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.cardstate* null, %struct.cardstate** %14, align 8
  %17 = load i32, i32* @DEBUG_INIT, align 4
  %18 = call i32 (i32, i8*, ...) @gig_dbg(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.gigaset_driver*, %struct.gigaset_driver** %8, align 8
  %20 = call %struct.cardstate* @alloc_cs(%struct.gigaset_driver* %19)
  store %struct.cardstate* %20, %struct.cardstate** %14, align 8
  %21 = icmp ne %struct.cardstate* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cardstate* null, %struct.cardstate** %7, align 8
  br label %277

24:                                               ; preds = %6
  %25 = load i32, i32* @DEBUG_INIT, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 (i32, i8*, ...) @gig_dbg(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 18
  store i32* %35, i32** %37, align 8
  %38 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 18
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %24
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %272

44:                                               ; preds = %24
  %45 = load i32, i32* @DEBUG_INIT, align 4
  %46 = call i32 (i32, i8*, ...) @gig_dbg(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 4, i32 %47)
  %49 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %50 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %49, i32 0, i32 17
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %52 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %51, i32 0, i32 17
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %272

57:                                               ; preds = %44
  %58 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %59 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %62 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %68 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 38
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  %74 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %75 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %74, i32 0, i32 6
  %76 = call i32 @init_timer(%struct.TYPE_6__* %75)
  %77 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 37
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 36
  store i64 0, i64* %81, align 8
  %82 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %83 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %82, i32 0, i32 35
  store i64 0, i64* %83, align 8
  %84 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %85 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %84, i32 0, i32 34
  %86 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %87 = ptrtoint %struct.cardstate* %86 to i64
  %88 = call i32 @tasklet_init(i32* %85, i32* @gigaset_handle_event, i64 %87)
  %89 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %90 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %89, i32 0, i32 33
  store i64 0, i64* %90, align 8
  %91 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %92 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %91, i32 0, i32 32
  store i64 0, i64* %92, align 8
  %93 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %94 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %93, i32 0, i32 4
  store i32 -1, i32* %94, align 8
  %95 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %96 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %95, i32 0, i32 31
  store i64 0, i64* %96, align 8
  %97 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %98 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %97, i32 0, i32 30
  store i32* null, i32** %98, align 8
  %99 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %100 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %99, i32 0, i32 29
  store i32* null, i32** %100, align 8
  %101 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %102 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %101, i32 0, i32 28
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %107 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @gigaset_tab_nocid, align 4
  %109 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %110 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %109, i32 0, i32 27
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @gigaset_tab_cid, align 4
  %112 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %113 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %112, i32 0, i32 26
  store i32 %111, i32* %113, align 4
  %114 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %115 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %114, i32 0, i32 25
  %116 = call i32 @init_waitqueue_head(i32* %115)
  %117 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %118 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %117, i32 0, i32 24
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @M_UNKNOWN, align 4
  %120 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %121 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %120, i32 0, i32 23
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @MS_UNINITIALIZED, align 4
  %123 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %124 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %123, i32 0, i32 22
  store i32 %122, i32* %124, align 4
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %147, %57
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %125
  %130 = load i32, i32* @DEBUG_INIT, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i32 (i32, i8*, ...) @gig_dbg(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %134 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %133, i32 0, i32 18
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @gigaset_initbcs(i32* %138, %struct.cardstate* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %16, align 4
  %145 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  br label %272

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %125

150:                                              ; preds = %125
  %151 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %152 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load i32, i32* @DEBUG_INIT, align 4
  %156 = call i32 (i32, i8*, ...) @gig_dbg(i32 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %157 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %158 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %157, i32 0, i32 7
  %159 = call i32 @spin_lock_init(i32* %158)
  %160 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %161 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %160, i32 0, i32 21
  %162 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %163 = call i32 @gigaset_at_init(i32* %161, i32* null, %struct.cardstate* %162, i32 0)
  %164 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %165 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %164, i32 0, i32 20
  store i64 0, i64* %165, align 8
  %166 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %167 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %166, i32 0, i32 19
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* @DEBUG_INIT, align 4
  %169 = call i32 (i32, i8*, ...) @gig_dbg(i32 %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %150
  %173 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %174 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %173, i32 0, i32 17
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %177 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %176, i32 0, i32 18
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %180 = load i32, i32* @INS_command, align 4
  %181 = call i32 @gigaset_inbuf_init(i8* %175, i32* %178, %struct.cardstate* %179, i32 %180)
  br label %189

182:                                              ; preds = %150
  %183 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %184 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %183, i32 0, i32 17
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %187 = load i32, i32* @INS_command, align 4
  %188 = call i32 @gigaset_inbuf_init(i8* %185, i32* null, %struct.cardstate* %186, i32 %187)
  br label %189

189:                                              ; preds = %182, %172
  %190 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %191 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %190, i32 0, i32 16
  store i64 0, i64* %191, align 8
  %192 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %193 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %192, i32 0, i32 15
  store i64 0, i64* %193, align 8
  %194 = load i32, i32* @DEBUG_INIT, align 4
  %195 = call i32 (i32, i8*, ...) @gig_dbg(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %196 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %197 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %196, i32 0, i32 13
  store i32* null, i32** %197, align 8
  %198 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %199 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %198, i32 0, i32 14
  store i32 0, i32* %199, align 8
  %200 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %201 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %200, i32 0, i32 12
  %202 = call i32 @spin_lock_init(i32* %201)
  %203 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %204 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %203, i32 0, i32 11
  store i64 0, i64* %204, align 8
  %205 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %206 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %205, i32 0, i32 10
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* @DEBUG_INIT, align 4
  %208 = call i32 (i32, i8*, ...) @gig_dbg(i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %209 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = call i32 @gigaset_register_to_LL(%struct.cardstate* %209, i8* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %189
  %214 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %272

215:                                              ; preds = %189
  %216 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %217 = load i32, i32* @VALID_ID, align 4
  %218 = call i32 @make_valid(%struct.cardstate* %216, i32 %217)
  %219 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %220 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %220, align 8
  %223 = load i32, i32* @DEBUG_INIT, align 4
  %224 = call i32 (i32, i8*, ...) @gig_dbg(i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %225 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %226 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %225, i32 0, i32 9
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32 (%struct.cardstate*)*, i32 (%struct.cardstate*)** %228, align 8
  %230 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %231 = call i32 %229(%struct.cardstate* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %215
  br label %272

234:                                              ; preds = %215
  %235 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %236 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %235, i32 0, i32 8
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %236, align 8
  %239 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %240 = call i32 @gigaset_if_init(%struct.cardstate* %239)
  %241 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %242 = call i32 @gigaset_init_dev_sysfs(%struct.cardstate* %241)
  %243 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %244 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %243, i32 0, i32 7
  %245 = load i64, i64* %15, align 8
  %246 = call i32 @spin_lock_irqsave(i32* %244, i64 %245)
  %247 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %248 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  %249 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %250 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %249, i32 0, i32 7
  %251 = load i64, i64* %15, align 8
  %252 = call i32 @spin_unlock_irqrestore(i32* %250, i64 %251)
  %253 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %254 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %253, i32 0, i32 6
  %255 = load i32, i32* @timer_tick, align 4
  %256 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %257 = ptrtoint %struct.cardstate* %256 to i64
  %258 = call i32 @setup_timer(%struct.TYPE_6__* %254, i32 %255, i64 %257)
  %259 = load i64, i64* @jiffies, align 8
  %260 = load i32, i32* @GIG_TICK, align 4
  %261 = call i64 @msecs_to_jiffies(i32 %260)
  %262 = add nsw i64 %259, %261
  %263 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %264 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  store i64 %262, i64* %265, align 8
  %266 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %267 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %266, i32 0, i32 6
  %268 = call i32 @add_timer(%struct.TYPE_6__* %267)
  %269 = load i32, i32* @DEBUG_INIT, align 4
  %270 = call i32 (i32, i8*, ...) @gig_dbg(i32 %269, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %271 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  store %struct.cardstate* %271, %struct.cardstate** %7, align 8
  br label %277

272:                                              ; preds = %233, %213, %143, %55, %42
  %273 = load i32, i32* @DEBUG_INIT, align 4
  %274 = call i32 (i32, i8*, ...) @gig_dbg(i32 %273, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %275 = load %struct.cardstate*, %struct.cardstate** %14, align 8
  %276 = call i32 @gigaset_freecs(%struct.cardstate* %275)
  store %struct.cardstate* null, %struct.cardstate** %7, align 8
  br label %277

277:                                              ; preds = %272, %234, %22
  %278 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  ret %struct.cardstate* %278
}

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local %struct.cardstate* @alloc_cs(%struct.gigaset_driver*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32*, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @gigaset_initbcs(i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_at_init(i32*, i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_inbuf_init(i8*, i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_register_to_LL(%struct.cardstate*, i8*) #1

declare dso_local i32 @make_valid(%struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_if_init(%struct.cardstate*) #1

declare dso_local i32 @gigaset_init_dev_sysfs(%struct.cardstate*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @setup_timer(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @gigaset_freecs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
