; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.zoran = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, i32 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@zoran_formats = common dso_local global %struct.TYPE_2__* null, align 8
@ZORAN_FORMAT_COMPRESSED = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zoran*, %struct.v4l2_fmtdesc*, i32)* @zoran_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_enum_fmt(%struct.zoran* %0, %struct.v4l2_fmtdesc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zoran*, align 8
  %6 = alloca %struct.v4l2_fmtdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %5, align 8
  store %struct.v4l2_fmtdesc* %1, %struct.v4l2_fmtdesc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %67, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @NUM_FORMATS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zoran_formats, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %24
  %32 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zoran_formats, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strncpy(i32 %34, i32 %40, i32 3)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zoran_formats, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zoran_formats, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ZORAN_FORMAT_COMPRESSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %31
  %60 = load i32, i32* @V4L2_FMT_FLAG_COMPRESSED, align 4
  %61 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %31
  store i32 0, i32* %4, align 4
  br label %73

66:                                               ; preds = %24, %14
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
