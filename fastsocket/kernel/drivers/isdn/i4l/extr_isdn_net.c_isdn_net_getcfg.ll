; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_getcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_getcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8** }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s,%d\00", align 1
@dev = common dso_local global %struct.TYPE_14__* null, align 8
@ISDN_NET_SECURE = common dso_local global i32 0, align 4
@ISDN_NET_CALLBACK = common dso_local global i32 0, align 4
@ISDN_NET_CBOUT = common dso_local global i32 0, align 4
@ISDN_NET_CBHUP = common dso_local global i32 0, align 4
@ISDN_NET_DIALMODE_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ISDN_CHARGEHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"too-long\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdn_net_getcfg(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 24
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.TYPE_13__* @isdn_net_findif(i32 %8)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %279

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcpy(i8* %18, i8* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 20
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 23
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %12
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dev, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %46)
  br label %53

48:                                               ; preds = %12
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %48, %32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 19
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 22
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 18
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 21
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 17
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 20
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 19
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 18
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ISDN_NET_SECURE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ISDN_NET_CALLBACK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %53
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %53
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ISDN_NET_CBOUT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  store i32 2, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ISDN_NET_CBHUP, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ISDN_NET_DIALMODE_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 8
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 14
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 17
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 13
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 16
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 15
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @HZ, align 4
  %165 = sdiv i32 %163, %164
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ISDN_CHARGEHUP, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %110
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @HZ, align 4
  %179 = sdiv i32 %177, %178
  br label %181

180:                                              ; preds = %110
  br label %181

181:                                              ; preds = %180, %174
  %182 = phi i32 [ %179, %174 ], [ 0, %180 ]
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 9
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 14
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %181
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HZ, align 4
  %199 = sdiv i32 %197, %198
  br label %201

200:                                              ; preds = %181
  br label %201

201:                                              ; preds = %200, %194
  %202 = phi i32 [ %199, %194 ], [ -1, %200 ]
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 10
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @HZ, align 4
  %209 = sdiv i32 %207, %208
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 11
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 10
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = icmp ne %struct.TYPE_9__* %214, null
  br i1 %215, label %216, label %240

216:                                              ; preds = %201
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 10
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @strlen(i8* %221)
  %223 = icmp sgt i32 %222, 8
  br i1 %223, label %224, label %229

224:                                              ; preds = %216
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 12
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @strcpy(i8* %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %239

229:                                              ; preds = %216
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 12
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 10
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strcpy(i8* %232, i8* %237)
  br label %239

239:                                              ; preds = %229, %224
  br label %245

240:                                              ; preds = %201
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 12
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  store i8 0, i8* %244, align 1
  br label %245

245:                                              ; preds = %240, %239
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 9
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = icmp ne %struct.TYPE_10__* %248, null
  br i1 %249, label %250, label %273

250:                                              ; preds = %245
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 9
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @strlen(i8* %255)
  %257 = icmp sgt i32 %256, 8
  br i1 %257, label %258, label %263

258:                                              ; preds = %250
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 13
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @strcpy(i8* %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %263

263:                                              ; preds = %258, %250
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 13
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 9
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @strcpy(i8* %266, i8* %271)
  br label %278

273:                                              ; preds = %245
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 13
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  store i8 0, i8* %277, align 1
  br label %278

278:                                              ; preds = %273, %263
  store i32 0, i32* %2, align 4
  br label %282

279:                                              ; preds = %1
  %280 = load i32, i32* @ENODEV, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %279, %278
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local %struct.TYPE_13__* @isdn_net_findif(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
