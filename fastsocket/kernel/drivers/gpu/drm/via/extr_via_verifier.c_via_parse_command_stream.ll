; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_parse_command_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_parse_command_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }

@HALCYON_HEADER2 = common dso_local global i32 0, align 4
@HALCYON_HEADER1MASK = common dso_local global i32 0, align 4
@HALCYON_HEADER1 = common dso_local global i32 0, align 4
@VIA_VIDEOMASK = common dso_local global i32 0, align 4
@VIA_VIDEO_HEADER5 = common dso_local global i32 0, align 4
@VIA_VIDEO_HEADER6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Invalid / Unimplemented DMA HEADER command. 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @via_parse_command_stream(%struct.drm_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = lshr i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %10, align 8
  store i32 133, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %82, %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ult i32* %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %79 [
    i32 130, label %28
    i32 131, label %32
    i32 129, label %36
    i32 128, label %40
    i32 133, label %44
    i32 132, label %78
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @via_parse_header2(i32* %29, i32** %6, i32* %30, i32* %12)
  store i32 %31, i32* %11, align 4
  br label %82

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @via_parse_header1(i32* %33, i32** %6, i32* %34)
  store i32 %35, i32* %11, align 4
  br label %82

36:                                               ; preds = %26
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @via_parse_vheader5(i32* %37, i32** %6, i32* %38)
  store i32 %39, i32* %11, align 4
  br label %82

40:                                               ; preds = %26
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @via_parse_vheader6(i32* %41, i32** %6, i32* %42)
  store i32 %43, i32* %11, align 4
  br label %82

44:                                               ; preds = %26
  %45 = load i32, i32* @HALCYON_HEADER2, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 130, i32* %11, align 4
  br label %77

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @HALCYON_HEADER1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 131, i32* %11, align 4
  br label %76

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @VIA_VIDEOMASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @VIA_VIDEO_HEADER5, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 129, i32* %11, align 4
  br label %75

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @VIA_VIDEOMASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @VIA_VIDEO_HEADER6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 128, i32* %11, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 132, i32* %11, align 4
  br label %74

74:                                               ; preds = %71, %70
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %49
  br label %82

78:                                               ; preds = %26
  br label %79

79:                                               ; preds = %26, %78
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %90

82:                                               ; preds = %77, %40, %36, %32, %28
  br label %22

83:                                               ; preds = %22
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 132
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %86, %79
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @via_parse_header2(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @via_parse_header1(i32*, i32**, i32*) #1

declare dso_local i32 @via_parse_vheader5(i32*, i32**, i32*) #1

declare dso_local i32 @via_parse_vheader6(i32*, i32**, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
