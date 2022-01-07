; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_dev_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_dev_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"RAID metadata device lookup failure\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Drive designated for rebuild not specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"No data device supplied with metadata device\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"RAID device lookup failure\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Unable to rebuild drive while array is not in-sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i8**)* @dev_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_parms(%struct.raid_set* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %276, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %281

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %20 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %18, i32* %26, align 8
  %27 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %28 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %40, align 8
  %41 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %42 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %50 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %49, i32 0, i32 1
  %51 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %52 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %58, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %118

64:                                               ; preds = %17
  %65 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %66 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %72 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dm_table_get_mode(i32 %75)
  %77 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %78 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = call i32 @dm_get_device(%struct.TYPE_9__* %67, i8* %70, i32 %76, %struct.TYPE_10__** %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %86 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %64
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %313

93:                                               ; preds = %64
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32 @alloc_page(i32 %94)
  %96 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %97 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 6
  store i32 %95, i32* %103, align 8
  %104 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %105 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %93
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %313

117:                                              ; preds = %93
  br label %118

118:                                              ; preds = %117, %17
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %172, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @In_sync, align 4
  %126 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %127 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = call i32 @test_bit(i32 %125, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %124
  %137 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %138 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %137, i32 0, i32 2
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %136
  %148 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %149 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8** %151, align 8
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %313

154:                                              ; preds = %136, %124
  %155 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %156 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8** %158, align 8
  %159 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %160 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %159, i32 0, i32 2
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = icmp ne %struct.TYPE_10__* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %154
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %313

171:                                              ; preds = %154
  br label %276

172:                                              ; preds = %118
  %173 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %174 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %180 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dm_table_get_mode(i32 %183)
  %185 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %186 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %185, i32 0, i32 2
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = call i32 @dm_get_device(%struct.TYPE_9__* %175, i8* %178, i32 %184, %struct.TYPE_10__** %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %172
  %196 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %197 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %196, i32 0, i32 0
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %199, align 8
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %3, align 4
  br label %313

201:                                              ; preds = %172
  %202 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %203 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %202, i32 0, i32 2
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = icmp ne %struct.TYPE_10__* %209, null
  br i1 %210, label %211, label %230

211:                                              ; preds = %201
  store i32 1, i32* %8, align 4
  %212 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %213 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %212, i32 0, i32 2
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %223 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %222, i32 0, i32 2
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 4
  store i32 %221, i32* %229, align 8
  br label %230

230:                                              ; preds = %211, %201
  %231 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %232 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %231, i32 0, i32 2
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %242 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %241, i32 0, i32 2
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  store i32 %240, i32* %248, align 4
  %249 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %250 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %249, i32 0, i32 2
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 2
  %257 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %258 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 5
  %260 = call i32 @list_add(i32* %256, i32* %259)
  %261 = load i32, i32* @In_sync, align 4
  %262 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %263 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = call i32 @test_bit(i32 %261, i32* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %230
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  br label %275

275:                                              ; preds = %272, %230
  br label %276

276:                                              ; preds = %275, %171
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  %279 = load i8**, i8*** %5, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 2
  store i8** %280, i8*** %5, align 8
  br label %10

281:                                              ; preds = %10
  %282 = load i32, i32* %8, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %281
  %285 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %286 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 4
  store i64 0, i64* %287, align 8
  %288 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %289 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  store i32 1, i32* %290, align 4
  %291 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %292 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 2
  store i32 2, i32* %293, align 8
  br label %312

294:                                              ; preds = %281
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %311

297:                                              ; preds = %294
  %298 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %299 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %311, label %303

303:                                              ; preds = %297
  %304 = call i32 @DMERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %305 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %306 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %305, i32 0, i32 0
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %308, align 8
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %3, align 4
  br label %313

311:                                              ; preds = %297, %294
  br label %312

312:                                              ; preds = %311, %284
  store i32 0, i32* %3, align 4
  br label %313

313:                                              ; preds = %312, %303, %195, %168, %147, %114, %91
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.TYPE_9__*, i8*, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
