; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64, i32, i32, i32, i64, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@BCL_OV518 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"KS0127-series decoders not supported yet\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SAA status = 0x%02X\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Unknown sensor\00", align 1
@bandingfilter = common dso_local global i32 0, align 4
@lightfreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32, i32, i32, i32)* @mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_init_regs(%struct.usb_ov511* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_ov511*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %14 = icmp ne %struct.usb_ov511* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %17 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %5
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %147

23:                                               ; preds = %15
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %25 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BCL_OV518, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ov518_mode_init_regs(%struct.usb_ov511* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %43

36:                                               ; preds = %23
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ov511_mode_init_regs(%struct.usb_ov511* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @FATAL_ERROR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %147

49:                                               ; preds = %43
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %51 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %68 [
    i32 132, label %53
    i32 131, label %53
    i32 130, label %53
    i32 129, label %53
    i32 134, label %53
    i32 133, label %53
    i32 136, label %60
    i32 135, label %60
    i32 128, label %64
  ]

53:                                               ; preds = %49, %49, %49, %49, %49, %49
  %54 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @set_ov_sensor_window(%struct.usb_ov511* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %72

60:                                               ; preds = %49, %49
  %61 = call i32 @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %72

64:                                               ; preds = %49
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %66 = call i32 @i2c_r(%struct.usb_ov511* %65, i32 31)
  %67 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %72

68:                                               ; preds = %49
  %69 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %64, %60, %53
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @FATAL_ERROR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %147

78:                                               ; preds = %72
  %79 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %80 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %81 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sensor_set_auto_brightness(%struct.usb_ov511* %79, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @FATAL_ERROR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %147

89:                                               ; preds = %78
  %90 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %91 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %92 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sensor_set_auto_exposure(%struct.usb_ov511* %90, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @FATAL_ERROR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %147

100:                                              ; preds = %89
  %101 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %102 = load i32, i32* @bandingfilter, align 4
  %103 = call i32 @sensor_set_banding_filter(%struct.usb_ov511* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i64 @FATAL_ERROR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %6, align 4
  br label %147

109:                                              ; preds = %100
  %110 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %111 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %116 = load i32, i32* @lightfreq, align 4
  %117 = call i32 @sensor_set_light_freq(%struct.usb_ov511* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i64 @FATAL_ERROR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %6, align 4
  br label %147

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %109
  %125 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %126 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %127 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @sensor_set_backlight(%struct.usb_ov511* %125, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i64 @FATAL_ERROR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %6, align 4
  br label %147

135:                                              ; preds = %124
  %136 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %137 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %138 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @sensor_set_mirror(%struct.usb_ov511* %136, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i64 @FATAL_ERROR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %6, align 4
  br label %147

146:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %144, %133, %121, %107, %98, %87, %76, %47, %20
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @ov518_mode_init_regs(%struct.usb_ov511*, i32, i32, i32, i32) #1

declare dso_local i32 @ov511_mode_init_regs(%struct.usb_ov511*, i32, i32, i32, i32) #1

declare dso_local i64 @FATAL_ERROR(i32) #1

declare dso_local i32 @set_ov_sensor_window(%struct.usb_ov511*, i32, i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @i2c_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @sensor_set_auto_brightness(%struct.usb_ov511*, i32) #1

declare dso_local i32 @sensor_set_auto_exposure(%struct.usb_ov511*, i32) #1

declare dso_local i32 @sensor_set_banding_filter(%struct.usb_ov511*, i32) #1

declare dso_local i32 @sensor_set_light_freq(%struct.usb_ov511*, i32) #1

declare dso_local i32 @sensor_set_backlight(%struct.usb_ov511*, i32) #1

declare dso_local i32 @sensor_set_mirror(%struct.usb_ov511*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
