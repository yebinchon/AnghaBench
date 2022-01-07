; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fill_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fill_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_fb_helper = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32, i32, i32 }

@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_fill_var(%struct.fb_info* %0, %struct.drm_fb_helper* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %struct.drm_fb_helper* %1, %struct.drm_fb_helper** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %11 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %10, i32 0, i32 1
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %9, align 8
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %14 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %19 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 14
  store i32 %20, i32* %23, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 13
  store i32 %26, i32* %29, align 8
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %31 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 12
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 11
  store i32 %36, i32* %39, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 8
  store i32 %46, i32* %49, align 8
  %50 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %57 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %220 [
    i32 8, label %59
    i32 15, label %92
    i32 16, label %125
    i32 24, label %154
    i32 32, label %187
  ]

59:                                               ; preds = %4
  %60 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 8, i32* %75, align 4
  %76 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 8, i32* %79, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 8, i32* %83, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %221

92:                                               ; preds = %4
  %93 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 10, i32* %96, align 8
  %97 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 5, i32* %100, align 8
  %101 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 5, i32* %108, align 4
  %109 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32 5, i32* %112, align 4
  %113 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 5, i32* %116, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 15, i32* %120, align 8
  %121 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  br label %221

125:                                              ; preds = %4
  %126 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 11, i32* %129, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 5, i32* %133, align 8
  %134 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  %138 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 5, i32* %141, align 4
  %142 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 6, i32* %145, align 4
  %146 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i32 5, i32* %149, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  br label %221

154:                                              ; preds = %4
  %155 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i32 16, i32* %158, align 8
  %159 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 8, i32* %162, align 8
  %163 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 8, i32* %170, align 4
  %171 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %172 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  store i32 8, i32* %174, align 4
  %175 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 8, i32* %178, align 8
  %179 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  %183 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  br label %221

187:                                              ; preds = %4
  %188 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 16, i32* %191, align 8
  %192 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %193 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  store i32 8, i32* %195, align 8
  %196 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %197 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  %200 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32 8, i32* %203, align 4
  %204 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %205 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  store i32 8, i32* %207, align 4
  %208 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %209 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  store i32 8, i32* %211, align 8
  %212 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %213 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  store i32 24, i32* %215, align 8
  %216 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %217 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  store i32 8, i32* %219, align 4
  br label %221

220:                                              ; preds = %4
  br label %221

221:                                              ; preds = %220, %187, %154, %125, %92, %59
  %222 = load i8*, i8** %7, align 8
  %223 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %224 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 3
  store i8* %222, i8** %225, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %228 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  store i8* %226, i8** %229, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
