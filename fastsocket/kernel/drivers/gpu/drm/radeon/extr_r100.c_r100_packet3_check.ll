; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.radeon_cs_packet = type { i32, i32, i32 }
%struct.radeon_cs_reloc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.r100_cs_track = type { i32, i32, i32, i32, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"No reloc for packet3 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PRIM_WALK must be 3 for IMMD draw\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Packet3 opcode %x not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*)* @r100_packet3_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_packet3_check(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_cs_packet*, align 8
  %6 = alloca %struct.radeon_cs_reloc*, align 8
  %7 = alloca %struct.r100_cs_track*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %5, align 8
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %22, %struct.r100_cs_track** %7, align 8
  %23 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %311 [
    i32 130, label %26
    i32 129, label %36
    i32 35, label %76
    i32 136, label %156
    i32 135, label %198
    i32 131, label %230
    i32 133, label %246
    i32 132, label %262
    i32 134, label %279
    i32 138, label %296
    i32 137, label %296
    i32 128, label %310
  ]

26:                                               ; preds = %2
  %27 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %28 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser* %27, %struct.radeon_cs_packet* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %319

35:                                               ; preds = %26
  br label %318

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
  br label %319

50:                                               ; preds = %36
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  %54 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %51, i32 %53)
  %55 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %8, align 4
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
  br label %319

75:                                               ; preds = %50
  br label %318

76:                                               ; preds = %2
  %77 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %78 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %77, %struct.radeon_cs_reloc** %6, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %83 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %87 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %88 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %86, %struct.radeon_cs_packet* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %319

90:                                               ; preds = %76
  %91 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %91, i32 %92)
  %94 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %93, %97
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store volatile i32 %98, i32* %102, align 4
  %103 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %104 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, 2
  %108 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %105, i32 %107)
  %109 = call i8* @r100_get_vtx_size(i32 %108)
  %110 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %111 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %6, align 8
  %113 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %116 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %115, i32 0, i32 5
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 8
  %120 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %121 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %124 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %123, i32 0, i32 5
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i8* %122, i8** %127, align 8
  %128 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  %131 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %128, i32 %130)
  %132 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %133 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 3
  %137 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %134, i32 %136)
  %138 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %139 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %141 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %145 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %147 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %150 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %148, %struct.r100_cs_track* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %90
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %319

155:                                              ; preds = %90
  br label %318

156:                                              ; preds = %2
  %157 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %158, 1
  %160 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %157, i32 %159)
  %161 = ashr i32 %160, 4
  %162 = and i32 %161, 3
  %163 = icmp ne i32 %162, 3
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %319

168:                                              ; preds = %156
  %169 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %170 = load i32, i32* %8, align 4
  %171 = add i32 %170, 0
  %172 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %169, i32 %171)
  %173 = call i8* @r100_get_vtx_size(i32 %172)
  %174 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %175 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, 1
  %179 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %176, i32 %178)
  %180 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %181 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %183 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %187 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %189 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %192 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %190, %struct.r100_cs_track* %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %168
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %3, align 4
  br label %319

197:                                              ; preds = %168
  br label %318

198:                                              ; preds = %2
  %199 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %199, i32 %200)
  %202 = ashr i32 %201, 4
  %203 = and i32 %202, 3
  %204 = icmp ne i32 %203, 3
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %319

209:                                              ; preds = %198
  %210 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %210, i32 %211)
  %213 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %214 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %216 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %219 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %221 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %220, i32 0, i32 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %224 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %222, %struct.r100_cs_track* %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %209
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %3, align 4
  br label %319

229:                                              ; preds = %209
  br label %318

230:                                              ; preds = %2
  %231 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %231, i32 %232)
  %234 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %235 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %237 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %236, i32 0, i32 1
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %240 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %238, %struct.r100_cs_track* %239)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %230
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %3, align 4
  br label %319

245:                                              ; preds = %230
  br label %318

246:                                              ; preds = %2
  %247 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %247, i32 %248)
  %250 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %251 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  %252 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %253 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %252, i32 0, i32 1
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %256 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %254, %struct.r100_cs_track* %255)
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %246
  %260 = load i32, i32* %10, align 4
  store i32 %260, i32* %3, align 4
  br label %319

261:                                              ; preds = %246
  br label %318

262:                                              ; preds = %2
  %263 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add i32 %264, 1
  %266 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %263, i32 %265)
  %267 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %268 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %270 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %269, i32 0, i32 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %273 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %271, %struct.r100_cs_track* %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %262
  %277 = load i32, i32* %10, align 4
  store i32 %277, i32* %3, align 4
  br label %319

278:                                              ; preds = %262
  br label %318

279:                                              ; preds = %2
  %280 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %281 = load i32, i32* %8, align 4
  %282 = add i32 %281, 1
  %283 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %280, i32 %282)
  %284 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %285 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %287 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %286, i32 0, i32 1
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %290 = call i32 @r100_cs_track_check(%struct.TYPE_8__* %288, %struct.r100_cs_track* %289)
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %279
  %294 = load i32, i32* %10, align 4
  store i32 %294, i32* %3, align 4
  br label %319

295:                                              ; preds = %279
  br label %318

296:                                              ; preds = %2, %2
  %297 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %298 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %297, i32 0, i32 1
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %303 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %301, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %296
  %307 = load i32, i32* @EINVAL, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %3, align 4
  br label %319

309:                                              ; preds = %296
  br label %318

310:                                              ; preds = %2
  br label %318

311:                                              ; preds = %2
  %312 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %313 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* @EINVAL, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %3, align 4
  br label %319

318:                                              ; preds = %310, %309, %295, %278, %261, %245, %229, %197, %155, %75, %35
  store i32 0, i32* %3, align 4
  br label %319

319:                                              ; preds = %318, %311, %306, %293, %276, %259, %243, %227, %205, %195, %164, %153, %81, %73, %41, %33
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_cs_reloc**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i8* @r100_get_vtx_size(i32) #1

declare dso_local i32 @r100_cs_track_check(%struct.TYPE_8__*, %struct.r100_cs_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
