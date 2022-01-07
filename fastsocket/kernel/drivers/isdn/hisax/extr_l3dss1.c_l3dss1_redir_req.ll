; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_redir_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_redir_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@MT_FACILITY = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i8, i8*)* @l3dss1_redir_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_redir_req(%struct.l3_process* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8* %14, i8** %9, align 8
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  %15 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %16 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %19, i32 %25)
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %3
  %37 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %38 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %41 = load i8, i8* %5, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @l3dss1_disconnect_req(%struct.l3_process* %40, i8 signext %41, i8* %42)
  br label %277

44:                                               ; preds = %3
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %53 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %56 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @free_invoke_id(i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %63 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @new_invoke_id(i32 %64)
  %66 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %67 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = icmp ne i32 %65, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %277

72:                                               ; preds = %61
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %75 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MT_FACILITY, align 4
  %78 = call i32 @MsgHead(i8* %73, i32 %76, i32 %77)
  %79 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %80 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %100, %72
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 46
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = load i8, i8* %11, align 1
  %99 = add i8 %98, 1
  store i8 %99, i8* %11, align 1
  br label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  br label %85

103:                                              ; preds = %95
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 46
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i8*, i8** %10, align 8
  %111 = call signext i8 @strlen(i8* %110)
  %112 = sext i8 %111 to i32
  %113 = add nsw i32 %112, 2
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %12, align 1
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  store i8 28, i8* %116, align 1
  %118 = load i8, i8* %11, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8, i8* %12, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %119, %121
  %123 = add nsw i32 %122, 2
  %124 = add nsw i32 %123, 2
  %125 = add nsw i32 %124, 8
  %126 = add nsw i32 %125, 3
  %127 = add nsw i32 %126, 3
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  store i8 %128, i8* %129, align 1
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  store i8 -111, i8* %131, align 1
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 -95, i8* %133, align 1
  %135 = load i8, i8* %11, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* %12, align 1
  %138 = sext i8 %137 to i32
  %139 = add nsw i32 %136, %138
  %140 = add nsw i32 %139, 2
  %141 = add nsw i32 %140, 2
  %142 = add nsw i32 %141, 8
  %143 = add nsw i32 %142, 3
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %9, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %9, align 8
  store i8 2, i8* %147, align 1
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  store i8 1, i8* %149, align 1
  %151 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %152 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %9, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  store i8 2, i8* %159, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  store i8 1, i8* %161, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  store i8 13, i8* %163, align 1
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %9, align 8
  store i8 48, i8* %165, align 1
  %167 = load i8, i8* %11, align 1
  %168 = sext i8 %167 to i32
  %169 = add nsw i32 %168, 2
  %170 = add nsw i32 %169, 2
  %171 = add nsw i32 %170, 3
  %172 = load i8, i8* %12, align 1
  %173 = sext i8 %172 to i32
  %174 = add nsw i32 %171, %173
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %9, align 8
  store i8 %175, i8* %176, align 1
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %9, align 8
  store i8 48, i8* %178, align 1
  %180 = load i8, i8* %11, align 1
  %181 = sext i8 %180 to i32
  %182 = add nsw i32 %181, 2
  %183 = load i8, i8* %12, align 1
  %184 = sext i8 %183 to i32
  %185 = add nsw i32 %182, %184
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %9, align 8
  store i8 %186, i8* %187, align 1
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %9, align 8
  store i8 -128, i8* %189, align 1
  %191 = load i8, i8* %11, align 1
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %9, align 8
  store i8 %191, i8* %192, align 1
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %212, %115
  %195 = load i32, i32* %13, align 4
  %196 = load i8, i8* %11, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %201 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %200, i32 0, i32 1
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %9, align 8
  store i8 %209, i8* %210, align 1
  br label %212

212:                                              ; preds = %199
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %194

215:                                              ; preds = %194
  %216 = load i8, i8* %12, align 1
  %217 = icmp ne i8 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %215
  %219 = load i8*, i8** %9, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %9, align 8
  store i8 4, i8* %219, align 1
  %221 = load i8, i8* %12, align 1
  %222 = sext i8 %221 to i32
  %223 = sub nsw i32 %222, 2
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %9, align 8
  store i8 %224, i8* %225, align 1
  br label %227

227:                                              ; preds = %231, %218
  %228 = load i8*, i8** %10, align 8
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load i8*, i8** %10, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %10, align 8
  %234 = load i8, i8* %232, align 1
  %235 = load i8*, i8** %9, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %9, align 8
  store i8 %234, i8* %235, align 1
  br label %227

237:                                              ; preds = %227
  br label %238

238:                                              ; preds = %237, %215
  %239 = load i8*, i8** %9, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %9, align 8
  store i8 1, i8* %239, align 1
  %241 = load i8*, i8** %9, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %9, align 8
  store i8 1, i8* %241, align 1
  %243 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %244 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %243, i32 0, i32 1
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %9, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i8*, i8** %9, align 8
  %253 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call %struct.sk_buff* @l3_alloc_skb(i32 %258)
  store %struct.sk_buff* %259, %struct.sk_buff** %7, align 8
  %260 = icmp ne %struct.sk_buff* %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %238
  br label %277

262:                                              ; preds = %238
  %263 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @skb_put(%struct.sk_buff* %263, i32 %264)
  %266 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @memcpy(i32 %265, i8* %266, i32 %267)
  %269 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %270 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @DL_DATA, align 4
  %273 = load i32, i32* @REQUEST, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %276 = call i32 @l3_msg(i32 %271, i32 %274, %struct.sk_buff* %275)
  br label %277

277:                                              ; preds = %262, %261, %71, %36
  ret void
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @l3dss1_disconnect_req(%struct.l3_process*, i8 signext, i8*) #1

declare dso_local i32 @free_invoke_id(i32, i32) #1

declare dso_local i32 @new_invoke_id(i32) #1

declare dso_local i32 @MsgHead(i8*, i32, i32) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
