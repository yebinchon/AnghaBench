; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-misc.c_pwc_decode_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-misc.c_pwc_decode_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.pwc_device = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"VIDEO_PALETTE_RAW: going beyond abs_max.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"VIDEO_PALETTE_not RAW: going beyond view_max.\0A\00", align 1
@PSZ_MAX = common dso_local global i32 0, align 4
@pwc_image_sizes = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_decode_size(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22, %15
  %30 = call i32 @PWC_DEBUG_SIZE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

31:                                               ; preds = %22
  br label %49

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39, %32
  %47 = call i32 @PWC_DEBUG_SIZE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %31
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PSZ_MAX, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %56 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwc_image_sizes, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pwc_image_sizes, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %71, %62
  br label %83

83:                                               ; preds = %82, %54
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %50

87:                                               ; preds = %50
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %46, %29
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @PWC_DEBUG_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
