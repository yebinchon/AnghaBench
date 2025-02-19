; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7191.c_saa7191_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7191.c_saa7191_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7191 = type { i32 }

@SAA7191_REG_LUMA = common dso_local global i32 0, align 4
@SAA7191_REG_IOCK = common dso_local global i32 0, align 4
@SAA7191_IOCK_CHRS = common dso_local global i32 0, align 4
@SAA7191_IOCK_GPSW1 = common dso_local global i32 0, align 4
@SAA7191_IOCK_GPSW2 = common dso_local global i32 0, align 4
@SAA7191_LUMA_BYPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @saa7191_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7191_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7191*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = call %struct.saa7191* @to_saa7191(%struct.v4l2_subdev* %14)
  store %struct.saa7191* %15, %struct.saa7191** %10, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load i32, i32* @SAA7191_REG_LUMA, align 4
  %18 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %20 = load i32, i32* @SAA7191_REG_IOCK, align 4
  %21 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %45 [
    i32 129, label %23
    i32 128, label %36
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @SAA7191_IOCK_CHRS, align 4
  %25 = load i32, i32* @SAA7191_IOCK_GPSW1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SAA7191_IOCK_GPSW2, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @SAA7191_LUMA_BYPS, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %48

36:                                               ; preds = %4
  %37 = load i32, i32* @SAA7191_IOCK_CHRS, align 4
  %38 = load i32, i32* @SAA7191_IOCK_GPSW2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @SAA7191_LUMA_BYPS, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %72

48:                                               ; preds = %36, %23
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %50 = load i32, i32* @SAA7191_REG_LUMA, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %49, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %72

58:                                               ; preds = %48
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %60 = load i32, i32* @SAA7191_REG_IOCK, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %59, i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.saa7191*, %struct.saa7191** %10, align 8
  %71 = getelementptr inbounds %struct.saa7191, %struct.saa7191* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %65, %55, %45
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.saa7191* @to_saa7191(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7191_read_reg(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa7191_write_reg(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
