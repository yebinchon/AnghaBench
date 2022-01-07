; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_packetizeRx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_packetizeRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_net = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Rx %d bytes\00", align 1
@DEFAULT_MRU = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid frame (%d) length\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not allocate memory\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" W_S\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_net*, i8*, i32, i8)* @packetizeRx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packetizeRx(%struct.hso_net* %0, i8* %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.hso_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  store %struct.hso_net* %0, %struct.hso_net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  store i16 0, i16* %10, align 2
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @min(i32 128, i32 %16)
  %18 = call i32 @DUMP(i8* %15, i32 %17)
  br label %19

19:                                               ; preds = %251, %98, %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %252

22:                                               ; preds = %19
  %23 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %24 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %247 [
    i32 129, label %26
    i32 130, label %144
    i32 128, label %245
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %29 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %36 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ %37, %34 ]
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %9, align 2
  %41 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %42 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %41, i32 0, i32 5
  %43 = bitcast %struct.TYPE_8__* %42 to i8*
  %44 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %45 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8*, i8** %6, align 8
  %50 = load i16, i16* %10, align 2
  %51 = zext i16 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i16, i16* %9, align 2
  %55 = zext i16 %54 to i32
  %56 = call i32 (i8*, ...) @memcpy(i8* %48, i8* %53, i32 %55)
  %57 = load i16, i16* %9, align 2
  %58 = zext i16 %57 to i32
  %59 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %60 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i16, i16* %9, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* %10, align 2
  %66 = zext i16 %65 to i32
  %67 = add nsw i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %10, align 2
  %69 = load i16, i16* %9, align 2
  %70 = zext i16 %69 to i32
  %71 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %72 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i16, i16* %9, align 2
  %76 = zext i16 %75 to i32
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %80 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %143, label %83

83:                                               ; preds = %38
  %84 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %85 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call zeroext i16 @ntohs(i32 %87)
  store i16 %88, i16* %11, align 2
  %89 = load i16, i16* %11, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @DEFAULT_MRU, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = load i16, i16* %11, align 2
  %96 = zext i16 %95 to i64
  %97 = icmp ult i64 %96, 4
  br i1 %97, label %98, label %107

98:                                               ; preds = %94, %83
  %99 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %100 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i16, i16* %11, align 2
  %104 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %103)
  %105 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %106 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %105, i32 0, i32 0
  store i32 128, i32* %106, align 8
  br label %19

107:                                              ; preds = %94
  %108 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %109 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %108, i32 0, i32 3
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i16, i16* %11, align 2
  %112 = call %struct.TYPE_10__* @netdev_alloc_skb(%struct.TYPE_11__* %110, i16 zeroext %111)
  %113 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %114 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %113, i32 0, i32 4
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %114, align 8
  %115 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %116 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %115, i32 0, i32 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %107
  %120 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %122 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %121, i32 0, i32 0
  store i32 128, i32* %122, align 8
  br label %268

123:                                              ; preds = %107
  %124 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %125 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %124, i32 0, i32 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = call i8* @skb_put(%struct.TYPE_10__* %126, i16 zeroext 4)
  store i8* %127, i8** %12, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %130 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %129, i32 0, i32 5
  %131 = bitcast %struct.TYPE_8__* %130 to i8*
  %132 = call i32 (i8*, ...) @memcpy(i8* %128, i8* %131, i64 4)
  %133 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %134 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %133, i32 0, i32 2
  store i32 4, i32* %134, align 8
  %135 = load i16, i16* %11, align 2
  %136 = zext i16 %135 to i64
  %137 = sub i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %140 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %142 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %141, i32 0, i32 0
  store i32 130, i32* %142, align 8
  br label %143

143:                                              ; preds = %123, %38
  br label %251

144:                                              ; preds = %22
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %147 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %7, align 4
  br label %156

152:                                              ; preds = %144
  %153 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %154 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  br label %156

156:                                              ; preds = %152, %150
  %157 = phi i32 [ %151, %150 ], [ %155, %152 ]
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %9, align 2
  %159 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %160 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %159, i32 0, i32 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i16, i16* %9, align 2
  %163 = call i8* @skb_put(%struct.TYPE_10__* %161, i16 zeroext %162)
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i16, i16* %10, align 2
  %167 = zext i16 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i16, i16* %9, align 2
  %171 = zext i16 %170 to i32
  %172 = call i32 (i8*, ...) @memcpy(i8* %164, i8* %169, i32 %171)
  %173 = load i16, i16* %9, align 2
  %174 = zext i16 %173 to i32
  %175 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %176 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i16, i16* %9, align 2
  %180 = zext i16 %179 to i32
  %181 = load i32, i32* %7, align 4
  %182 = sub i32 %181, %180
  store i32 %182, i32* %7, align 4
  %183 = load i16, i16* %9, align 2
  %184 = zext i16 %183 to i32
  %185 = load i16, i16* %10, align 2
  %186 = zext i16 %185 to i32
  %187 = add nsw i32 %186, %184
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %10, align 2
  %189 = load i16, i16* %9, align 2
  %190 = zext i16 %189 to i32
  %191 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %192 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %196 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %244, label %199

199:                                              ; preds = %156
  %200 = load i32, i32* @ETH_P_IP, align 4
  %201 = call i32 @cpu_to_be16(i32 %200)
  %202 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %203 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %202, i32 0, i32 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  store i32 %201, i32* %205, align 4
  %206 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %207 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %208 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %207, i32 0, i32 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %212 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %211, i32 0, i32 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = call i32 @skb_reset_mac_header(%struct.TYPE_10__* %213)
  %215 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %216 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %215, i32 0, i32 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = call i32 @netif_rx(%struct.TYPE_10__* %217)
  %219 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %220 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %219, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %220, align 8
  %221 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %222 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %221, i32 0, i32 3
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %229 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %232 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %231, i32 0, i32 3
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %230
  store i32 %237, i32* %235, align 4
  %238 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %239 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %238, i32 0, i32 2
  store i32 0, i32* %239, align 8
  %240 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %241 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %240, i32 0, i32 1
  store i32 4, i32* %241, align 4
  %242 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %243 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %242, i32 0, i32 0
  store i32 129, i32* %243, align 8
  br label %244

244:                                              ; preds = %199, %156
  br label %251

245:                                              ; preds = %22
  %246 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %251

247:                                              ; preds = %22
  %248 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %249 = load i32, i32* %7, align 4
  %250 = add i32 %249, -1
  store i32 %250, i32* %7, align 4
  br label %251

251:                                              ; preds = %247, %245, %244, %143
  br label %19

252:                                              ; preds = %19
  %253 = load i8, i8* %8, align 1
  %254 = icmp ne i8 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %252
  %256 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %257 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 128
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %262 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %261, i32 0, i32 0
  store i32 129, i32* %262, align 8
  %263 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %264 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %263, i32 0, i32 2
  store i32 0, i32* %264, align 8
  %265 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %266 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %265, i32 0, i32 1
  store i32 4, i32* %266, align 4
  br label %267

267:                                              ; preds = %260, %255
  br label %268

268:                                              ; preds = %119, %267, %252
  ret void
}

declare dso_local i32 @D1(i8*, ...) #1

declare dso_local i32 @DUMP(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i16 zeroext) #1

declare dso_local %struct.TYPE_10__* @netdev_alloc_skb(%struct.TYPE_11__*, i16 zeroext) #1

declare dso_local i8* @skb_put(%struct.TYPE_10__*, i16 zeroext) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.TYPE_10__*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
