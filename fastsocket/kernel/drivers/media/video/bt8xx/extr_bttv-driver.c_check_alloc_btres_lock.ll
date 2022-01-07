; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_check_alloc_btres_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_check_alloc_btres_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bttv_fh = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@RESOURCE_VIDEO_READ = common dso_local global i32 0, align 4
@RESOURCE_VIDEO_STREAM = common dso_local global i32 0, align 4
@VIDEO_RESOURCES = common dso_local global i32 0, align 4
@VBI_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.bttv_fh*, i32)* @check_alloc_btres_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_alloc_btres_lock(%struct.bttv* %0, %struct.bttv_fh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.bttv_fh* %1, %struct.bttv_fh** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %12 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %111

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @RESOURCE_VIDEO_READ, align 4
  %22 = load i32, i32* @RESOURCE_VIDEO_STREAM, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* @RESOURCE_VIDEO_READ, align 4
  %28 = load i32, i32* @RESOURCE_VIDEO_STREAM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.bttv*, %struct.bttv** %5, align 8
  %34 = getelementptr inbounds %struct.bttv, %struct.bttv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %110

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @VIDEO_RESOURCES, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %40
  %46 = load %struct.bttv*, %struct.bttv** %5, align 8
  %47 = getelementptr inbounds %struct.bttv, %struct.bttv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VIDEO_RESOURCES, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %45
  %53 = load %struct.bttv*, %struct.bttv** %5, align 8
  %54 = getelementptr inbounds %struct.bttv, %struct.bttv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %57 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %9, align 8
  %68 = load %struct.bttv*, %struct.bttv** %5, align 8
  %69 = getelementptr inbounds %struct.bttv, %struct.bttv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %110

74:                                               ; preds = %52
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.bttv*, %struct.bttv** %5, align 8
  %77 = getelementptr inbounds %struct.bttv, %struct.bttv* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %99

78:                                               ; preds = %45, %40
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @VBI_RESOURCES, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %85 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.bttv*, %struct.bttv** %5, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %110

94:                                               ; preds = %83
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.bttv*, %struct.bttv** %5, align 8
  %97 = getelementptr inbounds %struct.bttv, %struct.bttv* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %78
  br label %99

99:                                               ; preds = %98, %74
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %102 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.bttv*, %struct.bttv** %5, align 8
  %107 = getelementptr inbounds %struct.bttv, %struct.bttv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  store i32 1, i32* %4, align 4
  br label %111

110:                                              ; preds = %93, %73, %39
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %99, %17
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
