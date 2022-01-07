; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.r100_cs_track = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i64, i32* }
%struct.TYPE_9__ = type { i32, i32, i64, i32* }
%struct.TYPE_8__ = type { i32* }

@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_RS200 = common dso_local global i64 0, align 8
@R100_TRACK_COMP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_cs_track_clear(%struct.radeon_device* %0, %struct.r100_cs_track* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.r100_cs_track*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.r100_cs_track* %1, %struct.r100_cs_track** %4, align 8
  %7 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %8 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %10 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %12 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %14 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_R300, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %22 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %21, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_RS200, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %30 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %29, i32 0, i32 5
  store i32 3, i32* %30, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %33 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %32, i32 0, i32 5
  store i32 6, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %36 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %35, i32 0, i32 6
  store i32 2048, i32* %36, align 8
  %37 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %38 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %37, i32 0, i32 7
  store i32 1, i32* %38, align 4
  br label %53

39:                                               ; preds = %2
  %40 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %41 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %40, i32 0, i32 4
  store i32 4, i32* %41, align 8
  %42 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %43 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %42, i32 0, i32 5
  store i32 16, i32* %43, align 4
  %44 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %45 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %44, i32 0, i32 6
  store i32 4096, i32* %45, align 8
  %46 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %47 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %46, i32 0, i32 7
  store i32 0, i32* %47, align 4
  %48 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %49 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %48, i32 0, i32 8
  store i32 0, i32* %49, align 8
  %50 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %51 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %50, i32 0, i32 18
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %39, %34
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %89, %53
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %57 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %54
  %61 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %62 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %61, i32 0, i32 17
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %69 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %68, i32 0, i32 17
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 8192, i32* %74, align 8
  %75 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %76 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %75, i32 0, i32 17
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 16, i32* %81, align 4
  %82 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %83 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %82, i32 0, i32 17
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %60
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %94 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %93, i32 0, i32 9
  store i32 1, i32* %94, align 4
  %95 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %96 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %95, i32 0, i32 16
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  store i32* null, i32** %97, align 8
  %98 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %99 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %98, i32 0, i32 16
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 8192, i32* %100, align 8
  %101 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %102 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %101, i32 0, i32 16
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 4, i32* %103, align 4
  %104 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %105 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %104, i32 0, i32 16
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %108 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %107, i32 0, i32 10
  store i32 127, i32* %108, align 8
  %109 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %110 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %109, i32 0, i32 11
  store i32 -1, i32* %110, align 4
  %111 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %112 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %111, i32 0, i32 12
  store i32 11, i32* %112, align 8
  %113 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %114 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %113, i32 0, i32 13
  store i32 16777215, i32* %114, align 4
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %136, %92
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %118 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %123 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %122, i32 0, i32 15
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %130 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %129, i32 0, i32 15
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i32 127, i32* %135, align 8
  br label %136

136:                                              ; preds = %121
  %137 = load i32, i32* %5, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %115

139:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %337, %139
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %143 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %340

146:                                              ; preds = %140
  %147 = load i32, i32* @R100_TRACK_COMP_NONE, align 4
  %148 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %149 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %148, i32 0, i32 14
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 15
  store i32 %147, i32* %154, align 8
  %155 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %156 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %155, i32 0, i32 14
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 16536, i32* %161, align 8
  %162 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %163 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %162, i32 0, i32 14
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 16536, i32* %168, align 4
  %169 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %170 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %169, i32 0, i32 14
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  store i32 16536, i32* %175, align 8
  %176 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %177 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %176, i32 0, i32 14
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  store i32 2048, i32* %182, align 4
  %183 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %184 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %183, i32 0, i32 14
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 4
  store i32 2048, i32* %189, align 8
  %190 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %191 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %190, i32 0, i32 14
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 5
  store i32 12, i32* %196, align 4
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CHIP_RS200, align 8
  %201 = icmp sle i64 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %146
  %203 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %204 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %203, i32 0, i32 14
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 6
  store i32 0, i32* %209, align 8
  %210 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %211 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %210, i32 0, i32 14
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 7
  store i32 0, i32* %216, align 4
  br label %232

217:                                              ; preds = %146
  %218 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %219 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %218, i32 0, i32 14
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 7
  store i32 16, i32* %224, align 4
  %225 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %226 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %225, i32 0, i32 14
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 6
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %217, %202
  %233 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %234 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %233, i32 0, i32 14
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 8
  store i32 64, i32* %239, align 8
  %240 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %241 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %240, i32 0, i32 14
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load i32, i32* %5, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 14
  store i32* null, i32** %246, align 8
  %247 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %248 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %247, i32 0, i32 14
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 9
  store i32 0, i32* %253, align 4
  %254 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %255 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %254, i32 0, i32 14
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 10
  store i32 0, i32* %260, align 8
  %261 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %262 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %261, i32 0, i32 14
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 11
  store i32 1, i32* %267, align 4
  %268 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %269 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %268, i32 0, i32 14
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 12
  store i32 1, i32* %274, align 8
  %275 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %276 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %336

279:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  br label %280

280:                                              ; preds = %332, %279
  %281 = load i32, i32* %6, align 4
  %282 = icmp ult i32 %281, 5
  br i1 %282, label %283, label %335

283:                                              ; preds = %280
  %284 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %285 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %284, i32 0, i32 14
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = load i32, i32* %5, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 13
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 3
  store i32* null, i32** %295, align 8
  %296 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %297 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %296, i32 0, i32 14
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 13
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = load i32, i32* %6, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  store i32 16536, i32* %307, align 8
  %308 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %309 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %308, i32 0, i32 14
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 13
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 1
  store i32 16536, i32* %319, align 4
  %320 = load %struct.r100_cs_track*, %struct.r100_cs_track** %4, align 8
  %321 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %320, i32 0, i32 14
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 13
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = load i32, i32* %6, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  store i64 0, i64* %331, align 8
  br label %332

332:                                              ; preds = %283
  %333 = load i32, i32* %6, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %6, align 4
  br label %280

335:                                              ; preds = %280
  br label %336

336:                                              ; preds = %335, %232
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %5, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %5, align 4
  br label %140

340:                                              ; preds = %140
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
