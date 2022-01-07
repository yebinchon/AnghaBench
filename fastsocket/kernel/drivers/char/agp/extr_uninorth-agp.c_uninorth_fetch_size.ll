; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_fetch_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.aper_size_info_32 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@aperture = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"invalid aperture size, using default\0A\00", align 1
@DEFAULT_APERTURE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uninorth_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.aper_size_info_32*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.aper_size_info_32* @A_SIZE_32(i32 %9)
  store %struct.aper_size_info_32* %10, %struct.aper_size_info_32** %3, align 8
  %11 = load i8*, i8** @aperture, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %0
  %14 = load i8*, i8** @aperture, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** @aperture, align 8
  %16 = call i32 @memparse(i8* %15, i8** @aperture)
  %17 = ashr i32 %16, 20
  store i32 %17, i32* %2, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** @aperture, align 8
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %38, %13
  %20 = load i32, i32* %1, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %3, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %29, i64 %31
  %33 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %19

41:                                               ; preds = %36, %19
  %42 = load i32, i32* %1, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i8* null, i8** @aperture, align 8
  br label %55

55:                                               ; preds = %49, %41
  br label %56

56:                                               ; preds = %55, %0
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %56
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %1, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %3, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %69, i64 %71
  %73 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DEFAULT_APERTURE_SIZE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %82

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  br label %60

82:                                               ; preds = %77, %60
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %3, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %84, i64 %86
  %88 = bitcast %struct.aper_size_info_32* %87 to i8*
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i8* %88, i8** %92, align 8
  %93 = load i32, i32* %1, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %3, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %96, i64 %98
  %100 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  ret i32 %101
}

declare dso_local %struct.aper_size_info_32* @A_SIZE_32(i32) #1

declare dso_local i32 @memparse(i8*, i8**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
