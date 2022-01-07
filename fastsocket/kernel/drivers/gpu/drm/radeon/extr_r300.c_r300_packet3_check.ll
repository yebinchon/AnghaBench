; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_r300_packet3_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_r300_packet3_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_cs_packet = type { i32, i32, i32 }
%struct.radeon_cs_reloc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.r100_cs_track = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"No reloc for packet3 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PRIM_WALK must be 3 for IMMD draw\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Packet3 opcode %x not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*)* @r300_packet3_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_packet3_check(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_cs_packet*, align 8
  %6 = alloca %struct.radeon_cs_reloc*, align 8
  %7 = alloca %struct.r100_cs_track*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %5, align 8
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %22, %struct.r100_cs_track** %7, align 8
  %23 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %238 [
    i32 130, label %26
    i32 129, label %36
    i32 136, label %76
    i32 135, label %111
    i32 132, label %143
    i32 131, label %160
    i32 134, label %176
    i32 133, label %193
    i32 138, label %209
    i32 137, label %209
    i32 139, label %223
    i32 128, label %237
  ]

26:                                               ; preds = %2
  %27 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %28 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser* %27, %struct.radeon_cs_packet* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %246

35:                                               ; preds = %26
  br label %245

36:                                               ; preds = %2
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %38 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %37, %struct.radeon_cs_reloc** %6, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %47 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %48 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %46, %struct.radeon_cs_packet* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %246

50:                                               ; preds = %36
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  %54 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %51, i32 %53)
  %55 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store volatile i32 %59, i32* %64, align 4
  %65 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %66 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %67 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser* %65, %struct.radeon_cs_packet* %66, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %246

75:                                               ; preds = %50
  br label %245

76:                                               ; preds = %2
  %77 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  %80 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %77, i32 %79)
  %81 = ashr i32 %80, 4
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %246

88:                                               ; preds = %76
  %89 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  %92 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %89, i32 %91)
  %93 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %94 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %96 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %100 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %102 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %105 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %103, %struct.r100_cs_track* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %88
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %246

110:                                              ; preds = %88
  br label %245

111:                                              ; preds = %2
  %112 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %112, i32 %113)
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 3
  %117 = icmp ne i32 %116, 3
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %246

122:                                              ; preds = %111
  %123 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %123, i32 %124)
  %126 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %127 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %132 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %134 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %137 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %135, %struct.r100_cs_track* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %122
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %3, align 4
  br label %246

142:                                              ; preds = %122
  br label %245

143:                                              ; preds = %2
  %144 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, 1
  %147 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %144, i32 %146)
  %148 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %149 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %151 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %154 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %152, %struct.r100_cs_track* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %143
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %246

159:                                              ; preds = %143
  br label %245

160:                                              ; preds = %2
  %161 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %161, i32 %162)
  %164 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %165 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %167 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %170 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %168, %struct.r100_cs_track* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %160
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %3, align 4
  br label %246

175:                                              ; preds = %160
  br label %245

176:                                              ; preds = %2
  %177 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add i32 %178, 1
  %180 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %177, i32 %179)
  %181 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %182 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %184 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %183, i32 0, i32 1
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %187 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %185, %struct.r100_cs_track* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %176
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %3, align 4
  br label %246

192:                                              ; preds = %176
  br label %245

193:                                              ; preds = %2
  %194 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %194, i32 %195)
  %197 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %198 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %200 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %199, i32 0, i32 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %203 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %201, %struct.r100_cs_track* %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %193
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %3, align 4
  br label %246

208:                                              ; preds = %193
  br label %245

209:                                              ; preds = %2, %2
  %210 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %211 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %216 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %214, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %246

222:                                              ; preds = %209
  br label %245

223:                                              ; preds = %2
  %224 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %225 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %224, i32 0, i32 1
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %230 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %228, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %223
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %246

236:                                              ; preds = %223
  br label %245

237:                                              ; preds = %2
  br label %245

238:                                              ; preds = %2
  %239 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %240 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %246

245:                                              ; preds = %237, %236, %222, %208, %192, %175, %159, %142, %110, %75, %35
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %245, %238, %233, %219, %206, %190, %173, %157, %140, %118, %108, %84, %73, %41, %33
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_cs_reloc**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @r100_cs_track_check(%struct.TYPE_6__*, %struct.r100_cs_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
