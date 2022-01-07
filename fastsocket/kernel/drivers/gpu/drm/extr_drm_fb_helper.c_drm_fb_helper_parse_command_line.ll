; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_parse_command_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_parse_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, %struct.drm_fb_helper_connector** }
%struct.drm_fb_helper_connector = type { %struct.drm_cmdline_mode, %struct.drm_connector* }
%struct.drm_cmdline_mode = type { i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.drm_connector = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ON - dig\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"forcing %s connector %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cmdline mode for connector %s %dx%d@%dHz%s%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" reduced blanking\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" with margins\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" interlaced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*)* @drm_fb_helper_parse_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_fb_helper_parse_command_line(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  %3 = alloca %struct.drm_fb_helper_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_cmdline_mode*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %2, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %102, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %12 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %105

15:                                               ; preds = %9
  store i8* null, i8** %7, align 8
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %17 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %16, i32 0, i32 1
  %18 = load %struct.drm_fb_helper_connector**, %struct.drm_fb_helper_connector*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %18, i64 %20
  %22 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %21, align 8
  store %struct.drm_fb_helper_connector* %22, %struct.drm_fb_helper_connector** %3, align 8
  %23 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %3, align 8
  %24 = getelementptr inbounds %struct.drm_fb_helper_connector, %struct.drm_fb_helper_connector* %23, i32 0, i32 1
  %25 = load %struct.drm_connector*, %struct.drm_connector** %24, align 8
  store %struct.drm_connector* %25, %struct.drm_connector** %6, align 8
  %26 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %3, align 8
  %27 = getelementptr inbounds %struct.drm_fb_helper_connector, %struct.drm_fb_helper_connector* %26, i32 0, i32 0
  store %struct.drm_cmdline_mode* %27, %struct.drm_cmdline_mode** %5, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %29 = call i32 @drm_get_connector_name(%struct.drm_connector* %28)
  %30 = call i64 @fb_get_options(i32 %29, i8** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %102

33:                                               ; preds = %15
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %36 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %37 = call i64 @drm_mode_parse_command_line_for_connector(i8* %34, %struct.drm_connector* %35, %struct.drm_cmdline_mode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %101

39:                                               ; preds = %33
  %40 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %50 [
    i32 130, label %48
    i32 128, label %49
    i32 129, label %51
  ]

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %52

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %52

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %44, %50
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %52

52:                                               ; preds = %51, %49, %48
  %53 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %54 = call i32 @drm_get_connector_name(%struct.drm_connector* %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @DRM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %54, i8* %55)
  %57 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %39
  %63 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %64 = call i32 @drm_get_connector_name(%struct.drm_connector* %63)
  %65 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %69 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %72 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %77 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 60, %79 ]
  %82 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %83 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %88 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %89 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %94 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %95 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %100 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 %67, i32 %70, i32 %81, i8* %87, i8* %93, i8* %99)
  br label %101

101:                                              ; preds = %80, %33
  br label %102

102:                                              ; preds = %101, %32
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %9

105:                                              ; preds = %9
  ret i32 0
}

declare dso_local i64 @fb_get_options(i32, i8**) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i64 @drm_mode_parse_command_line_for_connector(i8*, %struct.drm_connector*, %struct.drm_cmdline_mode*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
