; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7175.c_adv7175_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7175.c_adv7175_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7175 = type { i32, i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@TR1CAPT = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@TR0MODE = common dso_local global i32 0, align 4
@TR0RST = common dso_local global i32 0, align 4
@TR1PLAY = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"illegal input: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"switched to %s\0A\00", align 1
@inputs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @adv7175_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7175_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adv7175*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.adv7175* @to_adv7175(%struct.v4l2_subdev* %11)
  store %struct.adv7175* %12, %struct.adv7175** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %100 [
    i32 0, label %14
    i32 1, label %51
    i32 2, label %77
  ]

14:                                               ; preds = %4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = call i32 @adv7175_write(%struct.v4l2_subdev* %15, i32 1, i32 0)
  %17 = load %struct.adv7175*, %struct.adv7175** %10, align 8
  %18 = getelementptr inbounds %struct.adv7175, %struct.adv7175* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_STD_NTSC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %25 = call i32 @set_subcarrier_freq(%struct.v4l2_subdev* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %28 = load i32, i32* @TR1CAPT, align 4
  %29 = call i32 @adv7175_write(%struct.v4l2_subdev* %27, i32 12, i32 %28)
  %30 = load %struct.adv7175*, %struct.adv7175** %10, align 8
  %31 = getelementptr inbounds %struct.adv7175, %struct.adv7175* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V4L2_STD_SECAM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %38 = call i32 @adv7175_write(%struct.v4l2_subdev* %37, i32 13, i32 73)
  br label %42

39:                                               ; preds = %26
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %41 = call i32 @adv7175_write(%struct.v4l2_subdev* %40, i32 13, i32 79)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %44 = load i32, i32* @TR0MODE, align 4
  %45 = load i32, i32* @TR0RST, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @adv7175_write(%struct.v4l2_subdev* %43, i32 7, i32 %46)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %49 = load i32, i32* @TR0MODE, align 4
  %50 = call i32 @adv7175_write(%struct.v4l2_subdev* %48, i32 7, i32 %49)
  br label %107

51:                                               ; preds = %4
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %53 = call i32 @adv7175_write(%struct.v4l2_subdev* %52, i32 1, i32 0)
  %54 = load %struct.adv7175*, %struct.adv7175** %10, align 8
  %55 = getelementptr inbounds %struct.adv7175, %struct.adv7175* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @V4L2_STD_NTSC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %62 = call i32 @set_subcarrier_freq(%struct.v4l2_subdev* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %51
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %65 = load i32, i32* @TR1PLAY, align 4
  %66 = call i32 @adv7175_write(%struct.v4l2_subdev* %64, i32 12, i32 %65)
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %68 = call i32 @adv7175_write(%struct.v4l2_subdev* %67, i32 13, i32 73)
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %70 = load i32, i32* @TR0MODE, align 4
  %71 = load i32, i32* @TR0RST, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @adv7175_write(%struct.v4l2_subdev* %69, i32 7, i32 %72)
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %75 = load i32, i32* @TR0MODE, align 4
  %76 = call i32 @adv7175_write(%struct.v4l2_subdev* %74, i32 7, i32 %75)
  br label %107

77:                                               ; preds = %4
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %79 = call i32 @adv7175_write(%struct.v4l2_subdev* %78, i32 1, i32 128)
  %80 = load %struct.adv7175*, %struct.adv7175** %10, align 8
  %81 = getelementptr inbounds %struct.adv7175, %struct.adv7175* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @V4L2_STD_NTSC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %88 = call i32 @set_subcarrier_freq(%struct.v4l2_subdev* %87, i32 0)
  br label %89

89:                                               ; preds = %86, %77
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %91 = call i32 @adv7175_write(%struct.v4l2_subdev* %90, i32 13, i32 73)
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %93 = load i32, i32* @TR0MODE, align 4
  %94 = load i32, i32* @TR0RST, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @adv7175_write(%struct.v4l2_subdev* %92, i32 7, i32 %95)
  %97 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %98 = load i32, i32* @TR0MODE, align 4
  %99 = call i32 @adv7175_write(%struct.v4l2_subdev* %97, i32 7, i32 %98)
  br label %107

100:                                              ; preds = %4
  %101 = load i32, i32* @debug, align 4
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @v4l2_dbg(i32 1, i32 %101, %struct.v4l2_subdev* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %119

107:                                              ; preds = %89, %63, %42
  %108 = load i32, i32* @debug, align 4
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %110 = load i32*, i32** @inputs, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @v4l2_dbg(i32 1, i32 %108, %struct.v4l2_subdev* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.adv7175*, %struct.adv7175** %10, align 8
  %118 = getelementptr inbounds %struct.adv7175, %struct.adv7175* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %107, %100
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.adv7175* @to_adv7175(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7175_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @set_subcarrier_freq(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
