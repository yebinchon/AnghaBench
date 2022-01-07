; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { i32, %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }

@tda9874a_mode = common dso_local global i64 0, align 8
@MAXREGS = common dso_local global i32 0, align 4
@tda9874a_NCONR = common dso_local global i32 0, align 4
@TDA9874A_NCONR = common dso_local global i32 0, align 4
@tda9874a_dic = common dso_local global i32 0, align 4
@TDA9874A_AOSR = common dso_local global i32 0, align 4
@TDA9874A_MDACOSR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"tda9874a_setmode(): req. mode %d; AOSR=0x%X, MDACOSR=0x%X.\0A\00", align 1
@tda9874a_ESP = common dso_local global i32 0, align 4
@TDA9874A_FMMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"tda9874a_setmode(): req. mode %d; FMMR=0x%X, AOSR=0x%X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @tda9874a_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9874a_setmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %11 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %10, i32 0, i32 2
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %5, align 8
  %12 = load i64, i64* @tda9874a_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %16 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @MAXREGS, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @tda9874a_NCONR, align 4
  %28 = and i32 %27, 254
  store i32 %28, i32* @tda9874a_NCONR, align 4
  br label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @tda9874a_NCONR, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* @tda9874a_NCONR, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %34 = load i32, i32* @TDA9874A_NCONR, align 4
  %35 = load i32, i32* @tda9874a_NCONR, align 4
  %36 = call i32 @chip_write(%struct.CHIPSTATE* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* @tda9874a_dic, align 4
  %39 = icmp eq i32 %38, 17
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  store i32 128, i32* %6, align 4
  %41 = load i64, i64* @tda9874a_mode, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 130, i32 128
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %57 [
    i32 129, label %46
    i32 128, label %46
    i32 131, label %47
    i32 130, label %52
  ]

46:                                               ; preds = %40, %40
  br label %60

47:                                               ; preds = %40
  store i32 128, i32* %6, align 4
  %48 = load i64, i64* @tda9874a_mode, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 130, i32 128
  store i32 %51, i32* %7, align 4
  br label %60

52:                                               ; preds = %40
  store i32 160, i32* %6, align 4
  %53 = load i64, i64* @tda9874a_mode, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 131, i32 129
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %40
  %58 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %59 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %108

60:                                               ; preds = %52, %47, %46
  %61 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %62 = load i32, i32* @TDA9874A_AOSR, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @chip_write(%struct.CHIPSTATE* %61, i32 %62, i32 %63)
  %65 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %66 = load i32, i32* @TDA9874A_MDACOSR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @chip_write(%struct.CHIPSTATE* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @debug, align 4
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @v4l2_dbg(i32 1, i32 %69, %struct.v4l2_subdev* %70, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  br label %108

75:                                               ; preds = %37
  %76 = load i32, i32* %4, align 4
  switch i32 %76, label %90 [
    i32 129, label %77
    i32 128, label %78
    i32 131, label %88
    i32 130, label %89
  ]

77:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %93

78:                                               ; preds = %75
  %79 = load i64, i64* @tda9874a_mode, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @tda9874a_ESP, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 5, i32 4
  store i32 %86, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %82, %81
  br label %93

88:                                               ; preds = %75
  store i32 2, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %93

89:                                               ; preds = %75
  store i32 2, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %93

90:                                               ; preds = %75
  %91 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %92 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %108

93:                                               ; preds = %89, %88, %87, %77
  %94 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %95 = load i32, i32* @TDA9874A_FMMR, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @chip_write(%struct.CHIPSTATE* %94, i32 %95, i32 %96)
  %98 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %99 = load i32, i32* @TDA9874A_AOSR, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @chip_write(%struct.CHIPSTATE* %98, i32 %99, i32 %100)
  %102 = load i32, i32* @debug, align 4
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @v4l2_dbg(i32 1, i32 %102, %struct.v4l2_subdev* %103, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %57, %90, %93, %60
  ret void
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
