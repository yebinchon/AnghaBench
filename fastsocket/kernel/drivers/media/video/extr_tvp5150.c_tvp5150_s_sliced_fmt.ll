; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_s_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_s_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i64, i64** }

@vbi_ram_default = common dso_local global i32 0, align 4
@TVP5150_FIFO_OUT_CTRL = common dso_local global i32 0, align 4
@TVP5150_FULL_FIELD_ENA = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* @tvp5150_s_sliced_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %4, align 8
  %6 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %44, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 23
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %15, i32 0, i32 1
  %17 = load i64**, i64*** %16, align 8
  %18 = getelementptr inbounds i64*, i64** %17, i64 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load i32, i32* @vbi_ram_default, align 4
  %25 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %25, i32 0, i32 1
  %27 = load i64**, i64*** %26, align 8
  %28 = getelementptr inbounds i64*, i64** %27, i64 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @tvp5150_set_vbi(%struct.v4l2_subdev* %23, i32 %24, i64 %33, i32 240, i32 %34, i32 3)
  %36 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %36, i32 0, i32 1
  %38 = load i64**, i64*** %37, align 8
  %39 = getelementptr inbounds i64*, i64** %38, i64 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %35, i64* %43, align 8
  br label %44

44:                                               ; preds = %14
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %49 = load i32, i32* @TVP5150_FIFO_OUT_CTRL, align 4
  %50 = call i32 @tvp5150_write(%struct.v4l2_subdev* %48, i32 %49, i32 1)
  br label %71

51:                                               ; preds = %2
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = load i32, i32* @TVP5150_FIFO_OUT_CTRL, align 4
  %54 = call i32 @tvp5150_write(%struct.v4l2_subdev* %52, i32 %53, i32 0)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %56 = load i32, i32* @TVP5150_FULL_FIELD_ENA, align 4
  %57 = call i32 @tvp5150_write(%struct.v4l2_subdev* %55, i32 %56, i32 0)
  %58 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %67, %51
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @TVP5150_LINE_MODE_END, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @tvp5150_write(%struct.v4l2_subdev* %64, i32 %65, i32 255)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %59

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %47
  ret i32 0
}

declare dso_local i64 @tvp5150_set_vbi(%struct.v4l2_subdev*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
