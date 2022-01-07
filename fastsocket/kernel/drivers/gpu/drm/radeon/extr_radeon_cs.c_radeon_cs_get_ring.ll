; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_get_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_get_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown ring id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i8* null, align 8
@CHIP_TAHITI = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i8* null, align 8
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i8* null, align 8
@CHIP_CAYMAN = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i8* null, align 8
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i8* null, align 8
@CHIP_R600 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, i32, i32)* @radeon_cs_get_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_get_ring(%struct.radeon_cs_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %10 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %12 [
    i32 128, label %17
    i32 130, label %21
    i32 129, label %48
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %88

17:                                               ; preds = %3
  %18 = load i8*, i8** @RADEON_RING_TYPE_GFX_INDEX, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %87

21:                                               ; preds = %3
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CHIP_TAHITI, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8*, i8** @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %36 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load i8*, i8** @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %40 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %47

43:                                               ; preds = %21
  %44 = load i8*, i8** @RADEON_RING_TYPE_GFX_INDEX, align 8
  %45 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %42
  br label %87

48:                                               ; preds = %3
  %49 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CHIP_CAYMAN, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** @R600_RING_TYPE_DMA_INDEX, align 8
  %63 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load i8*, i8** @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %67 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %86

70:                                               ; preds = %48
  %71 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %72 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CHIP_R600, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i8*, i8** @R600_RING_TYPE_DMA_INDEX, align 8
  %80 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %81 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %85

82:                                               ; preds = %70
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %88

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %47, %17
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %82, %12
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
