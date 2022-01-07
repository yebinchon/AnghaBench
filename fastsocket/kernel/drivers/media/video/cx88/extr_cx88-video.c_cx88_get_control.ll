; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_get_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_ctrl = type { i32, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cx88_core = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@CX8800_CTLS = common dso_local global i32 0, align 4
@cx8800_ctls = common dso_local global %struct.cx88_ctrl* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"get_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" [shadowed]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_get_control(%struct.cx88_core* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.cx88_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  store %struct.cx88_ctrl* null, %struct.cx88_ctrl** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %31, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @CX8800_CTLS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** @cx8800_ctls, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %14, i64 %16
  %18 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** @cx8800_ctls, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %26, i64 %28
  store %struct.cx88_ctrl* %29, %struct.cx88_ctrl** %6, align 8
  br label %30

30:                                               ; preds = %25, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %36 = icmp eq %struct.cx88_ctrl* null, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %130

43:                                               ; preds = %34
  %44 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %45 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %50 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @cx_sread(i64 %51)
  br label %58

53:                                               ; preds = %43
  %54 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cx_read(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i32 [ %52, %48 ], [ %57, %53 ]
  store i32 %59, i32* %7, align 4
  %60 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %85 [
    i32 129, label %63
    i32 128, label %79
  ]

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 127
  %66 = icmp slt i32 %65, 64
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 127
  %70 = add nsw i32 %69, 64
  br label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 127
  %74 = sub nsw i32 127, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %70, %67 ], [ %74, %71 ]
  %77 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %105

79:                                               ; preds = %58
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 63
  %82 = sub nsw i32 63, %81
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %105

85:                                               ; preds = %58
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %88 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %91 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %89, %92
  %94 = add nsw i32 %86, %93
  %95 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %96 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %94, %97
  %99 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %100 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %98, %101
  %103 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %85, %79, %75
  %106 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %110 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %117 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %121 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %124 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %129 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %112, i32 %115, i32 %118, i32 %119, i32 %122, i8* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %105, %40
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cx_sread(i64) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
