; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CONTRAST = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@COLORS = common dso_local global i32 0, align 4
@HFLIP = common dso_local global i32 0, align 4
@VFLIP = common dso_local global i32 0, align 4
@AUTOBRIGHT = common dso_local global i32 0, align 4
@FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 133, label %21
    i32 132, label %21
    i32 131, label %24
    i32 130, label %24
    i32 129, label %27
    i32 128, label %30
  ]

21:                                               ; preds = %1, %1
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = call i32 @ov511_mode_init_regs(%struct.sd* %22)
  br label %33

24:                                               ; preds = %1, %1
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = call i32 @ov518_mode_init_regs(%struct.sd* %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = call i32 @ov519_mode_init_regs(%struct.sd* %28)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = call i32 @w9968cf_mode_init_regs(%struct.sd* %31)
  br label %33

33:                                               ; preds = %1, %30, %27, %24, %21
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = call i32 @set_ov_sensor_window(%struct.sd* %34)
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CONTRAST, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @setcontrast(%struct.gspca_dev* %45)
  br label %47

47:                                               ; preds = %44, %33
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BRIGHTNESS, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @setbrightness(%struct.gspca_dev* %57)
  br label %59

59:                                               ; preds = %56, %47
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @COLORS, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = call i32 @setcolors(%struct.gspca_dev* %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.sd*, %struct.sd** %3, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HFLIP, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* @VFLIP, align 4
  %79 = shl i32 1, %78
  %80 = or i32 %77, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @sethvflip(%struct.gspca_dev* %84)
  br label %86

86:                                               ; preds = %83, %71
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AUTOBRIGHT, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @setautobright(%struct.gspca_dev* %96)
  br label %98

98:                                               ; preds = %95, %86
  %99 = load %struct.sd*, %struct.sd** %3, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FREQ, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load %struct.sd*, %struct.sd** %3, align 8
  %109 = call i32 @setfreq_i(%struct.sd* %108)
  br label %110

110:                                              ; preds = %107, %98
  %111 = load %struct.sd*, %struct.sd** %3, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = call i32 @sd_reset_snapshot(%struct.gspca_dev* %113)
  %115 = load %struct.sd*, %struct.sd** %3, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 2
  store i32 3, i32* %116, align 4
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = call i32 @ov51x_restart(%struct.sd* %117)
  %119 = load %struct.sd*, %struct.sd** %3, align 8
  %120 = call i32 @ov51x_led_control(%struct.sd* %119, i32 1)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  ret i32 %123
}

declare dso_local i32 @ov511_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @ov518_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @ov519_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @w9968cf_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @set_ov_sensor_window(%struct.sd*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcolors(%struct.gspca_dev*) #1

declare dso_local i32 @sethvflip(%struct.gspca_dev*) #1

declare dso_local i32 @setautobright(%struct.gspca_dev*) #1

declare dso_local i32 @setfreq_i(%struct.sd*) #1

declare dso_local i32 @sd_reset_snapshot(%struct.gspca_dev*) #1

declare dso_local i32 @ov51x_restart(%struct.sd*) #1

declare dso_local i32 @ov51x_led_control(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
