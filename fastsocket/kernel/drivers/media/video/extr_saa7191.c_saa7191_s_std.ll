; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7191.c_saa7191_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7191.c_saa7191_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7191 = type { i32 }

@SAA7191_REG_STDC = common dso_local global i32 0, align 4
@SAA7191_REG_CTL3 = common dso_local global i32 0, align 4
@SAA7191_REG_CHCV = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@SAA7191_STDC_SECS = common dso_local global i32 0, align 4
@SAA7191_CTL3_AUFD = common dso_local global i32 0, align 4
@SAA7191_CTL3_FSEL = common dso_local global i32 0, align 4
@SAA7191_CHCV_PAL = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@SAA7191_CHCV_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ctl3: %02x stdc: %02x chcv: %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"norm: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa7191_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7191_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7191*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.saa7191* @to_saa7191(%struct.v4l2_subdev* %11)
  store %struct.saa7191* %12, %struct.saa7191** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = load i32, i32* @SAA7191_REG_STDC, align 4
  %15 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = load i32, i32* @SAA7191_REG_CTL3, align 4
  %18 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i32, i32* @SAA7191_REG_CHCV, align 4
  %21 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @V4L2_STD_PAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @SAA7191_STDC_SECS, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @SAA7191_CTL3_AUFD, align 4
  %32 = load i32, i32* @SAA7191_CTL3_FSEL, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @SAA7191_CHCV_PAL, align 4
  store i32 %37, i32* %9, align 4
  br label %77

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @V4L2_STD_NTSC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* @SAA7191_STDC_SECS, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @SAA7191_CTL3_AUFD, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @SAA7191_CTL3_FSEL, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @SAA7191_CHCV_NTSC, align 4
  store i32 %55, i32* %9, align 4
  br label %76

56:                                               ; preds = %38
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @V4L2_STD_SECAM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* @SAA7191_STDC_SECS, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @SAA7191_CTL3_AUFD, align 4
  %66 = load i32, i32* @SAA7191_CTL3_FSEL, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @SAA7191_CHCV_PAL, align 4
  store i32 %71, i32* %9, align 4
  br label %75

72:                                               ; preds = %56
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %117

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %43
  br label %77

77:                                               ; preds = %76, %26
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %79 = load i32, i32* @SAA7191_REG_CTL3, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %78, i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %117

87:                                               ; preds = %77
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %89 = load i32, i32* @SAA7191_REG_STDC, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %88, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %117

97:                                               ; preds = %87
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %99 = load i32, i32* @SAA7191_REG_CHCV, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %98, i32 %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %117

107:                                              ; preds = %97
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.saa7191*, %struct.saa7191** %6, align 8
  %110 = getelementptr inbounds %struct.saa7191, %struct.saa7191* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %107, %104, %94, %84, %72
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.saa7191* @to_saa7191(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7191_read_reg(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa7191_write_reg(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
