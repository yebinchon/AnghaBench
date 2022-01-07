; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_check_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_check_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.r600_cs_track = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.radeon_cs_reloc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@r600_reg_safe_bm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"forbidden register 0x%08x at %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_CS_KEEP_TILING_FLAGS = common dso_local global i32 0, align 4
@r600_nomm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"bad SET_CONTEXT_REG 0x%04X\0A\00", align 1
@C_028010_ARRAY_MODE = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@V_028010_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@V_028010_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"missing reloc for CP_COHER_BASE 0x%04X\0A\00", align 1
@V_028808_SPECIAL_RESOLVE_BOX = common dso_local global i32 0, align 4
@V_0280A0_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@V_0280A0_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"Broken old userspace ? no cb_color0_base supplied before trying to write 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"bad SET_CONFIG_REG 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, i32, i32)* @r600_cs_check_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_cs_check_reg(%struct.radeon_cs_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r600_cs_track*, align 8
  %9 = alloca %struct.radeon_cs_reloc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.r600_cs_track*
  store %struct.r600_cs_track* %18, %struct.r600_cs_track** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 7
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** @r600_reg_safe_bm, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %1002

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 2
  %37 = and i32 %36, 31
  %38 = shl i32 1, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** @r600_reg_safe_bm, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %1002

48:                                               ; preds = %34
  %49 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %13, align 8
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %992 [
    i32 203, label %54
    i32 266, label %54
    i32 201, label %54
    i32 264, label %54
    i32 197, label %54
    i32 260, label %54
    i32 200, label %54
    i32 263, label %54
    i32 202, label %54
    i32 265, label %54
    i32 198, label %54
    i32 261, label %54
    i32 196, label %54
    i32 259, label %54
    i32 199, label %54
    i32 262, label %54
    i32 195, label %54
    i32 143, label %62
    i32 205, label %68
    i32 256, label %76
    i32 257, label %166
    i32 258, label %174
    i32 194, label %185
    i32 193, label %193
    i32 135, label %201
    i32 134, label %201
    i32 133, label %201
    i32 132, label %201
    i32 131, label %261
    i32 130, label %261
    i32 129, label %261
    i32 128, label %261
    i32 270, label %277
    i32 207, label %303
    i32 206, label %311
    i32 192, label %317
    i32 204, label %331
    i32 239, label %344
    i32 238, label %344
    i32 237, label %344
    i32 236, label %344
    i32 235, label %344
    i32 234, label %344
    i32 233, label %344
    i32 232, label %344
    i32 247, label %453
    i32 246, label %453
    i32 245, label %453
    i32 244, label %453
    i32 243, label %453
    i32 242, label %453
    i32 241, label %453
    i32 240, label %453
    i32 255, label %468
    i32 254, label %468
    i32 253, label %468
    i32 252, label %468
    i32 251, label %468
    i32 250, label %468
    i32 249, label %468
    i32 248, label %468
    i32 223, label %490
    i32 222, label %490
    i32 221, label %490
    i32 220, label %490
    i32 219, label %490
    i32 218, label %490
    i32 217, label %490
    i32 216, label %490
    i32 231, label %613
    i32 230, label %613
    i32 229, label %613
    i32 228, label %613
    i32 227, label %613
    i32 226, label %613
    i32 225, label %613
    i32 224, label %613
    i32 215, label %736
    i32 214, label %736
    i32 213, label %736
    i32 212, label %736
    i32 211, label %736
    i32 210, label %736
    i32 209, label %736
    i32 208, label %736
    i32 278, label %762
    i32 277, label %762
    i32 276, label %762
    i32 275, label %762
    i32 274, label %762
    i32 273, label %762
    i32 272, label %762
    i32 271, label %762
    i32 269, label %833
    i32 268, label %878
    i32 267, label %917
    i32 141, label %931
    i32 142, label %931
    i32 138, label %931
    i32 140, label %931
    i32 139, label %931
    i32 191, label %931
    i32 190, label %931
    i32 183, label %931
    i32 182, label %931
    i32 181, label %931
    i32 180, label %931
    i32 179, label %931
    i32 178, label %931
    i32 177, label %931
    i32 176, label %931
    i32 189, label %931
    i32 188, label %931
    i32 187, label %931
    i32 186, label %931
    i32 185, label %931
    i32 184, label %931
    i32 175, label %931
    i32 174, label %931
    i32 167, label %931
    i32 166, label %931
    i32 165, label %931
    i32 164, label %931
    i32 163, label %931
    i32 162, label %931
    i32 161, label %931
    i32 160, label %931
    i32 173, label %931
    i32 172, label %931
    i32 171, label %931
    i32 170, label %931
    i32 169, label %931
    i32 168, label %931
    i32 159, label %931
    i32 158, label %931
    i32 151, label %931
    i32 150, label %931
    i32 149, label %931
    i32 148, label %931
    i32 147, label %931
    i32 146, label %931
    i32 145, label %931
    i32 144, label %931
    i32 157, label %931
    i32 156, label %931
    i32 155, label %931
    i32 154, label %931
    i32 153, label %931
    i32 152, label %931
    i32 137, label %957
    i32 136, label %983
  ]

54:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  %55 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 0, i32* %61, align 4
  br label %1001

62:                                               ; preds = %48
  %63 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %63, i32 %64)
  %66 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %67 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %1001

68:                                               ; preds = %48
  %69 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %69, i32 %70)
  %72 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %73 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %75 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  br label %1001

76:                                               ; preds = %48
  %77 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %157, label %83

83:                                               ; preds = %76
  %84 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %85 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %157

87:                                               ; preds = %83
  %88 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %89 = load i32, i32* @r600_nomm, align 4
  %90 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %88, %struct.radeon_cs_reloc** %9, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %1002

101:                                              ; preds = %87
  %102 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %102, i32 %103)
  %105 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %106 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @C_028010_ARRAY_MODE, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %107
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @C_028010_ARRAY_MODE, align 4
  %115 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %116 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %120 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %101
  %127 = load i32, i32* @V_028010_ARRAY_2D_TILED_THIN1, align 4
  %128 = call i32 @S_028010_ARRAY_MODE(i32 %127)
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @V_028010_ARRAY_2D_TILED_THIN1, align 4
  %136 = call i32 @S_028010_ARRAY_MODE(i32 %135)
  %137 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %138 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %156

141:                                              ; preds = %101
  %142 = load i32, i32* @V_028010_ARRAY_1D_TILED_THIN1, align 4
  %143 = call i32 @S_028010_ARRAY_MODE(i32 %142)
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @V_028010_ARRAY_1D_TILED_THIN1, align 4
  %151 = call i32 @S_028010_ARRAY_MODE(i32 %150)
  %152 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %153 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %141, %126
  br label %163

157:                                              ; preds = %83, %76
  %158 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %158, i32 %159)
  %161 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %162 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %156
  %164 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %165 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  br label %1001

166:                                              ; preds = %48
  %167 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %167, i32 %168)
  %170 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %171 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %173 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  br label %1001

174:                                              ; preds = %48
  %175 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %175, i32 %176)
  %178 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %179 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %182 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %184 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  br label %1001

185:                                              ; preds = %48
  %186 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %186, i32 %187)
  %189 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %190 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %192 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %191, i32 0, i32 8
  store i32 1, i32* %192, align 8
  br label %1001

193:                                              ; preds = %48
  %194 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %194, i32 %195)
  %197 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %198 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %197, i32 0, i32 9
  store i32 %196, i32* %198, align 4
  %199 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %200 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %199, i32 0, i32 8
  store i32 1, i32* %200, align 8
  br label %1001

201:                                              ; preds = %48, %48, %48, %48
  %202 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %203 = load i32, i32* @r600_nomm, align 4
  %204 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %202, %struct.radeon_cs_reloc** %9, i32 %203)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %201
  %208 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %209 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %6, align 4
  %212 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %1002

215:                                              ; preds = %201
  %216 = load i32, i32* %6, align 4
  %217 = sub nsw i32 %216, 135
  %218 = sdiv i32 %217, 16
  store i32 %218, i32* %12, align 4
  %219 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %219, i32 %220)
  %222 = shl i32 %221, 8
  %223 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %224 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %223, i32 0, i32 10
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %222, i32* %228, align 4
  %229 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %230 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 8
  %234 = load i32*, i32** %13, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, %233
  store i32 %239, i32* %237, align 4
  %240 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %241 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %244 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %243, i32 0, i32 39
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %242, i32* %248, align 4
  %249 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %250 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %254 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %253, i32 0, i32 11
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %252, i32* %258, align 4
  %259 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %260 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %259, i32 0, i32 8
  store i32 1, i32* %260, align 8
  br label %1001

261:                                              ; preds = %48, %48, %48, %48
  %262 = load i32, i32* %6, align 4
  %263 = sub nsw i32 %262, 131
  %264 = sdiv i32 %263, 16
  store i32 %264, i32* %12, align 4
  %265 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %265, i32 %266)
  %268 = mul nsw i32 %267, 4
  %269 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %270 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %269, i32 0, i32 12
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %268, i32* %274, align 4
  %275 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %276 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %275, i32 0, i32 8
  store i32 1, i32* %276, align 8
  br label %1001

277:                                              ; preds = %48
  %278 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %279 = load i32, i32* @r600_nomm, align 4
  %280 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %278, %struct.radeon_cs_reloc** %9, i32 %279)
  store i32 %280, i32* %14, align 4
  %281 = load i32, i32* %14, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %277
  %284 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %285 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %6, align 4
  %288 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %286, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %4, align 4
  br label %1002

291:                                              ; preds = %277
  %292 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %293 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = ashr i32 %295, 8
  %297 = load i32*, i32** %13, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, %296
  store i32 %302, i32* %300, align 4
  br label %1001

303:                                              ; preds = %48
  %304 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %304, i32 %305)
  %307 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %308 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %307, i32 0, i32 13
  store i32 %306, i32* %308, align 8
  %309 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %310 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %309, i32 0, i32 14
  store i32 1, i32* %310, align 4
  br label %1001

311:                                              ; preds = %48
  %312 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %312, i32 %313)
  %315 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %316 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %315, i32 0, i32 15
  store i32 %314, i32* %316, align 8
  br label %1001

317:                                              ; preds = %48
  %318 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %319 = load i32, i32* %7, align 4
  %320 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %318, i32 %319)
  %321 = call i32 @G_028C04_MSAA_NUM_SAMPLES(i32 %320)
  store i32 %321, i32* %12, align 4
  %322 = load i32, i32* %12, align 4
  %323 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %324 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %323, i32 0, i32 16
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %12, align 4
  %326 = shl i32 1, %325
  %327 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %328 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %327, i32 0, i32 17
  store i32 %326, i32* %328, align 8
  %329 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %330 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %329, i32 0, i32 14
  store i32 1, i32* %330, align 4
  br label %1001

331:                                              ; preds = %48
  %332 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %333 = load i32, i32* %7, align 4
  %334 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %332, i32 %333)
  %335 = call i32 @G_028808_SPECIAL_OP(i32 %334)
  store i32 %335, i32* %12, align 4
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* @V_028808_SPECIAL_RESOLVE_BOX, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %341 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %340, i32 0, i32 18
  store i32 %339, i32* %341, align 4
  %342 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %343 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %342, i32 0, i32 14
  store i32 1, i32* %343, align 4
  br label %1001

344:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %345 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %346 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %437, label %351

351:                                              ; preds = %344
  %352 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %353 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %437

355:                                              ; preds = %351
  %356 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %357 = load i32, i32* @r600_nomm, align 4
  %358 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %356, %struct.radeon_cs_reloc** %9, i32 %357)
  store i32 %358, i32* %14, align 4
  %359 = load i32, i32* %14, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %355
  %362 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %363 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %6, align 4
  %366 = call i32 @dev_err(i32 %364, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %365)
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %4, align 4
  br label %1002

369:                                              ; preds = %355
  %370 = load i32, i32* %6, align 4
  %371 = sub nsw i32 %370, 239
  %372 = sdiv i32 %371, 4
  store i32 %372, i32* %12, align 4
  %373 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %374 = load i32, i32* %7, align 4
  %375 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %373, i32 %374)
  %376 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %377 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %376, i32 0, i32 19
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %375, i32* %381, align 4
  %382 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %383 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %408

389:                                              ; preds = %369
  %390 = load i32, i32* @V_0280A0_ARRAY_2D_TILED_THIN1, align 4
  %391 = call i32 @S_0280A0_ARRAY_MODE(i32 %390)
  %392 = load i32*, i32** %13, align 8
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %391
  store i32 %397, i32* %395, align 4
  %398 = load i32, i32* @V_0280A0_ARRAY_2D_TILED_THIN1, align 4
  %399 = call i32 @S_0280A0_ARRAY_MODE(i32 %398)
  %400 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %401 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %400, i32 0, i32 19
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %12, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = or i32 %406, %399
  store i32 %407, i32* %405, align 4
  br label %436

408:                                              ; preds = %369
  %409 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %410 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %435

416:                                              ; preds = %408
  %417 = load i32, i32* @V_0280A0_ARRAY_1D_TILED_THIN1, align 4
  %418 = call i32 @S_0280A0_ARRAY_MODE(i32 %417)
  %419 = load i32*, i32** %13, align 8
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, %418
  store i32 %424, i32* %422, align 4
  %425 = load i32, i32* @V_0280A0_ARRAY_1D_TILED_THIN1, align 4
  %426 = call i32 @S_0280A0_ARRAY_MODE(i32 %425)
  %427 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %428 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %427, i32 0, i32 19
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %12, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = or i32 %433, %426
  store i32 %434, i32* %432, align 4
  br label %435

435:                                              ; preds = %416, %408
  br label %436

436:                                              ; preds = %435, %389
  br label %450

437:                                              ; preds = %351, %344
  %438 = load i32, i32* %6, align 4
  %439 = sub nsw i32 %438, 239
  %440 = sdiv i32 %439, 4
  store i32 %440, i32* %12, align 4
  %441 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %442 = load i32, i32* %7, align 4
  %443 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %441, i32 %442)
  %444 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %445 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %444, i32 0, i32 19
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %12, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  store i32 %443, i32* %449, align 4
  br label %450

450:                                              ; preds = %437, %436
  %451 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %452 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %451, i32 0, i32 14
  store i32 1, i32* %452, align 4
  br label %1001

453:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %454 = load i32, i32* %6, align 4
  %455 = sub nsw i32 %454, 247
  %456 = sdiv i32 %455, 4
  store i32 %456, i32* %12, align 4
  %457 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %458 = load i32, i32* %7, align 4
  %459 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %457, i32 %458)
  %460 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %461 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %460, i32 0, i32 20
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %12, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %459, i32* %465, align 4
  %466 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %467 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %466, i32 0, i32 14
  store i32 1, i32* %467, align 4
  br label %1001

468:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %469 = load i32, i32* %6, align 4
  %470 = sub nsw i32 %469, 255
  %471 = sdiv i32 %470, 4
  store i32 %471, i32* %12, align 4
  %472 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %473 = load i32, i32* %7, align 4
  %474 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %472, i32 %473)
  %475 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %476 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %475, i32 0, i32 21
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %12, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  store i32 %474, i32* %480, align 4
  %481 = load i32, i32* %7, align 4
  %482 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %483 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %482, i32 0, i32 22
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %12, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %481, i32* %487, align 4
  %488 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %489 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %488, i32 0, i32 14
  store i32 1, i32* %489, align 4
  br label %1001

490:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %491 = load i32, i32* %6, align 4
  %492 = sub nsw i32 %491, 223
  %493 = sdiv i32 %492, 4
  store i32 %493, i32* %12, align 4
  %494 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %495 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %552, label %497

497:                                              ; preds = %490
  %498 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %499 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %498, i32 0, i32 23
  %500 = load i32*, i32** %499, align 8
  %501 = load i32, i32* %12, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %514, label %506

506:                                              ; preds = %497
  %507 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %508 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %6, align 4
  %511 = call i32 @dev_err(i32 %509, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %510)
  %512 = load i32, i32* @EINVAL, align 4
  %513 = sub nsw i32 0, %512
  store i32 %513, i32* %4, align 4
  br label %1002

514:                                              ; preds = %497
  %515 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %516 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %515, i32 0, i32 36
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %12, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %523 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %522, i32 0, i32 38
  %524 = load i32*, i32** %523, align 8
  %525 = load i32, i32* %12, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  store i32 %521, i32* %527, align 4
  %528 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %529 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %528, i32 0, i32 25
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %12, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %536 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %535, i32 0, i32 24
  %537 = load i32*, i32** %536, align 8
  %538 = load i32, i32* %12, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  store i32 %534, i32* %540, align 4
  %541 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %542 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %541, i32 0, i32 23
  %543 = load i32*, i32** %542, align 8
  %544 = load i32, i32* %12, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = load i32*, i32** %13, align 8
  %549 = load i32, i32* %7, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  store i32 %547, i32* %551, align 4
  br label %599

552:                                              ; preds = %490
  %553 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %554 = load i32, i32* @r600_nomm, align 4
  %555 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %553, %struct.radeon_cs_reloc** %9, i32 %554)
  store i32 %555, i32* %14, align 4
  %556 = load i32, i32* %14, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %566

558:                                              ; preds = %552
  %559 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %560 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* %6, align 4
  %563 = call i32 @dev_err(i32 %561, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %562)
  %564 = load i32, i32* @EINVAL, align 4
  %565 = sub nsw i32 0, %564
  store i32 %565, i32* %4, align 4
  br label %1002

566:                                              ; preds = %552
  %567 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %568 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %571 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %570, i32 0, i32 38
  %572 = load i32*, i32** %571, align 8
  %573 = load i32, i32* %12, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  store i32 %569, i32* %575, align 4
  %576 = load i32*, i32** %13, align 8
  %577 = load i32, i32* %7, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = shl i32 %580, 8
  %582 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %583 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %582, i32 0, i32 24
  %584 = load i32*, i32** %583, align 8
  %585 = load i32, i32* %12, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  store i32 %581, i32* %587, align 4
  %588 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %589 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = ashr i32 %591, 8
  %593 = load i32*, i32** %13, align 8
  %594 = load i32, i32* %7, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %593, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = add nsw i32 %597, %592
  store i32 %598, i32* %596, align 4
  br label %599

599:                                              ; preds = %566, %514
  %600 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %601 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %600, i32 0, i32 19
  %602 = load i32*, i32** %601, align 8
  %603 = load i32, i32* %12, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @G_0280A0_TILE_MODE(i32 %606)
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %599
  %610 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %611 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %610, i32 0, i32 14
  store i32 1, i32* %611, align 4
  br label %612

612:                                              ; preds = %609, %599
  br label %1001

613:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %614 = load i32, i32* %6, align 4
  %615 = sub nsw i32 %614, 231
  %616 = sdiv i32 %615, 4
  store i32 %616, i32* %12, align 4
  %617 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %618 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %617)
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %675, label %620

620:                                              ; preds = %613
  %621 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %622 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %621, i32 0, i32 23
  %623 = load i32*, i32** %622, align 8
  %624 = load i32, i32* %12, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %623, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %637, label %629

629:                                              ; preds = %620
  %630 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %631 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* %6, align 4
  %634 = call i32 @dev_err(i32 %632, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %633)
  %635 = load i32, i32* @EINVAL, align 4
  %636 = sub nsw i32 0, %635
  store i32 %636, i32* %4, align 4
  br label %1002

637:                                              ; preds = %620
  %638 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %639 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %638, i32 0, i32 36
  %640 = load i32*, i32** %639, align 8
  %641 = load i32, i32* %12, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i32, i32* %640, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %646 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %645, i32 0, i32 37
  %647 = load i32*, i32** %646, align 8
  %648 = load i32, i32* %12, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, i32* %647, i64 %649
  store i32 %644, i32* %650, align 4
  %651 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %652 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %651, i32 0, i32 25
  %653 = load i32*, i32** %652, align 8
  %654 = load i32, i32* %12, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %653, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %659 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %658, i32 0, i32 26
  %660 = load i32*, i32** %659, align 8
  %661 = load i32, i32* %12, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32, i32* %660, i64 %662
  store i32 %657, i32* %663, align 4
  %664 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %665 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %664, i32 0, i32 23
  %666 = load i32*, i32** %665, align 8
  %667 = load i32, i32* %12, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32, i32* %666, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = load i32*, i32** %13, align 8
  %672 = load i32, i32* %7, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32, i32* %671, i64 %673
  store i32 %670, i32* %674, align 4
  br label %722

675:                                              ; preds = %613
  %676 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %677 = load i32, i32* @r600_nomm, align 4
  %678 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %676, %struct.radeon_cs_reloc** %9, i32 %677)
  store i32 %678, i32* %14, align 4
  %679 = load i32, i32* %14, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %689

681:                                              ; preds = %675
  %682 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %683 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* %6, align 4
  %686 = call i32 @dev_err(i32 %684, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %685)
  %687 = load i32, i32* @EINVAL, align 4
  %688 = sub nsw i32 0, %687
  store i32 %688, i32* %4, align 4
  br label %1002

689:                                              ; preds = %675
  %690 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %691 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %694 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %693, i32 0, i32 37
  %695 = load i32*, i32** %694, align 8
  %696 = load i32, i32* %12, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i32, i32* %695, i64 %697
  store i32 %692, i32* %698, align 4
  %699 = load i32*, i32** %13, align 8
  %700 = load i32, i32* %7, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %699, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = shl i32 %703, 8
  %705 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %706 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %705, i32 0, i32 26
  %707 = load i32*, i32** %706, align 8
  %708 = load i32, i32* %12, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i32, i32* %707, i64 %709
  store i32 %704, i32* %710, align 4
  %711 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %712 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %711, i32 0, i32 0
  %713 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %712, i32 0, i32 1
  %714 = load i32, i32* %713, align 4
  %715 = ashr i32 %714, 8
  %716 = load i32*, i32** %13, align 8
  %717 = load i32, i32* %7, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %716, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = add nsw i32 %720, %715
  store i32 %721, i32* %719, align 4
  br label %722

722:                                              ; preds = %689, %637
  %723 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %724 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %723, i32 0, i32 19
  %725 = load i32*, i32** %724, align 8
  %726 = load i32, i32* %12, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32, i32* %725, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = call i32 @G_0280A0_TILE_MODE(i32 %729)
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %735

732:                                              ; preds = %722
  %733 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %734 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %733, i32 0, i32 14
  store i32 1, i32* %734, align 4
  br label %735

735:                                              ; preds = %732, %722
  br label %1001

736:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %737 = load i32, i32* %6, align 4
  %738 = sub nsw i32 %737, 215
  %739 = sdiv i32 %738, 4
  store i32 %739, i32* %12, align 4
  %740 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %741 = load i32, i32* %7, align 4
  %742 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %740, i32 %741)
  %743 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %744 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %743, i32 0, i32 27
  %745 = load i32*, i32** %744, align 8
  %746 = load i32, i32* %12, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i32, i32* %745, i64 %747
  store i32 %742, i32* %748, align 4
  %749 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %750 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %749, i32 0, i32 19
  %751 = load i32*, i32** %750, align 8
  %752 = load i32, i32* %12, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %751, i64 %753
  %755 = load i32, i32* %754, align 4
  %756 = call i32 @G_0280A0_TILE_MODE(i32 %755)
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %736
  %759 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %760 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %759, i32 0, i32 14
  store i32 1, i32* %760, align 4
  br label %761

761:                                              ; preds = %758, %736
  br label %1001

762:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %763 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %764 = load i32, i32* @r600_nomm, align 4
  %765 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %763, %struct.radeon_cs_reloc** %9, i32 %764)
  store i32 %765, i32* %14, align 4
  %766 = load i32, i32* %14, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %776

768:                                              ; preds = %762
  %769 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %770 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %769, i32 0, i32 1
  %771 = load i32, i32* %770, align 4
  %772 = load i32, i32* %6, align 4
  %773 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %771, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %772)
  %774 = load i32, i32* @EINVAL, align 4
  %775 = sub nsw i32 0, %774
  store i32 %775, i32* %4, align 4
  br label %1002

776:                                              ; preds = %762
  %777 = load i32, i32* %6, align 4
  %778 = sub nsw i32 %777, 278
  %779 = sdiv i32 %778, 4
  store i32 %779, i32* %12, align 4
  %780 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %781 = load i32, i32* %7, align 4
  %782 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %780, i32 %781)
  %783 = shl i32 %782, 8
  %784 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %785 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %784, i32 0, i32 25
  %786 = load i32*, i32** %785, align 8
  %787 = load i32, i32* %12, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i32, i32* %786, i64 %788
  store i32 %783, i32* %789, align 4
  %790 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %791 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %790, i32 0, i32 0
  %792 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %791, i32 0, i32 1
  %793 = load i32, i32* %792, align 4
  %794 = ashr i32 %793, 8
  %795 = load i32*, i32** %13, align 8
  %796 = load i32, i32* %7, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds i32, i32* %795, i64 %797
  %799 = load i32, i32* %798, align 4
  %800 = add nsw i32 %799, %794
  store i32 %800, i32* %798, align 4
  %801 = load i32*, i32** %13, align 8
  %802 = load i32, i32* %7, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i32, i32* %801, i64 %803
  %805 = load i32, i32* %804, align 4
  %806 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %807 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %806, i32 0, i32 23
  %808 = load i32*, i32** %807, align 8
  %809 = load i32, i32* %12, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i32, i32* %808, i64 %810
  store i32 %805, i32* %811, align 4
  %812 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %813 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 4
  %815 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %816 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %815, i32 0, i32 36
  %817 = load i32*, i32** %816, align 8
  %818 = load i32, i32* %12, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, i32* %817, i64 %819
  store i32 %814, i32* %820, align 4
  %821 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %822 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %822, i32 0, i32 1
  %824 = load i32, i32* %823, align 4
  %825 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %826 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %825, i32 0, i32 28
  %827 = load i32*, i32** %826, align 8
  %828 = load i32, i32* %12, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i32, i32* %827, i64 %829
  store i32 %824, i32* %830, align 4
  %831 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %832 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %831, i32 0, i32 14
  store i32 1, i32* %832, align 4
  br label %1001

833:                                              ; preds = %48
  %834 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %835 = load i32, i32* @r600_nomm, align 4
  %836 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %834, %struct.radeon_cs_reloc** %9, i32 %835)
  store i32 %836, i32* %14, align 4
  %837 = load i32, i32* %14, align 4
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %847

839:                                              ; preds = %833
  %840 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %841 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %840, i32 0, i32 1
  %842 = load i32, i32* %841, align 4
  %843 = load i32, i32* %6, align 4
  %844 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %842, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %843)
  %845 = load i32, i32* @EINVAL, align 4
  %846 = sub nsw i32 0, %845
  store i32 %846, i32* %4, align 4
  br label %1002

847:                                              ; preds = %833
  %848 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %849 = load i32, i32* %7, align 4
  %850 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %848, i32 %849)
  %851 = shl i32 %850, 8
  %852 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %853 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %852, i32 0, i32 29
  store i32 %851, i32* %853, align 8
  %854 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %855 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %854, i32 0, i32 0
  %856 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %855, i32 0, i32 1
  %857 = load i32, i32* %856, align 4
  %858 = ashr i32 %857, 8
  %859 = load i32*, i32** %13, align 8
  %860 = load i32, i32* %7, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i32, i32* %859, i64 %861
  %863 = load i32, i32* %862, align 4
  %864 = add nsw i32 %863, %858
  store i32 %864, i32* %862, align 4
  %865 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %866 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %865, i32 0, i32 1
  %867 = load i32, i32* %866, align 4
  %868 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %869 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %868, i32 0, i32 35
  store i32 %867, i32* %869, align 8
  %870 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %871 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %870, i32 0, i32 0
  %872 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %871, i32 0, i32 1
  %873 = load i32, i32* %872, align 4
  %874 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %875 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %874, i32 0, i32 30
  store i32 %873, i32* %875, align 4
  %876 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %877 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %876, i32 0, i32 2
  store i32 1, i32* %877, align 8
  br label %1001

878:                                              ; preds = %48
  %879 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %880 = load i32, i32* @r600_nomm, align 4
  %881 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %879, %struct.radeon_cs_reloc** %9, i32 %880)
  store i32 %881, i32* %14, align 4
  %882 = load i32, i32* %14, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %892

884:                                              ; preds = %878
  %885 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %886 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %885, i32 0, i32 1
  %887 = load i32, i32* %886, align 4
  %888 = load i32, i32* %6, align 4
  %889 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %887, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %888)
  %890 = load i32, i32* @EINVAL, align 4
  %891 = sub nsw i32 0, %890
  store i32 %891, i32* %4, align 4
  br label %1002

892:                                              ; preds = %878
  %893 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %894 = load i32, i32* %7, align 4
  %895 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %893, i32 %894)
  %896 = shl i32 %895, 8
  %897 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %898 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %897, i32 0, i32 31
  store i32 %896, i32* %898, align 8
  %899 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %900 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %899, i32 0, i32 0
  %901 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %900, i32 0, i32 1
  %902 = load i32, i32* %901, align 4
  %903 = ashr i32 %902, 8
  %904 = load i32*, i32** %13, align 8
  %905 = load i32, i32* %7, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i32, i32* %904, i64 %906
  %908 = load i32, i32* %907, align 4
  %909 = add nsw i32 %908, %903
  store i32 %909, i32* %907, align 4
  %910 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %911 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %910, i32 0, i32 1
  %912 = load i32, i32* %911, align 4
  %913 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %914 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %913, i32 0, i32 34
  store i32 %912, i32* %914, align 4
  %915 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %916 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %915, i32 0, i32 2
  store i32 1, i32* %916, align 8
  br label %1001

917:                                              ; preds = %48
  %918 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %919 = load i32, i32* %7, align 4
  %920 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %918, i32 %919)
  %921 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %922 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %921, i32 0, i32 32
  store i32 %920, i32* %922, align 4
  %923 = load i32*, i32** %13, align 8
  %924 = load i32, i32* %7, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i32, i32* %923, i64 %925
  %927 = load i32, i32* %926, align 4
  %928 = or i32 %927, 3
  store i32 %928, i32* %926, align 4
  %929 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %930 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %929, i32 0, i32 2
  store i32 1, i32* %930, align 8
  br label %1001

931:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  %932 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %933 = load i32, i32* @r600_nomm, align 4
  %934 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %932, %struct.radeon_cs_reloc** %9, i32 %933)
  store i32 %934, i32* %14, align 4
  %935 = load i32, i32* %14, align 4
  %936 = icmp ne i32 %935, 0
  br i1 %936, label %937, label %945

937:                                              ; preds = %931
  %938 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %939 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %938, i32 0, i32 1
  %940 = load i32, i32* %939, align 4
  %941 = load i32, i32* %6, align 4
  %942 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %940, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %941)
  %943 = load i32, i32* @EINVAL, align 4
  %944 = sub nsw i32 0, %943
  store i32 %944, i32* %4, align 4
  br label %1002

945:                                              ; preds = %931
  %946 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %947 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %946, i32 0, i32 0
  %948 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %947, i32 0, i32 1
  %949 = load i32, i32* %948, align 4
  %950 = ashr i32 %949, 8
  %951 = load i32*, i32** %13, align 8
  %952 = load i32, i32* %7, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i32, i32* %951, i64 %953
  %955 = load i32, i32* %954, align 4
  %956 = add nsw i32 %955, %950
  store i32 %956, i32* %954, align 4
  br label %1001

957:                                              ; preds = %48
  %958 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %959 = load i32, i32* @r600_nomm, align 4
  %960 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %958, %struct.radeon_cs_reloc** %9, i32 %959)
  store i32 %960, i32* %14, align 4
  %961 = load i32, i32* %14, align 4
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %963, label %971

963:                                              ; preds = %957
  %964 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %965 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %964, i32 0, i32 1
  %966 = load i32, i32* %965, align 4
  %967 = load i32, i32* %6, align 4
  %968 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %966, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %967)
  %969 = load i32, i32* @EINVAL, align 4
  %970 = sub nsw i32 0, %969
  store i32 %970, i32* %4, align 4
  br label %1002

971:                                              ; preds = %957
  %972 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %9, align 8
  %973 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %972, i32 0, i32 0
  %974 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %973, i32 0, i32 1
  %975 = load i32, i32* %974, align 4
  %976 = ashr i32 %975, 8
  %977 = load i32*, i32** %13, align 8
  %978 = load i32, i32* %7, align 4
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i32, i32* %977, i64 %979
  %981 = load i32, i32* %980, align 4
  %982 = add nsw i32 %981, %976
  store i32 %982, i32* %980, align 4
  br label %1001

983:                                              ; preds = %48
  %984 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %985 = load i32, i32* %7, align 4
  %986 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %984, i32 %985)
  %987 = and i32 %986, 1
  %988 = icmp ne i32 %987, 0
  %989 = zext i1 %988 to i32
  %990 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %991 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %990, i32 0, i32 33
  store i32 %989, i32* %991, align 8
  br label %1001

992:                                              ; preds = %48
  %993 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %994 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %993, i32 0, i32 1
  %995 = load i32, i32* %994, align 4
  %996 = load i32, i32* %6, align 4
  %997 = load i32, i32* %7, align 4
  %998 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %995, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %996, i32 %997)
  %999 = load i32, i32* @EINVAL, align 4
  %1000 = sub nsw i32 0, %999
  store i32 %1000, i32* %4, align 4
  br label %1002

1001:                                             ; preds = %983, %971, %945, %917, %892, %847, %776, %761, %735, %612, %468, %453, %450, %331, %317, %311, %303, %291, %261, %215, %193, %185, %174, %166, %163, %68, %62, %54
  store i32 0, i32* %4, align 4
  br label %1002

1002:                                             ; preds = %1001, %992, %963, %937, %884, %839, %768, %681, %629, %558, %506, %361, %283, %207, %93, %47, %25
  %1003 = load i32, i32* %4, align 4
  ret i32 %1003
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_cs_reloc**, i32) #1

declare dso_local i32 @S_028010_ARRAY_MODE(i32) #1

declare dso_local i32 @G_028C04_MSAA_NUM_SAMPLES(i32) #1

declare dso_local i32 @G_028808_SPECIAL_OP(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @S_0280A0_ARRAY_MODE(i32) #1

declare dso_local i32 @G_0280A0_TILE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
