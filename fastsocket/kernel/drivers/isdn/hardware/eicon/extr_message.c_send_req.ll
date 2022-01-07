; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_send_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i32*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*)*, i32, i64 }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [23 x i8] c"send_req(in=%d,out=%d)\00", align 1
@NL_ID = common dso_local global i32 0, align 4
@CAI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%x:NLREQ(%x:%x:%x)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%x:SIGREQ(%x:%x:%x)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"send_ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @send_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_req(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %296

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %296

16:                                               ; preds = %8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i32 @channel_xmit_xon(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %296

27:                                               ; preds = %16
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33)
  %35 = call i32 @dbug(i32 1, i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %27
  br label %296

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i64 @GET_WORD(i32* %53)
  store i64 %54, i64* %4, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 2
  store i64 %58, i64* %56, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32* %65, i32** %70, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %195

85:                                               ; preds = %46
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 10
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %3, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds i32, i32* %94, i64 %97
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %110
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, 31
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %178, label %121

121:                                              ; preds = %85
  %122 = load i32, i32* @NL_ID, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @CAI, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, 4
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  store i32 %125, i32* %133, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %139, 3
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 255
  br i1 %146, label %147, label %148

147:                                              ; preds = %121
  br label %153

148:                                              ; preds = %121
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  br label %153

153:                                              ; preds = %148, %147
  %154 = phi i32 [ 0, %147 ], [ %152, %148 ]
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sub i64 %160, 2
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  store i32 %154, i32* %162, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, 1
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  store i32 0, i32* %170, align 4
  %171 = load i64, i64* %4, align 8
  %172 = add nsw i64 %171, 3
  store i64 %172, i64* %4, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %153, %85
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 7
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %186, i32 %189, i32 %192)
  %194 = call i32 @dbug(i32 1, i32 %193)
  br label %275

195:                                              ; preds = %46
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 9
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %3, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %195
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %207, %195
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %220, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds i32, i32* %225, i64 %228
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  store i32 %231, i32* %235, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %240, align 8
  %243 = getelementptr inbounds i32, i32* %238, i64 %241
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 31
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %218
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %252, %218
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 7
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %263, i32 %266, i32 %269, i32 %272)
  %274 = call i32 @dbug(i32 1, i32 %273)
  br label %275

275:                                              ; preds = %258, %178
  %276 = load i64, i64* %4, align 8
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 8
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  store i64 %276, i64* %281, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  store %struct.TYPE_8__* %284, %struct.TYPE_8__** %286, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %290, align 8
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %293 = call i32 %291(%struct.TYPE_11__* %292)
  %294 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %295 = call i32 @dbug(i32 1, i32 %294)
  br label %296

296:                                              ; preds = %275, %45, %26, %15, %7
  ret void
}

declare dso_local i32 @channel_xmit_xon(%struct.TYPE_10__*) #1

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @GET_WORD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
