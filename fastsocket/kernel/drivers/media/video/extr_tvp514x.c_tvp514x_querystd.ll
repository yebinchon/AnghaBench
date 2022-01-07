; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_querystd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp514x_decoder = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STD_INVALID = common dso_local global i32 0, align 4
@STATUS_CLR_SUBCAR_LOCK_BIT = common dso_local global i32 0, align 4
@STATUS_HORZ_SYNC_LOCK_BIT = common dso_local global i32 0, align 4
@STATUS_VIRT_SYNC_LOCK_BIT = common dso_local global i32 0, align 4
@REG_STATUS1 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Current STD: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @tvp514x_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_querystd(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %11)
  store %struct.tvp514x_decoder* %12, %struct.tvp514x_decoder** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = call i32 @tvp514x_get_current_std(%struct.v4l2_subdev* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @STD_INVALID, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %83

27:                                               ; preds = %18
  %28 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %29 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %42 [
    i32 149, label %32
    i32 148, label %32
    i32 147, label %32
    i32 146, label %32
    i32 145, label %32
    i32 144, label %32
    i32 143, label %32
    i32 142, label %32
    i32 141, label %32
    i32 140, label %32
    i32 139, label %38
    i32 137, label %38
    i32 135, label %38
    i32 138, label %38
    i32 136, label %38
    i32 134, label %38
    i32 133, label %38
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 128, label %38
  ]

32:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %33 = load i32, i32* @STATUS_CLR_SUBCAR_LOCK_BIT, align 4
  %34 = load i32, i32* @STATUS_HORZ_SYNC_LOCK_BIT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STATUS_VIRT_SYNC_LOCK_BIT, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %10, align 4
  br label %45

38:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %39 = load i32, i32* @STATUS_HORZ_SYNC_LOCK_BIT, align 4
  %40 = load i32, i32* @STATUS_VIRT_SYNC_LOCK_BIT, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %45

42:                                               ; preds = %27
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %38, %32
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %47 = load i32, i32* @REG_STATUS1, align 4
  %48 = call i32 @tvp514x_read_reg(%struct.v4l2_subdev* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %83

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %60 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %62 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @debug, align 4
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %73 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %74 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @v4l2_dbg(i32 1, i32 %71, %struct.v4l2_subdev* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %57, %54, %42, %24, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_get_current_std(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_read_reg(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
