; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_single_fb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_single_fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_11__*, %struct.fb_info*, %struct.TYPE_9__*, %struct.drm_fb_helper_connector** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.drm_display_mode* }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_display_mode = type { i64, i64 }
%struct.fb_info = type { %struct.TYPE_13__, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i64, i64 }
%struct.drm_fb_helper_connector = type { %struct.drm_cmdline_mode }
%struct.drm_cmdline_mode = type { i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"Cannot find any crtc or sizes - going 1024x768\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"fb%d: %s frame buffer device\0A\00", align 1
@kernel_fb_helper_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"registered panic notifier\0A\00", align 1
@panic_notifier_list = common dso_local global i32 0, align 4
@paniced = common dso_local global i32 0, align 4
@sysrq_drm_fb_helper_restore_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, i32)* @drm_fb_helper_single_fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_fb_helper_single_fb_probe(%struct.drm_fb_helper* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.drm_fb_helper_surface_size, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_fb_helper_connector*, align 8
  %13 = alloca %struct.drm_cmdline_mode*, align 8
  %14 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 @memset(%struct.drm_fb_helper_surface_size* %10, i32 0, i32 32)
  %16 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 24, i32* %16, align 8
  %17 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 32, i32* %17, align 4
  %18 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 2
  store i32 -1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 3
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %70, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %29
  %36 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %37 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %36, i32 0, i32 8
  %38 = load %struct.drm_fb_helper_connector**, %struct.drm_fb_helper_connector*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %38, i64 %40
  %42 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %41, align 8
  store %struct.drm_fb_helper_connector* %42, %struct.drm_fb_helper_connector** %12, align 8
  %43 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %12, align 8
  %44 = getelementptr inbounds %struct.drm_fb_helper_connector, %struct.drm_fb_helper_connector* %43, i32 0, i32 0
  store %struct.drm_cmdline_mode* %44, %struct.drm_cmdline_mode** %13, align 8
  %45 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %13, align 8
  %46 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %35
  %50 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %13, align 8
  %51 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %68 [
    i32 8, label %53
    i32 15, label %56
    i32 16, label %59
    i32 24, label %62
    i32 32, label %65
  ]

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 8, i32* %54, align 4
  %55 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 8, i32* %55, align 8
  br label %68

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 15, i32* %57, align 8
  %58 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 16, i32* %58, align 4
  br label %68

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 16, i32* %60, align 4
  %61 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 16, i32* %61, align 8
  br label %68

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 24, i32* %63, align 4
  %64 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 24, i32* %64, align 8
  br label %68

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 0
  store i32 24, i32* %66, align 8
  %67 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 1
  store i32 32, i32* %67, align 4
  br label %68

68:                                               ; preds = %49, %65, %62, %59, %56, %53
  br label %73

69:                                               ; preds = %35
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %29

73:                                               ; preds = %68, %29
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %162, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %77 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %165

80:                                               ; preds = %74
  %81 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %82 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %81, i32 0, i32 5
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %87, align 8
  store %struct.drm_display_mode* %88, %struct.drm_display_mode** %14, align 8
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %90 = icmp ne %struct.drm_display_mode* %89, null
  br i1 %90, label %91, label %161

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %96 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %95, i32 0, i32 5
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %94, %91
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = zext i32 %111 to i64
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %116 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  br label %120

120:                                              ; preds = %114, %106
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 3
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %120
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %137, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %143 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 4
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %141, %134
  %147 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %148 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 5
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %153, %146
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %158, %80
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %74

165:                                              ; preds = %74
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %182

176:                                              ; preds = %172, %168, %165
  %177 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %178 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 4
  store i64 1024, i64* %178, align 8
  %179 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 2
  store i32 1024, i32* %179, align 8
  %180 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 5
  store i64 768, i64* %180, align 8
  %181 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %10, i32 0, i32 3
  store i32 768, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %172
  %183 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %184 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %183, i32 0, i32 7
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)*, i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)** %186, align 8
  %188 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %189 = call i32 %187(%struct.drm_fb_helper* %188, %struct.drm_fb_helper_surface_size* %10)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %182
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %3, align 4
  br label %270

194:                                              ; preds = %182
  %195 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %196 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %195, i32 0, i32 6
  %197 = load %struct.fb_info*, %struct.fb_info** %196, align 8
  store %struct.fb_info* %197, %struct.fb_info** %9, align 8
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %228, %194
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %201 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %231

204:                                              ; preds = %198
  %205 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %206 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %205, i32 0, i32 5
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %204
  %216 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %217 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %220 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %219, i32 0, i32 5
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i32 %218, i32* %226, align 8
  br label %227

227:                                              ; preds = %215, %204
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %198

231:                                              ; preds = %198
  %232 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %233 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %236 = call i64 @register_framebuffer(%struct.fb_info* %235)
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %270

241:                                              ; preds = %231
  %242 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %243 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %242, i32 0, i32 3
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %248 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %251 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i32, i8*, ...) @dev_info(i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %249, i32 %253)
  %255 = call i64 @list_empty(i32* @kernel_fb_helper_list)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %241
  %258 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %259 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %258, i32 0, i32 3
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i32, i8*, ...) @dev_info(i32 %262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %264 = call i32 @atomic_notifier_chain_register(i32* @panic_notifier_list, i32* @paniced)
  %265 = call i32 @register_sysrq_key(i8 signext 118, i32* @sysrq_drm_fb_helper_restore_op)
  br label %266

266:                                              ; preds = %257, %241
  %267 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %268 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %267, i32 0, i32 2
  %269 = call i32 @list_add(i32* %268, i32* @kernel_fb_helper_list)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %266, %238, %192
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @memset(%struct.drm_fb_helper_surface_size*, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, i32*) #1

declare dso_local i32 @register_sysrq_key(i8 signext, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
