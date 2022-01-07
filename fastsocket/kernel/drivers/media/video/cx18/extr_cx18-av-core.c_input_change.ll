; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_input_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_input_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @input_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_change(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 0
  store %struct.cx18_av_state* %7, %struct.cx18_av_state** %3, align 8
  %8 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %9 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.cx18*, %struct.cx18** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @V4L2_STD_NTSC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 20, i32 17
  %18 = call i32 @cx18_av_write(%struct.cx18* %11, i32 1183, i32 %17)
  %19 = load %struct.cx18*, %struct.cx18** %2, align 8
  %20 = call i32 @cx18_av_and_or(%struct.cx18* %19, i32 1025, i32 -97, i32 0)
  %21 = load %struct.cx18*, %struct.cx18** %2, align 8
  %22 = call i32 @cx18_av_and_or(%struct.cx18* %21, i32 1025, i32 -97, i32 96)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @V4L2_STD_525_60, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.cx18*, %struct.cx18** %2, align 8
  %33 = call i32 @cx18_av_write_expect(%struct.cx18* %32, i32 2056, i32 247, i32 247, i32 255)
  %34 = load %struct.cx18*, %struct.cx18** %2, align 8
  %35 = call i32 @cx18_av_write_expect(%struct.cx18* %34, i32 2059, i32 2, i32 2, i32 63)
  br label %51

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.cx18*, %struct.cx18** %2, align 8
  %42 = call i32 @cx18_av_write_expect(%struct.cx18* %41, i32 2056, i32 248, i32 248, i32 255)
  %43 = load %struct.cx18*, %struct.cx18** %2, align 8
  %44 = call i32 @cx18_av_write_expect(%struct.cx18* %43, i32 2059, i32 3, i32 3, i32 63)
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.cx18*, %struct.cx18** %2, align 8
  %47 = call i32 @cx18_av_write_expect(%struct.cx18* %46, i32 2056, i32 246, i32 246, i32 255)
  %48 = load %struct.cx18*, %struct.cx18** %2, align 8
  %49 = call i32 @cx18_av_write_expect(%struct.cx18* %48, i32 2059, i32 1, i32 1, i32 63)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %31
  br label %74

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @V4L2_STD_PAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.cx18*, %struct.cx18** %2, align 8
  %59 = call i32 @cx18_av_write_expect(%struct.cx18* %58, i32 2056, i32 255, i32 255, i32 255)
  %60 = load %struct.cx18*, %struct.cx18** %2, align 8
  %61 = call i32 @cx18_av_write_expect(%struct.cx18* %60, i32 2059, i32 3, i32 3, i32 63)
  br label %73

62:                                               ; preds = %52
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @V4L2_STD_SECAM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.cx18*, %struct.cx18** %2, align 8
  %69 = call i32 @cx18_av_write_expect(%struct.cx18* %68, i32 2056, i32 255, i32 255, i32 255)
  %70 = load %struct.cx18*, %struct.cx18** %2, align 8
  %71 = call i32 @cx18_av_write_expect(%struct.cx18* %70, i32 2059, i32 3, i32 3, i32 63)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.cx18*, %struct.cx18** %2, align 8
  %76 = call i32 @cx18_av_read(%struct.cx18* %75, i32 2051)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 16
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, -17
  store i32 %82, i32* %5, align 4
  %83 = load %struct.cx18*, %struct.cx18** %2, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @cx18_av_write_expect(%struct.cx18* %83, i32 2051, i32 %84, i32 %85, i32 31)
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, 16
  store i32 %88, i32* %5, align 4
  %89 = load %struct.cx18*, %struct.cx18** %2, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @cx18_av_write_expect(%struct.cx18* %89, i32 2051, i32 %90, i32 %91, i32 31)
  br label %93

93:                                               ; preds = %80, %74
  ret void
}

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_and_or(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
