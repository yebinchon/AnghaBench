; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i32, %struct.l3_process*)* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32, i8*, i32, i64 }
%struct.sk_buff = type { i32*, i32 }

@L3_DEB_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SI=%d, AI=%d\00", align 1
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"setup with wrong bearer(l=%d:%x,%x)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setup without bearer capabilities\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"setup with wrong chid %x\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"setup without bchannel, call waiting\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"setup with wrong chid ret %d\00", align 1
@ie_SETUP = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"wrong called subaddress\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"wrong calling subaddress\00", align 1
@CC_SETUP = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_setup(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @findie(i32* %18, i32 %21, i32 4, i32 0)
  store i32* %22, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %144

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 11
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  store i32 1, i32* %12, align 4
  br label %90

35:                                               ; preds = %29
  %36 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 127
  switch i32 %43, label %69 [
    i32 0, label %44
    i32 16, label %44
    i32 8, label %49
    i32 9, label %54
    i32 17, label %59
    i32 24, label %64
  ]

44:                                               ; preds = %35, %35
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %70

49:                                               ; preds = %35
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 7, i32* %53, align 8
  br label %70

54:                                               ; preds = %35
  %55 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %56 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 2, i32* %58, align 8
  br label %70

59:                                               ; preds = %35
  %60 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %61 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 3, i32* %63, align 8
  br label %70

64:                                               ; preds = %35
  %65 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %66 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  br label %70

69:                                               ; preds = %35
  store i32 2, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %64, %59, %54, %49, %44
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 127
  switch i32 %74, label %88 [
    i32 64, label %75
    i32 16, label %80
    i32 17, label %80
    i32 19, label %80
    i32 21, label %80
    i32 23, label %80
  ]

75:                                               ; preds = %70
  %76 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %77 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 8, i32* %79, align 8
  br label %89

80:                                               ; preds = %70, %70, %70, %70, %70
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 127
  %85 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %86 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %89

88:                                               ; preds = %70
  store i32 3, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %80, %75
  br label %90

90:                                               ; preds = %89, %34
  %91 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %92 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @L3_DEB_SI, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %90
  %98 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %99 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %102 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %107 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %97, %90
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %112
  %116 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %117 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @L3_DEB_WARN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %124 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %122, %115
  %137 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %138 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 100, i32* %139, align 4
  %140 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @l3ni1_msg_without_setup(%struct.l3_process* %140, i32 %141, i32* null)
  br label %482

143:                                              ; preds = %112
  br label %163

144:                                              ; preds = %3
  %145 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %146 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @L3_DEB_WARN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %153 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %151, %144
  %157 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %158 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 96, i32* %159, align 4
  %160 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @l3ni1_msg_without_setup(%struct.l3_process* %160, i32 %161, i32* null)
  br label %482

163:                                              ; preds = %143
  %164 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %166 = call i32 @l3ni1_get_channel_id(%struct.l3_process* %164, %struct.sk_buff* %165)
  store i32 %166, i32* %11, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %222

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %171 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = icmp ne i32 %169, 0
  br i1 %173, label %174, label %206

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  %176 = icmp eq i32 3, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  %178 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %179 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 16, %181
  br i1 %182, label %183, label %203

183:                                              ; preds = %177
  %184 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %185 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @L3_DEB_WARN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %192 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %190, %183
  %197 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %198 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  store i32 100, i32* %199, align 4
  %200 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @l3ni1_msg_without_setup(%struct.l3_process* %200, i32 %201, i32* null)
  br label %482

203:                                              ; preds = %177, %174
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %221

206:                                              ; preds = %168
  %207 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %208 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @L3_DEB_WARN, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %215 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %216, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %218

218:                                              ; preds = %213, %206
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %218, %203
  br label %250

222:                                              ; preds = %163
  %223 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %224 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @L3_DEB_WARN, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %231 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %230, i32 0, i32 1
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %229, %222
  %236 = load i32, i32* %11, align 4
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %240 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  store i32 96, i32* %241, align 4
  br label %246

242:                                              ; preds = %235
  %243 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %244 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  store i32 100, i32* %245, align 4
  br label %246

246:                                              ; preds = %242, %238
  %247 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @l3ni1_msg_without_setup(%struct.l3_process* %247, i32 %248, i32* null)
  br label %482

250:                                              ; preds = %221
  %251 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %253 = load i32, i32* @ie_SETUP, align 4
  %254 = call i32 @check_infoelements(%struct.l3_process* %251, %struct.sk_buff* %252, i32 %253)
  store i32 %254, i32* %12, align 4
  %255 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %256 = load i32, i32* %12, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %260 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  store i32 96, i32* %261, align 4
  %262 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @l3ni1_msg_without_setup(%struct.l3_process* %262, i32 %263, i32* null)
  br label %482

265:                                              ; preds = %250
  %266 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  store i32* %268, i32** %7, align 8
  %269 = load i32*, i32** %7, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i32* @findie(i32* %269, i32 %272, i32 112, i32 0)
  store i32* %273, i32** %7, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %265
  %276 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %277 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load i32*, i32** %7, align 8
  %282 = call i32 @iecpy(i8* %280, i32* %281, i32 1)
  br label %290

283:                                              ; preds = %265
  %284 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %285 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  store i8 0, i8* %289, align 1
  br label %290

290:                                              ; preds = %283, %275
  %291 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  store i32* %293, i32** %7, align 8
  %294 = load i32*, i32** %7, align 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call i32* @findie(i32* %294, i32 %297, i32 113, i32 0)
  store i32* %298, i32** %7, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %341

300:                                              ; preds = %290
  %301 = load i32*, i32** %7, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp sge i32 %303, 2
  br i1 %304, label %305, label %327

305:                                              ; preds = %300
  %306 = load i32*, i32** %7, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 128
  br i1 %309, label %310, label %327

310:                                              ; preds = %305
  %311 = load i32*, i32** %7, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 80
  br i1 %314, label %315, label %327

315:                                              ; preds = %310
  %316 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  store i8 46, i8* %316, align 16
  %317 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 1
  %318 = load i32*, i32** %7, align 8
  %319 = call i32 @iecpy(i8* %317, i32* %318, i32 2)
  %320 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %321 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %326 = call i32 @strcat(i8* %324, i8* %325)
  br label %340

327:                                              ; preds = %310, %305, %300
  %328 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %329 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @L3_DEB_WARN, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %327
  %335 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %336 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %335, i32 0, i32 1
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %337, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %339

339:                                              ; preds = %334, %327
  br label %340

340:                                              ; preds = %339, %315
  br label %341

341:                                              ; preds = %340, %290
  %342 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %343 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  store i32* %344, i32** %7, align 8
  %345 = load i32*, i32** %7, align 8
  %346 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %347 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32* @findie(i32* %345, i32 %348, i32 108, i32 0)
  store i32* %349, i32** %7, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %392

351:                                              ; preds = %341
  %352 = load i32*, i32** %7, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 2
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %356 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 2
  store i32 %354, i32* %358, align 8
  %359 = load i32*, i32** %7, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 128
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %351
  %365 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %366 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 3
  %369 = load i8*, i8** %368, align 8
  %370 = load i32*, i32** %7, align 8
  %371 = call i32 @iecpy(i8* %369, i32* %370, i32 1)
  %372 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %373 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 4
  store i32 0, i32* %375, align 8
  br label %391

376:                                              ; preds = %351
  %377 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %378 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 3
  %381 = load i8*, i8** %380, align 8
  %382 = load i32*, i32** %7, align 8
  %383 = call i32 @iecpy(i8* %381, i32* %382, i32 2)
  %384 = load i32*, i32** %7, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 3
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %388 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 4
  store i32 %386, i32* %390, align 8
  br label %391

391:                                              ; preds = %376, %364
  br label %407

392:                                              ; preds = %341
  %393 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %394 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 3
  %397 = load i8*, i8** %396, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 0
  store i8 0, i8* %398, align 1
  %399 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %400 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 2
  store i32 0, i32* %402, align 8
  %403 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %404 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 4
  store i32 0, i32* %406, align 8
  br label %407

407:                                              ; preds = %392, %391
  %408 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %409 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  store i32* %410, i32** %7, align 8
  %411 = load i32*, i32** %7, align 8
  %412 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %413 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = call i32* @findie(i32* %411, i32 %414, i32 109, i32 0)
  store i32* %415, i32** %7, align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %417, label %458

417:                                              ; preds = %407
  %418 = load i32*, i32** %7, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp sge i32 %420, 2
  br i1 %421, label %422, label %444

422:                                              ; preds = %417
  %423 = load i32*, i32** %7, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 2
  %425 = load i32, i32* %424, align 4
  %426 = icmp eq i32 %425, 128
  br i1 %426, label %427, label %444

427:                                              ; preds = %422
  %428 = load i32*, i32** %7, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 3
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %430, 80
  br i1 %431, label %432, label %444

432:                                              ; preds = %427
  %433 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  store i8 46, i8* %433, align 16
  %434 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 1
  %435 = load i32*, i32** %7, align 8
  %436 = call i32 @iecpy(i8* %434, i32* %435, i32 2)
  %437 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %438 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 3
  %441 = load i8*, i8** %440, align 8
  %442 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %443 = call i32 @strcat(i8* %441, i8* %442)
  br label %457

444:                                              ; preds = %427, %422, %417
  %445 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %446 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @L3_DEB_WARN, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %444
  %452 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %453 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %452, i32 0, i32 1
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %453, align 8
  %455 = call i32 (%struct.TYPE_9__*, i8*, ...) @l3_debug(%struct.TYPE_9__* %454, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %456

456:                                              ; preds = %451, %444
  br label %457

457:                                              ; preds = %456, %432
  br label %458

458:                                              ; preds = %457, %407
  %459 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %460 = call i32 @newl3state(%struct.l3_process* %459, i32 6)
  %461 = load i32, i32* %12, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %458
  %464 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %465 = load i32, i32* %12, align 4
  %466 = call i32 @l3ni1_std_ie_err(%struct.l3_process* %464, i32 %465)
  br label %467

467:                                              ; preds = %463, %458
  %468 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %469 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %468, i32 0, i32 1
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 0
  %473 = load i32 (%struct.TYPE_9__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_9__*, i32, %struct.l3_process*)** %472, align 8
  %474 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %475 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %474, i32 0, i32 1
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %475, align 8
  %477 = load i32, i32* @CC_SETUP, align 4
  %478 = load i32, i32* @INDICATION, align 4
  %479 = or i32 %477, %478
  %480 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %481 = call i32 %473(%struct.TYPE_9__* %476, i32 %479, %struct.l3_process* %480)
  br label %482

482:                                              ; preds = %467, %258, %246, %196, %156, %136
  ret void
}

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @l3_debug(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @l3ni1_msg_without_setup(%struct.l3_process*, i32, i32*) #1

declare dso_local i32 @l3ni1_get_channel_id(%struct.l3_process*, %struct.sk_buff*) #1

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @iecpy(i8*, i32*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3ni1_std_ie_err(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
