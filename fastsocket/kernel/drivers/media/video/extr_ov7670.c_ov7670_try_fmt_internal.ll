; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_try_fmt_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_try_fmt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7670_format_struct = type { i64, i32 }
%struct.ov7670_win_size = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64, i64, i32, i32 }

@N_OV7670_FMTS = common dso_local global i32 0, align 4
@ov7670_formats = common dso_local global %struct.ov7670_format_struct* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@ov7670_win_sizes = common dso_local global %struct.ov7670_win_size* null, align 8
@N_WIN_SIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, %struct.ov7670_format_struct**, %struct.ov7670_win_size**)* @ov7670_try_fmt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_try_fmt_internal(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1, %struct.ov7670_format_struct** %2, %struct.ov7670_win_size** %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.ov7670_format_struct**, align 8
  %8 = alloca %struct.ov7670_win_size**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ov7670_win_size*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %6, align 8
  store %struct.ov7670_format_struct** %2, %struct.ov7670_format_struct*** %7, align 8
  store %struct.ov7670_win_size** %3, %struct.ov7670_win_size*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %28, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @N_OV7670_FMTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %16, i64 %18
  %20 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %31

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @N_OV7670_FMTS, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  %36 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %37 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %36, i64 0
  %38 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.ov7670_format_struct**, %struct.ov7670_format_struct*** %7, align 8
  %44 = icmp ne %struct.ov7670_format_struct** %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %46, i64 %48
  %50 = load %struct.ov7670_format_struct**, %struct.ov7670_format_struct*** %7, align 8
  store %struct.ov7670_format_struct* %49, %struct.ov7670_format_struct** %50, align 8
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** @ov7670_win_sizes, align 8
  store %struct.ov7670_win_size* %55, %struct.ov7670_win_size** %10, align 8
  br label %56

56:                                               ; preds = %81, %51
  %57 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %58 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** @ov7670_win_sizes, align 8
  %59 = load i32, i32* @N_WIN_SIZES, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %58, i64 %60
  %62 = icmp ult %struct.ov7670_win_size* %57, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %68 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %76 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %84

80:                                               ; preds = %71, %63
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %83 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %82, i32 1
  store %struct.ov7670_win_size* %83, %struct.ov7670_win_size** %10, align 8
  br label %56

84:                                               ; preds = %79, %56
  %85 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %86 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** @ov7670_win_sizes, align 8
  %87 = load i32, i32* @N_WIN_SIZES, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %86, i64 %88
  %90 = icmp uge %struct.ov7670_win_size* %85, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %93 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %92, i32 -1
  store %struct.ov7670_win_size* %93, %struct.ov7670_win_size** %10, align 8
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.ov7670_win_size**, %struct.ov7670_win_size*** %8, align 8
  %96 = icmp ne %struct.ov7670_win_size** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %99 = load %struct.ov7670_win_size**, %struct.ov7670_win_size*** %8, align 8
  store %struct.ov7670_win_size* %98, %struct.ov7670_win_size** %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %102 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %107 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ov7670_format_struct*, %struct.ov7670_format_struct** @ov7670_formats, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %111, i64 %113
  %115 = getelementptr inbounds %struct.ov7670_format_struct, %struct.ov7670_format_struct* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %118 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
