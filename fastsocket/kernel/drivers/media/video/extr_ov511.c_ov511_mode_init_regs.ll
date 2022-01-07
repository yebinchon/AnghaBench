; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"width:%d, height:%d, mode:%d, sub:%d\00", align 1
@SEN_SAA7111A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"SAA7111A only allows 320x240 or 640x480\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid size (%d, %d) (mode = %d)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Requested dimensions are too small\00", align 1
@EIO = common dso_local global i32 0, align 4
@VIDEO_PALETTE_GREY = common dso_local global i32 0, align 4
@R511_CAM_UV_EN = common dso_local global i32 0, align 4
@R511_SNAP_UV_EN = common dso_local global i32 0, align 4
@R511_SNAP_OPTS = common dso_local global i32 0, align 4
@R511_CAM_PXCNT = common dso_local global i32 0, align 4
@R511_CAM_LNCNT = common dso_local global i32 0, align 4
@R511_CAM_PXDIV = common dso_local global i32 0, align 4
@R511_CAM_LNDIV = common dso_local global i32 0, align 4
@R511_CAM_OPTS = common dso_local global i32 0, align 4
@R511_SNAP_PXCNT = common dso_local global i32 0, align 4
@R511_SNAP_LNCNT = common dso_local global i32 0, align 4
@R511_SNAP_PXDIV = common dso_local global i32 0, align 4
@R511_SNAP_LNDIV = common dso_local global i32 0, align 4
@R511_COMP_EN = common dso_local global i32 0, align 4
@R511_COMP_LUT_EN = common dso_local global i32 0, align 4
@OV511_RESET_OMNICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32, i32, i32, i32)* @ov511_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_mode_init_regs(%struct.usb_ov511* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_ov511*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %18 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %21 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %16, %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %30 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SEN_SAA7111A, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 320
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 240
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %53

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 640
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 480
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 320, i32* %8, align 4
  br label %52

48:                                               ; preds = %44, %41
  %49 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %176

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %8, align 4
  %56 = srem i32 %55, 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = srem i32 %59, 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %176

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %72 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %78 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75, %69
  %82 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %176

85:                                               ; preds = %75
  %86 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %87 = call i64 @ov51x_stop(%struct.usb_ov511* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %176

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %98 = load i32, i32* @R511_CAM_UV_EN, align 4
  %99 = call i32 @reg_w(%struct.usb_ov511* %97, i32 %98, i32 0)
  %100 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %101 = load i32, i32* @R511_SNAP_UV_EN, align 4
  %102 = call i32 @reg_w(%struct.usb_ov511* %100, i32 %101, i32 0)
  %103 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %104 = load i32, i32* @R511_SNAP_OPTS, align 4
  %105 = call i32 @reg_w(%struct.usb_ov511* %103, i32 %104, i32 1)
  br label %116

106:                                              ; preds = %92
  %107 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %108 = load i32, i32* @R511_CAM_UV_EN, align 4
  %109 = call i32 @reg_w(%struct.usb_ov511* %107, i32 %108, i32 1)
  %110 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %111 = load i32, i32* @R511_SNAP_UV_EN, align 4
  %112 = call i32 @reg_w(%struct.usb_ov511* %110, i32 %111, i32 1)
  %113 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %114 = load i32, i32* @R511_SNAP_OPTS, align 4
  %115 = call i32 @reg_w(%struct.usb_ov511* %113, i32 %114, i32 3)
  br label %116

116:                                              ; preds = %106, %96
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 3
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 3
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %124 = load i32, i32* @R511_CAM_PXCNT, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @reg_w(%struct.usb_ov511* %123, i32 %124, i32 %125)
  %127 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %128 = load i32, i32* @R511_CAM_LNCNT, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @reg_w(%struct.usb_ov511* %127, i32 %128, i32 %129)
  %131 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %132 = load i32, i32* @R511_CAM_PXDIV, align 4
  %133 = call i32 @reg_w(%struct.usb_ov511* %131, i32 %132, i32 0)
  %134 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %135 = load i32, i32* @R511_CAM_LNDIV, align 4
  %136 = call i32 @reg_w(%struct.usb_ov511* %134, i32 %135, i32 0)
  %137 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %138 = load i32, i32* @R511_CAM_OPTS, align 4
  %139 = call i32 @reg_w(%struct.usb_ov511* %137, i32 %138, i32 3)
  %140 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %141 = load i32, i32* @R511_SNAP_PXCNT, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @reg_w(%struct.usb_ov511* %140, i32 %141, i32 %142)
  %144 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %145 = load i32, i32* @R511_SNAP_LNCNT, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @reg_w(%struct.usb_ov511* %144, i32 %145, i32 %146)
  %148 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %149 = load i32, i32* @R511_SNAP_PXDIV, align 4
  %150 = call i32 @reg_w(%struct.usb_ov511* %148, i32 %149, i32 0)
  %151 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %152 = load i32, i32* @R511_SNAP_LNDIV, align 4
  %153 = call i32 @reg_w(%struct.usb_ov511* %151, i32 %152, i32 0)
  %154 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %155 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %116
  %159 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %160 = load i32, i32* @R511_COMP_EN, align 4
  %161 = call i32 @reg_w(%struct.usb_ov511* %159, i32 %160, i32 7)
  %162 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %163 = load i32, i32* @R511_COMP_LUT_EN, align 4
  %164 = call i32 @reg_w(%struct.usb_ov511* %162, i32 %163, i32 3)
  %165 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %166 = load i32, i32* @OV511_RESET_OMNICE, align 4
  %167 = call i32 @ov51x_reset(%struct.usb_ov511* %165, i32 %166)
  br label %168

168:                                              ; preds = %158, %116
  %169 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %170 = call i64 @ov51x_restart(%struct.usb_ov511* %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %6, align 4
  br label %176

175:                                              ; preds = %168
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %172, %89, %81, %62, %48
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @ov51x_reset(%struct.usb_ov511*, i32) #1

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
