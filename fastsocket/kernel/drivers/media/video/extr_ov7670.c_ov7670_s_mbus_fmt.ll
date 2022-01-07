; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.ov7670_format_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }
%struct.ov7670_win_size = type { i8, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.ov7670_info = type { i8, %struct.ov7670_format_struct* }

@REG_COM7 = common dso_local global i32 0, align 4
@REG_CLKRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @ov7670_s_mbus_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_mbus_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.ov7670_format_struct*, align 8
  %7 = alloca %struct.ov7670_win_size*, align 8
  %8 = alloca %struct.ov7670_info*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %11)
  store %struct.ov7670_info* %12, %struct.ov7670_info** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %15 = call i32 @ov7670_try_fmt_internal(%struct.v4l2_subdev* %13, %struct.v4l2_mbus_framefmt* %14, %struct.ov7670_format_struct** %6, %struct.ov7670_win_size** %7)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** %6, align 8
  %22 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %9, align 1
  %27 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %28 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %9, align 1
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = load i32, i32* @REG_COM7, align 4
  %37 = load i8, i8* %9, align 1
  %38 = call i32 @ov7670_write(%struct.v4l2_subdev* %35, i32 %36, i8 zeroext %37)
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %40 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** %6, align 8
  %41 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 1
  %44 = call i32 @ov7670_write_array(%struct.v4l2_subdev* %39, %struct.TYPE_2__* %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %47 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %50 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %53 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %56 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ov7670_set_hw(%struct.v4l2_subdev* %45, i32 %48, i32 %51, i32 %54, i32 %57)
  store i32 0, i32* %10, align 4
  %59 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %60 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %20
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %7, align 8
  %66 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @ov7670_write_array(%struct.v4l2_subdev* %64, %struct.TYPE_2__* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %63, %20
  %70 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** %6, align 8
  %71 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %72 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %71, i32 0, i32 1
  store %struct.ov7670_format_struct* %70, %struct.ov7670_format_struct** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %77 = load i32, i32* @REG_CLKRC, align 4
  %78 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %79 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 8
  %81 = call i32 @ov7670_write(%struct.v4l2_subdev* %76, i32 %77, i8 zeroext %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %75, %69
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_try_fmt_internal(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, %struct.ov7670_format_struct**, %struct.ov7670_win_size**) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local i32 @ov7670_write_array(%struct.v4l2_subdev*, %struct.TYPE_2__*) #1

declare dso_local i32 @ov7670_set_hw(%struct.v4l2_subdev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
