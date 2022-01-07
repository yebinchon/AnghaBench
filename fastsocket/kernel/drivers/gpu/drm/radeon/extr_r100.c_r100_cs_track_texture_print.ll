; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_texture_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_texture_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r100_cs_track_texture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"pitch                      %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"use_pitch                  %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"width                      %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"width_11                   %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"height                     %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"height_11                  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"num levels                 %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"depth                      %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"bpp                        %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"coordinate type            %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"width round to power of 2  %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"height round to power of 2 %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"compress format            %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r100_cs_track_texture*)* @r100_cs_track_texture_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r100_cs_track_texture_print(%struct.r100_cs_track_texture* %0) #0 {
  %2 = alloca %struct.r100_cs_track_texture*, align 8
  store %struct.r100_cs_track_texture* %0, %struct.r100_cs_track_texture** %2, align 8
  %3 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %4 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %3, i32 0, i32 12
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %8 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %12 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %16 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %20 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %24 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %28 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %32 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %36 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %37)
  %39 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %40 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %44 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %45)
  %47 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %48 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %49)
  %51 = load %struct.r100_cs_track_texture*, %struct.r100_cs_track_texture** %2, align 8
  %52 = getelementptr inbounds %struct.r100_cs_track_texture, %struct.r100_cs_track_texture* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %53)
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
