; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"fb userspace requested width/height/bpp is greater than current fb request %dx%d-%d (virtual %dx%d) > %dx%d-%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %10, align 8
  store %struct.drm_fb_helper* %11, %struct.drm_fb_helper** %6, align 8
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 0
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %7, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = call i64 (...) @in_dbg_master()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %249

25:                                               ; preds = %19
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %65, label %33

33:                                               ; preds = %25
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %33
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %62 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %57, %49, %41, %33, %25
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %82 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %85 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %88 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %71, i64 %74, i64 %77, i64 %80, i64 %83, i64 %86, i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %249

93:                                               ; preds = %57
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  switch i64 %96, label %113 [
    i64 16, label %97
    i64 32, label %105
  ]

97:                                               ; preds = %93
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 6
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 16, i32 15
  store i32 %104, i32* %8, align 4
  br label %118

105:                                              ; preds = %93
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 32, i32 24
  store i32 %112, i32* %8, align 4
  br label %118

113:                                              ; preds = %93
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %113, %105, %97
  %119 = load i32, i32* %8, align 4
  switch i32 %119, label %245 [
    i32 8, label %120
    i32 15, label %145
    i32 16, label %170
    i32 24, label %195
    i32 32, label %220
  ]

120:                                              ; preds = %118
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 8, i32* %132, align 4
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 8, i32* %135, align 8
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32 8, i32* %138, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  br label %248

145:                                              ; preds = %118
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 10, i32* %148, align 8
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 5, i32* %151, align 4
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 5, i32* %157, align 4
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 5, i32* %160, align 8
  %161 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %162 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i32 5, i32* %163, align 8
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  store i32 15, i32* %169, align 4
  br label %248

170:                                              ; preds = %118
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32 11, i32* %173, align 8
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i32 5, i32* %176, align 4
  %177 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %178 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 9
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  store i32 5, i32* %182, align 4
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i32 6, i32* %185, align 8
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  store i32 5, i32* %188, align 8
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  br label %248

195:                                              ; preds = %118
  %196 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %197 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  store i32 16, i32* %198, align 8
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i32 8, i32* %201, align 4
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  store i32 0, i32* %204, align 4
  %205 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %206 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i32 8, i32* %207, align 4
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i32 8, i32* %210, align 8
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i32 8, i32* %213, align 8
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 8
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  store i32 0, i32* %219, align 4
  br label %248

220:                                              ; preds = %118
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 9
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i32 16, i32* %223, align 8
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  store i32 8, i32* %226, align 4
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  store i32 0, i32* %229, align 4
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  store i32 8, i32* %232, align 4
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i32 8, i32* %235, align 8
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 7
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  store i32 8, i32* %238, align 8
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  store i32 8, i32* %241, align 8
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  store i32 24, i32* %244, align 4
  br label %248

245:                                              ; preds = %118
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %3, align 4
  br label %249

248:                                              ; preds = %220, %195, %170, %145, %120
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %248, %245, %65, %22
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i64 @in_dbg_master(...) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
