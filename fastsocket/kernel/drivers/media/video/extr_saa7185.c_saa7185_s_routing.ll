; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7185.c_saa7185_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7185.c_saa7185_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7185 = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @saa7185_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7185_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7185*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.saa7185* @to_saa7185(%struct.v4l2_subdev* %11)
  store %struct.saa7185* %12, %struct.saa7185** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %55 [
    i32 0, label %14
    i32 1, label %28
    i32 2, label %41
  ]

14:                                               ; preds = %4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = call i32 @saa7185_write(%struct.v4l2_subdev* %15, i32 58, i32 15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %18 = load %struct.saa7185*, %struct.saa7185** %10, align 8
  %19 = getelementptr inbounds %struct.saa7185, %struct.saa7185* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 97
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 247
  %24 = or i32 %23, 8
  %25 = call i32 @saa7185_write(%struct.v4l2_subdev* %17, i32 97, i32 %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %27 = call i32 @saa7185_write(%struct.v4l2_subdev* %26, i32 110, i32 1)
  br label %58

28:                                               ; preds = %4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = call i32 @saa7185_write(%struct.v4l2_subdev* %29, i32 58, i32 15)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = load %struct.saa7185*, %struct.saa7185** %10, align 8
  %33 = getelementptr inbounds %struct.saa7185, %struct.saa7185* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 97
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 247
  %38 = call i32 @saa7185_write(%struct.v4l2_subdev* %31, i32 97, i32 %37)
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %40 = call i32 @saa7185_write(%struct.v4l2_subdev* %39, i32 110, i32 0)
  br label %58

41:                                               ; preds = %4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %43 = call i32 @saa7185_write(%struct.v4l2_subdev* %42, i32 58, i32 143)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = load %struct.saa7185*, %struct.saa7185** %10, align 8
  %46 = getelementptr inbounds %struct.saa7185, %struct.saa7185* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 97
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 247
  %51 = or i32 %50, 8
  %52 = call i32 @saa7185_write(%struct.v4l2_subdev* %44, i32 97, i32 %51)
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %54 = call i32 @saa7185_write(%struct.v4l2_subdev* %53, i32 110, i32 1)
  br label %58

55:                                               ; preds = %4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %41, %28, %14
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.saa7185* @to_saa7185(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7185_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
