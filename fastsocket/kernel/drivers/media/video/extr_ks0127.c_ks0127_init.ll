; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ks0127.c_ks0127_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ks0127.c_ks0127_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ks0127 = type { i32 }

@reg_defaults = common dso_local global i32* null, align 8
@V4L2_IDENT_KS0127 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@KS_STAT = common dso_local global i32 0, align 4
@V4L2_IDENT_KS0122S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ks0122s found\0A\00", align 1
@KS_CMDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ks0127 found\0A\00", align 1
@V4L2_IDENT_KS0127B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ks0127B Revision A found\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown revision\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @ks0127_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks0127_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ks0127*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call %struct.ks0127* @to_ks0127(%struct.v4l2_subdev* %6)
  store %struct.ks0127* %7, %struct.ks0127** %3, align 8
  %8 = load i32*, i32** @reg_defaults, align 8
  store i32* %8, i32** %4, align 8
  %9 = load i32, i32* @V4L2_IDENT_KS0127, align 4
  %10 = load %struct.ks0127*, %struct.ks0127** %3, align 8
  %11 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %14 = call i32 @v4l2_dbg(i32 1, i32 %12, %struct.v4l2_subdev* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @msleep(i32 1)
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 33
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ks0127_write(%struct.v4l2_subdev* %20, i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  store i32 35, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 40
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ks0127_write(%struct.v4l2_subdev* %36, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  store i32 41, i32* %5, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 56
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ks0127_write(%struct.v4l2_subdev* %52, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %48

63:                                               ; preds = %48
  store i32 58, i32* %5, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 64
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ks0127_write(%struct.v4l2_subdev* %68, i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %64

79:                                               ; preds = %64
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %81 = load i32, i32* @KS_STAT, align 4
  %82 = call i32 @ks0127_read(%struct.v4l2_subdev* %80, i32 %81)
  %83 = and i32 %82, 128
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* @V4L2_IDENT_KS0122S, align 4
  %87 = load %struct.ks0127*, %struct.ks0127** %3, align 8
  %88 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @debug, align 4
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %91 = call i32 @v4l2_dbg(i32 1, i32 %89, %struct.v4l2_subdev* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %112

92:                                               ; preds = %79
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %94 = load i32, i32* @KS_CMDE, align 4
  %95 = call i32 @ks0127_read(%struct.v4l2_subdev* %93, i32 %94)
  %96 = and i32 %95, 15
  switch i32 %96, label %108 [
    i32 0, label %97
    i32 9, label %101
  ]

97:                                               ; preds = %92
  %98 = load i32, i32* @debug, align 4
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %100 = call i32 @v4l2_dbg(i32 1, i32 %98, %struct.v4l2_subdev* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %112

101:                                              ; preds = %92
  %102 = load i32, i32* @V4L2_IDENT_KS0127B, align 4
  %103 = load %struct.ks0127*, %struct.ks0127** %3, align 8
  %104 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @debug, align 4
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %107 = call i32 @v4l2_dbg(i32 1, i32 %105, %struct.v4l2_subdev* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %112

108:                                              ; preds = %92
  %109 = load i32, i32* @debug, align 4
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %111 = call i32 @v4l2_dbg(i32 1, i32 %109, %struct.v4l2_subdev* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %85, %108, %101, %97
  ret void
}

declare dso_local %struct.ks0127* @to_ks0127(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ks0127_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ks0127_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
