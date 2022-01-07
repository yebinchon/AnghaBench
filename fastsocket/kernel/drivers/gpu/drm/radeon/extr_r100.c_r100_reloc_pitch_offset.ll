; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_reloc_pitch_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_reloc_pitch_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_cs_reloc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", align 1
@RADEON_CS_KEEP_TILING_FLAGS = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_DST_TILE_MACRO = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@RADEON_SRC_PITCH_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot src blit from microtiled surface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_DST_TILE_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_reloc_pitch_offset(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cs_parser*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeon_cs_reloc*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %6, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %16 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %15, %struct.radeon_cs_reloc** %13, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %24 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %25 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %23, %struct.radeon_cs_packet* %24)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %110

27:                                               ; preds = %4
  %28 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = and i32 %31, 4194303
  store i32 %32, i32* %12, align 4
  %33 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %13, align 8
  %34 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = ashr i32 %37, 10
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %97, label %47

47:                                               ; preds = %27
  %48 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %13, align 8
  %49 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @RADEON_DST_TILE_MACRO, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.radeon_cs_reloc*, %struct.radeon_cs_reloc** %13, align 8
  %61 = getelementptr inbounds %struct.radeon_cs_reloc, %struct.radeon_cs_reloc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RADEON_SRC_PITCH_OFFSET, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %74 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %75 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %73, %struct.radeon_cs_packet* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %110

78:                                               ; preds = %67
  %79 = load i32, i32* @RADEON_DST_TILE_MICRO, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %59
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %14, align 4
  %87 = and i32 %86, 1069547520
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %89, i32* %96, align 4
  br label %109

97:                                               ; preds = %27
  %98 = load i32, i32* %14, align 4
  %99 = and i32 %98, -4194304
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %103 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %101, i32* %108, align 4
  br label %109

109:                                              ; preds = %97, %82
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %71, %19
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_cs_reloc**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
