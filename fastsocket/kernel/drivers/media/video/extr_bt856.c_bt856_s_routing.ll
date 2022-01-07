; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt856.c_bt856_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt856.c_bt856_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.bt856 = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"set input %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @bt856_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt856_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bt856*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.bt856* @to_bt856(%struct.v4l2_subdev* %11)
  store %struct.bt856* %12, %struct.bt856** %10, align 8
  %13 = load i64, i64* @debug, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @v4l2_dbg(i32 1, i64 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %41 [
    i32 0, label %18
    i32 1, label %27
    i32 2, label %36
  ]

18:                                               ; preds = %4
  %19 = load %struct.bt856*, %struct.bt856** %10, align 8
  %20 = call i32 @bt856_setbit(%struct.bt856* %19, i32 222, i32 4, i32 0)
  %21 = load %struct.bt856*, %struct.bt856** %10, align 8
  %22 = call i32 @bt856_setbit(%struct.bt856* %21, i32 222, i32 3, i32 1)
  %23 = load %struct.bt856*, %struct.bt856** %10, align 8
  %24 = call i32 @bt856_setbit(%struct.bt856* %23, i32 220, i32 3, i32 1)
  %25 = load %struct.bt856*, %struct.bt856** %10, align 8
  %26 = call i32 @bt856_setbit(%struct.bt856* %25, i32 220, i32 6, i32 0)
  br label %44

27:                                               ; preds = %4
  %28 = load %struct.bt856*, %struct.bt856** %10, align 8
  %29 = call i32 @bt856_setbit(%struct.bt856* %28, i32 222, i32 4, i32 0)
  %30 = load %struct.bt856*, %struct.bt856** %10, align 8
  %31 = call i32 @bt856_setbit(%struct.bt856* %30, i32 222, i32 3, i32 1)
  %32 = load %struct.bt856*, %struct.bt856** %10, align 8
  %33 = call i32 @bt856_setbit(%struct.bt856* %32, i32 220, i32 3, i32 1)
  %34 = load %struct.bt856*, %struct.bt856** %10, align 8
  %35 = call i32 @bt856_setbit(%struct.bt856* %34, i32 220, i32 6, i32 1)
  br label %44

36:                                               ; preds = %4
  %37 = load %struct.bt856*, %struct.bt856** %10, align 8
  %38 = call i32 @bt856_setbit(%struct.bt856* %37, i32 220, i32 3, i32 0)
  %39 = load %struct.bt856*, %struct.bt856** %10, align 8
  %40 = call i32 @bt856_setbit(%struct.bt856* %39, i32 222, i32 4, i32 1)
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %51

44:                                               ; preds = %36, %27, %18
  %45 = load i64, i64* @debug, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.bt856*, %struct.bt856** %10, align 8
  %49 = call i32 @bt856_dump(%struct.bt856* %48)
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.bt856* @to_bt856(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i64, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @bt856_setbit(%struct.bt856*, i32, i32, i32) #1

declare dso_local i32 @bt856_dump(%struct.bt856*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
