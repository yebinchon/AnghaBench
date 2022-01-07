; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_reloc_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_reloc_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { i32 }
%struct.drm_nouveau_gem_pushbuf = type { i32, i64, i32 }
%struct.drm_nouveau_gem_pushbuf_bo = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.drm_nouveau_gem_pushbuf_reloc = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.nouveau_bo = type { i32, %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"reloc bo index invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reloc container bo index invalid\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"reloc outside of bo\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed kmap for reloc\0A\00", align 1
@NOUVEAU_GEM_RELOC_LOW = common dso_local global i32 0, align 4
@NOUVEAU_GEM_RELOC_HIGH = common dso_local global i32 0, align 4
@NOUVEAU_GEM_RELOC_OR = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"reloc wait_idle failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_cli*, %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf_bo*)* @nouveau_gem_pushbuf_reloc_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_pushbuf_reloc_apply(%struct.nouveau_cli* %0, %struct.drm_nouveau_gem_pushbuf* %1, %struct.drm_nouveau_gem_pushbuf_bo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca %struct.drm_nouveau_gem_pushbuf*, align 8
  %7 = alloca %struct.drm_nouveau_gem_pushbuf_bo*, align 8
  %8 = alloca %struct.drm_nouveau_gem_pushbuf_reloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_nouveau_gem_pushbuf_reloc*, align 8
  %12 = alloca %struct.drm_nouveau_gem_pushbuf_bo*, align 8
  %13 = alloca %struct.nouveau_bo*, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %5, align 8
  store %struct.drm_nouveau_gem_pushbuf* %1, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  store %struct.drm_nouveau_gem_pushbuf_bo* %2, %struct.drm_nouveau_gem_pushbuf_bo** %7, align 8
  store %struct.drm_nouveau_gem_pushbuf_reloc* null, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %16 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %19 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.drm_nouveau_gem_pushbuf_reloc* @u_memcpya(i32 %17, i32 %20, i32 40)
  store %struct.drm_nouveau_gem_pushbuf_reloc* %21, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %22 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %23 = call i64 @IS_ERR(%struct.drm_nouveau_gem_pushbuf_reloc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.drm_nouveau_gem_pushbuf_reloc* %26)
  store i32 %27, i32* %4, align 4
  br label %240

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %233, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %32 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %236

35:                                               ; preds = %29
  %36 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %36, i64 %38
  store %struct.drm_nouveau_gem_pushbuf_reloc* %39, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %40 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %41 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %44 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %52 = call i32 (%struct.nouveau_cli*, i8*, ...) @NV_ERROR(%struct.nouveau_cli* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %236

55:                                               ; preds = %35
  %56 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %7, align 8
  %57 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %58 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %56, i64 %59
  store %struct.drm_nouveau_gem_pushbuf_bo* %60, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %61 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %62 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %233

67:                                               ; preds = %55
  %68 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %69 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %72 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ugt i64 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %80 = call i32 (%struct.nouveau_cli*, i8*, ...) @NV_ERROR(%struct.nouveau_cli* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %236

83:                                               ; preds = %67
  %84 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %7, align 8
  %85 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %86 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %84, i64 %87
  %89 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = bitcast i8* %91 to %struct.nouveau_bo*
  store %struct.nouveau_bo* %92, %struct.nouveau_bo** %13, align 8
  %93 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %94 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 4
  %97 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %98 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = icmp sgt i32 %96, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %83
  %109 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %110 = call i32 (%struct.nouveau_cli*, i8*, ...) @NV_ERROR(%struct.nouveau_cli* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %236

113:                                              ; preds = %83
  %114 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %115 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %138, label %119

119:                                              ; preds = %113
  %120 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %121 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %120, i32 0, i32 1
  %122 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %123 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %128 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %127, i32 0, i32 2
  %129 = call i32 @ttm_bo_kmap(%struct.TYPE_10__* %121, i32 0, i32 %126, %struct.TYPE_11__* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %134 = call i32 (%struct.nouveau_cli*, i8*, ...) @NV_ERROR(%struct.nouveau_cli* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %236

135:                                              ; preds = %119
  %136 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %137 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %135, %113
  %139 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %140 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NOUVEAU_GEM_RELOC_LOW, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %147 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %151 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %149, %152
  store i32 %153, i32* %14, align 4
  br label %176

154:                                              ; preds = %138
  %155 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %156 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @NOUVEAU_GEM_RELOC_HIGH, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %163 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %167 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = ashr i32 %169, 32
  store i32 %170, i32* %14, align 4
  br label %175

171:                                              ; preds = %154
  %172 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %173 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %171, %161
  br label %176

176:                                              ; preds = %175, %145
  %177 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %178 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NOUVEAU_GEM_RELOC_OR, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %176
  %184 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %185 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @NOUVEAU_GEM_DOMAIN_GART, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %192 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %14, align 4
  br label %202

196:                                              ; preds = %183
  %197 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %198 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %196, %190
  br label %203

203:                                              ; preds = %202, %176
  %204 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %205 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = call i32 @spin_lock(i32* %208)
  %210 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %211 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %210, i32 0, i32 1
  %212 = call i32 @ttm_bo_wait(%struct.TYPE_10__* %211, i32 0, i32 0, i32 0)
  store i32 %212, i32* %9, align 4
  %213 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %214 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = call i32 @spin_unlock(i32* %217)
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %203
  %222 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %223 = load i32, i32* %9, align 4
  %224 = call i32 (%struct.nouveau_cli*, i8*, ...) @NV_ERROR(%struct.nouveau_cli* %222, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  br label %236

225:                                              ; preds = %203
  %226 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %227 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %228 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = ashr i32 %229, 2
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %226, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %225, %66
  %234 = load i32, i32* %10, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %29

236:                                              ; preds = %221, %132, %108, %78, %50, %29
  %237 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %238 = call i32 @kfree(%struct.drm_nouveau_gem_pushbuf_reloc* %237)
  %239 = load i32, i32* %9, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %25
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local %struct.drm_nouveau_gem_pushbuf_reloc* @u_memcpya(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_nouveau_gem_pushbuf_reloc*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_nouveau_gem_pushbuf_reloc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_cli*, i8*, ...) #1

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_10__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nouveau_bo_wr32(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_nouveau_gem_pushbuf_reloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
