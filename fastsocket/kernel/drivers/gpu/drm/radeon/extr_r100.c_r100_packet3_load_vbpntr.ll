; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_load_vbpntr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_load_vbpntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_cs_reloc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.r100_cs_track = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Only 16 vertex buffers are allowed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No reloc for packet3 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_cs_reloc*, align 8
  %11 = alloca %struct.r100_cs_track*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %22, %struct.r100_cs_track** %11, align 8
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %23, i32 %24)
  %27 = and i32 %26, 31
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 16
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %36 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %37 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %35, %struct.radeon_cs_packet* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %248

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %43 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %173, %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub i32 %46, 1
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %178

49:                                               ; preds = %44
  %50 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %51 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %50, %struct.radeon_cs_reloc** %10, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %60 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %61 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %59, %struct.radeon_cs_packet* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %248

63:                                               ; preds = %49
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %67, i32 %69)
  %71 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = add nsw i32 %70, %75
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store volatile i32 %76, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = ashr i32 %82, 8
  %84 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %85 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 0
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %83, i32* %91, align 4
  %92 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %10, align 8
  %93 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %96 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 0
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %94, i32* %102, align 4
  %103 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %104 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 0
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 127
  store i32 %112, i32* %110, align 4
  %113 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %114 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %113, %struct.radeon_cs_reloc** %10, i32 0)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %63
  %118 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %119 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %123 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %124 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %122, %struct.radeon_cs_packet* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %248

126:                                              ; preds = %63
  %127 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 2
  %130 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %127, i32 %129)
  %131 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %10, align 8
  %132 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = add nsw i32 %130, %135
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store volatile i32 %136, i32* %141, align 4
  %142 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %10, align 8
  %143 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %146 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 %144, i32* %152, align 4
  %153 = load i32, i32* %14, align 4
  %154 = ashr i32 %153, 24
  %155 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %156 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 %154, i32* %162, align 4
  %163 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %164 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add i32 %166, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 127
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %126
  %174 = load i32, i32* %9, align 4
  %175 = add i32 %174, 2
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 3
  store i32 %177, i32* %7, align 4
  br label %44

178:                                              ; preds = %44
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %246

182:                                              ; preds = %178
  %183 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %184 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %183, %struct.radeon_cs_reloc** %10, i32 0)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %189 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  %192 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %193 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %194 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %192, %struct.radeon_cs_packet* %193)
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %4, align 4
  br label %248

196:                                              ; preds = %182
  %197 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %197, i32 %198)
  store i32 %199, i32* %14, align 4
  %200 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %200, i32 %202)
  %204 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %10, align 8
  %205 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = add nsw i32 %203, %208
  %210 = load i32*, i32** %13, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store volatile i32 %209, i32* %214, align 4
  %215 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %10, align 8
  %216 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %219 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %218, i32 0, i32 1
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = add i32 %221, 0
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  store i32 %217, i32* %225, align 4
  %226 = load i32, i32* %14, align 4
  %227 = ashr i32 %226, 8
  %228 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %229 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = add i32 %231, 0
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i32 %227, i32* %235, align 4
  %236 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %237 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %236, i32 0, i32 1
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = add i32 %239, 0
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 127
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %196, %178
  %247 = load i32, i32* %12, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %246, %187, %117, %54, %30
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_cs_reloc**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
