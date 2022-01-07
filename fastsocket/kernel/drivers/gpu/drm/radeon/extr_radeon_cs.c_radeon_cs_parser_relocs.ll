; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_relocs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__**, i32, i64, %struct.radeon_cs_chunk*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.radeon_cs_chunk = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_radeon_cs_reloc = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"gem object lookup failed 0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*)* @radeon_cs_parser_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_parser_relocs(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_cs_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_radeon_cs_reloc*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %10 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %10, i32 0, i32 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %284

20:                                               ; preds = %1
  %21 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %21, i32 0, i32 7
  %23 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %22, align 8
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %23, i64 %27
  store %struct.radeon_cs_chunk* %28, %struct.radeon_cs_chunk** %5, align 8
  %29 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 4
  %35 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kcalloc(i32 %39, i32 8, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_8__**
  %43 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %43, i32 0, i32 4
  store %struct.TYPE_8__** %42, %struct.TYPE_8__*** %44, align 8
  %45 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = icmp eq %struct.TYPE_8__** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %20
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %284

52:                                               ; preds = %20
  %53 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kcalloc(i32 %55, i32 4, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_8__*
  %59 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %59, i32 0, i32 3
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %60, align 8
  %61 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp eq %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %284

68:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %277, %68
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %280

75:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  %76 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = mul i32 %79, 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = bitcast i32* %82 to %struct.drm_radeon_cs_reloc*
  store %struct.drm_radeon_cs_reloc* %83, %struct.drm_radeon_cs_reloc** %9, align 8
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %115, %75
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %90 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %92, i32 0, i32 3
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %91, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %88
  %102 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %108, i32 0, i32 4
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %110, i64 %112
  store %struct.TYPE_8__* %107, %struct.TYPE_8__** %113, align 8
  store i32 1, i32* %8, align 4
  br label %118

114:                                              ; preds = %88
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %84

118:                                              ; preds = %101, %84
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %268, label %121

121:                                              ; preds = %118
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %127 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32* @drm_gem_object_lookup(%struct.drm_device* %122, i32 %125, i64 %128)
  %130 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %130, i32 0, i32 3
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 4
  store i32* %129, i32** %136, align 8
  %137 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %137, i32 0, i32 3
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %121
  %147 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %148 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %149)
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %284

153:                                              ; preds = %121
  %154 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %160, i32 0, i32 4
  %162 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %162, i64 %164
  store %struct.TYPE_8__* %159, %struct.TYPE_8__** %165, align 8
  %166 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %166, i32 0, i32 3
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = call %struct.TYPE_10__* @gem_to_radeon_bo(i32* %173)
  %175 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %176 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %175, i32 0, i32 3
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %181, align 8
  %182 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %183 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %182, i32 0, i32 3
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %191 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %190, i32 0, i32 3
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  store %struct.TYPE_10__* %189, %struct.TYPE_10__** %197, align 8
  %198 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %199 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %202 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i32 %200, i32* %208, align 4
  %209 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %210 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %213 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %212, i32 0, i32 3
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  store i32 %211, i32* %219, align 8
  %220 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %221 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %220, i32 0, i32 3
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %230 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %229, i32 0, i32 3
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  store i32* %228, i32** %237, align 8
  %238 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %239 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %242 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %241, i32 0, i32 3
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  store i64 %240, i64* %247, align 8
  %248 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %249 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %252 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %251, i32 0, i32 3
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  store i32 %250, i32* %257, align 8
  %258 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %258, i32 0, i32 3
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %266 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %265, i32 0, i32 2
  %267 = call i32 @radeon_bo_list_add_object(%struct.TYPE_9__* %264, i32* %266)
  br label %276

268:                                              ; preds = %118
  %269 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %270 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %269, i32 0, i32 3
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  store i64 0, i64* %275, align 8
  br label %276

276:                                              ; preds = %268, %153
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %6, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %69

280:                                              ; preds = %69
  %281 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %282 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %281, i32 0, i32 2
  %283 = call i32 @radeon_bo_list_validate(i32* %282)
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %280, %146, %65, %49, %19
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @drm_gem_object_lookup(%struct.drm_device*, i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local %struct.TYPE_10__* @gem_to_radeon_bo(i32*) #1

declare dso_local i32 @radeon_bo_list_add_object(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @radeon_bo_list_validate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
