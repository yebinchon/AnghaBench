; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_cf_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_cf_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_8__*)*, i32 (i32)* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i64 }
%struct.call_struc = type { i8*, %struct.call_struc*, i32*, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@deflect_timer_expire = common dso_local global i32 0, align 4
@ISDN_CMD_PROT_IO = common dso_local global i32 0, align 4
@DSS1_CMD_INVOKE = common dso_local global i32 0, align 4
@divert_lock = common dso_local global i32 0, align 4
@next_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d 0x%lx %s%s 0 %s %02x %d%s%s\0A\00", align 1
@DIVERT_DEACTIVATE = common dso_local global i32 0, align 4
@DIVERT_ACTIVATE = common dso_local global i32 0, align 4
@DIVERT_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@divert_if = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" 0 \00", align 1
@divert_head = common dso_local global %struct.call_struc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cf_command(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [60 x i8], align 16
  %23 = alloca %struct.call_struc*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @strchr(i8* %24, i8 signext 46)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %295

30:                                               ; preds = %7
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 127
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %295

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 3
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds [60 x i8], [60 x i8]* %22, i64 0, i64 0
  store i8* %40, i8** %20, align 8
  %41 = load i8*, i8** %20, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %20, align 8
  store i8 48, i8* %41, align 1
  %43 = load i8*, i8** %20, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %20, align 8
  store i8* %43, i8** %21, align 8
  %45 = load i8*, i8** %20, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %20, align 8
  store i8 10, i8* %45, align 1
  %47 = load i8*, i8** %20, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %20, align 8
  store i8 1, i8* %47, align 1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 127
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %20, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %20, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8*, i8** %20, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %20, align 8
  store i8 10, i8* %54, align 1
  %56 = load i8*, i8** %20, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %20, align 8
  store i8 1, i8* %56, align 1
  %58 = load i32, i32* %13, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %20, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %20, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %101

64:                                               ; preds = %37
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %295

71:                                               ; preds = %64
  %72 = load i8*, i8** %14, align 8
  %73 = call i64 @strchr(i8* %72, i8 signext 46)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %295

78:                                               ; preds = %71
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %19, align 4
  %81 = load i8*, i8** %20, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %20, align 8
  store i8 48, i8* %81, align 1
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, 2
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %20, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %20, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %20, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %20, align 8
  store i8 -128, i8* %88, align 1
  %90 = load i32, i32* %19, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %20, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %20, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i8*, i8** %20, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @strcpy(i8* %94, i8* %95)
  %97 = load i32, i32* %19, align 4
  %98 = load i8*, i8** %20, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %20, align 8
  br label %101

101:                                              ; preds = %78, %37
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @strlen(i8* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i8*, i8** %20, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %20, align 8
  store i8 -128, i8* %104, align 1
  %106 = load i32, i32* %18, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load i32, i32* %18, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %20, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %20, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i8*, i8** %20, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @strcpy(i8* %113, i8* %114)
  %116 = load i32, i32* %18, align 4
  %117 = load i8*, i8** %20, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %20, align 8
  br label %123

120:                                              ; preds = %101
  %121 = load i8*, i8** %20, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %20, align 8
  store i8 0, i8* %121, align 1
  br label %123

123:                                              ; preds = %120, %108
  %124 = load i8*, i8** %20, align 8
  %125 = load i8*, i8** %21, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sub nsw i64 %128, 1
  %130 = trunc i64 %129 to i8
  %131 = load i8*, i8** %21, align 8
  store i8 %130, i8* %131, align 1
  %132 = load i32, i32* @GFP_ATOMIC, align 4
  %133 = call %struct.call_struc* @kmalloc(i32 88, i32 %132)
  store %struct.call_struc* %133, %struct.call_struc** %23, align 8
  %134 = icmp ne %struct.call_struc* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %295

138:                                              ; preds = %123
  %139 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %140 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %139, i32 0, i32 4
  %141 = call i32 @init_timer(%struct.TYPE_9__* %140)
  %142 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %143 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 0, i8* %145, align 1
  %146 = load i32, i32* @deflect_timer_expire, align 4
  %147 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %148 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %151 = ptrtoint %struct.call_struc* %150 to i64
  %152 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %153 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %157 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* @ISDN_CMD_PROT_IO, align 4
  %160 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %161 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @DSS1_CMD_INVOKE, align 4
  %164 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %165 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %138
  br label %175

170:                                              ; preds = %138
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 11, i32 8
  br label %175

175:                                              ; preds = %170, %169
  %176 = phi i32 [ 7, %169 ], [ %174, %170 ]
  %177 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %178 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %176, i32* %181, align 8
  %182 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %183 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i32 4000, i32* %186, align 4
  %187 = load i8*, i8** %20, align 8
  %188 = getelementptr inbounds [60 x i8], [60 x i8]* %22, i64 0, i64 0
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %194 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  store i32 %192, i32* %197, align 8
  %198 = getelementptr inbounds [60 x i8], [60 x i8]* %22, i64 0, i64 0
  %199 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %200 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  store i8* %198, i8** %203, align 8
  %204 = load i64, i64* %16, align 8
  %205 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %204)
  %206 = load i32, i32* @next_id, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* @next_id, align 4
  %208 = sext i32 %206 to i64
  %209 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %210 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  store i64 %208, i64* %213, align 8
  %214 = load i64, i64* %16, align 8
  %215 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %214)
  %216 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %217 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64*, i64** %15, align 8
  store i64 %221, i64* %222, align 8
  %223 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %224 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %175
  %229 = load i32, i32* @DIVERT_DEACTIVATE, align 4
  br label %239

230:                                              ; preds = %175
  %231 = load i32, i32* %10, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = load i32, i32* @DIVERT_ACTIVATE, align 4
  br label %237

235:                                              ; preds = %230
  %236 = load i32, i32* @DIVERT_REPORT, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  br label %239

239:                                              ; preds = %237, %228
  %240 = phi i32 [ %229, %228 ], [ %238, %237 ]
  %241 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %242 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 2
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %251 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @divert_if, i32 0, i32 1), align 8
  %252 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %253 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 %251(i32 %255)
  %257 = load i8*, i8** %12, align 8
  %258 = load i32, i32* %13, align 4
  %259 = and i32 %258, 255
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 1
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %265 = load i32, i32* %10, align 4
  %266 = icmp ne i32 %265, 1
  br i1 %266, label %267, label %268

267:                                              ; preds = %239
  br label %270

268:                                              ; preds = %239
  %269 = load i8*, i8** %14, align 8
  br label %270

270:                                              ; preds = %268, %267
  %271 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %267 ], [ %269, %268 ]
  %272 = call i32 @sprintf(i8* %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %240, i64 %246, i8* %250, i32 %256, i8* %257, i32 %259, i32 %260, i8* %264, i8* %271)
  %273 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @divert_if, i32 0, i32 0), align 8
  %274 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %275 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %274, i32 0, i32 3
  %276 = call i32 %273(%struct.TYPE_8__* %275)
  store i32 %276, i32* %17, align 4
  %277 = load i32, i32* %17, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %290, label %279

279:                                              ; preds = %270
  %280 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %281 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %280, i32 0, i32 2
  store i32* null, i32** %281, align 8
  %282 = load i64, i64* %16, align 8
  %283 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %282)
  %284 = load %struct.call_struc*, %struct.call_struc** @divert_head, align 8
  %285 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %286 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %285, i32 0, i32 1
  store %struct.call_struc* %284, %struct.call_struc** %286, align 8
  %287 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  store %struct.call_struc* %287, %struct.call_struc** @divert_head, align 8
  %288 = load i64, i64* %16, align 8
  %289 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %288)
  br label %293

290:                                              ; preds = %270
  %291 = load %struct.call_struc*, %struct.call_struc** %23, align 8
  %292 = call i32 @kfree(%struct.call_struc* %291)
  br label %293

293:                                              ; preds = %290, %279
  %294 = load i32, i32* %17, align 4
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %293, %135, %75, %68, %34, %27
  %296 = load i32, i32* %8, align 4
  ret i32 %296
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.call_struc* @kmalloc(i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i64, i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.call_struc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
