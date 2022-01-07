; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }

@sensor_start_1_vga = common dso_local global i32 0, align 4
@bridge_start_qvga = common dso_local global i32 0, align 4
@sensor_start_2_qvga = common dso_local global i32 0, align 4
@bridge_start_vga = common dso_local global i32 0, align 4
@sensor_start_2_vga = common dso_local global i32 0, align 4
@sensor_start_1_svga = common dso_local global i32 0, align 4
@bridge_start_svga = common dso_local global i32 0, align 4
@sensor_start_2_svga = common dso_local global i32 0, align 4
@sensor_start_1_xga = common dso_local global i32 0, align 4
@bridge_start_xga = common dso_local global i32 0, align 4
@sensor_start_1_sxga = common dso_local global i32 0, align 4
@bridge_start_sxga = common dso_local global i32 0, align 4
@sensor_start_2_sxga = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %70 [
    i32 131, label %6
    i32 129, label %22
    i32 130, label %38
    i32 128, label %54
  ]

6:                                                ; preds = %1
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = load i32, i32* @sensor_start_1_vga, align 4
  %9 = load i32, i32* @sensor_start_1_vga, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @sccb_w_array(%struct.gspca_dev* %7, i32 %8, i32 %10)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @bridge_start_qvga, align 4
  %14 = load i32, i32* @bridge_start_qvga, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @reg_w_array(%struct.gspca_dev* %12, i32 %13, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load i32, i32* @sensor_start_2_qvga, align 4
  %19 = load i32, i32* @sensor_start_2_qvga, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @sccb_w_array(%struct.gspca_dev* %17, i32 %18, i32 %20)
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* @sensor_start_1_vga, align 4
  %25 = load i32, i32* @sensor_start_1_vga, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @sccb_w_array(%struct.gspca_dev* %23, i32 %24, i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32, i32* @bridge_start_vga, align 4
  %30 = load i32, i32* @bridge_start_vga, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @reg_w_array(%struct.gspca_dev* %28, i32 %29, i32 %31)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* @sensor_start_2_vga, align 4
  %35 = load i32, i32* @sensor_start_2_vga, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @sccb_w_array(%struct.gspca_dev* %33, i32 %34, i32 %36)
  br label %86

38:                                               ; preds = %1
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @sensor_start_1_svga, align 4
  %41 = load i32, i32* @sensor_start_1_svga, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @sccb_w_array(%struct.gspca_dev* %39, i32 %40, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @bridge_start_svga, align 4
  %46 = load i32, i32* @bridge_start_svga, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @reg_w_array(%struct.gspca_dev* %44, i32 %45, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32, i32* @sensor_start_2_svga, align 4
  %51 = load i32, i32* @sensor_start_2_svga, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @sccb_w_array(%struct.gspca_dev* %49, i32 %50, i32 %52)
  br label %86

54:                                               ; preds = %1
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* @sensor_start_1_xga, align 4
  %57 = load i32, i32* @sensor_start_1_xga, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @sccb_w_array(%struct.gspca_dev* %55, i32 %56, i32 %58)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = load i32, i32* @bridge_start_xga, align 4
  %62 = load i32, i32* @bridge_start_xga, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @reg_w_array(%struct.gspca_dev* %60, i32 %61, i32 %63)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = load i32, i32* @sensor_start_2_svga, align 4
  %67 = load i32, i32* @sensor_start_2_svga, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @sccb_w_array(%struct.gspca_dev* %65, i32 %66, i32 %68)
  br label %86

70:                                               ; preds = %1
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = load i32, i32* @sensor_start_1_sxga, align 4
  %73 = load i32, i32* @sensor_start_1_sxga, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @sccb_w_array(%struct.gspca_dev* %71, i32 %72, i32 %74)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32, i32* @bridge_start_sxga, align 4
  %78 = load i32, i32* @bridge_start_sxga, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = call i32 @reg_w_array(%struct.gspca_dev* %76, i32 %77, i32 %79)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = load i32, i32* @sensor_start_2_sxga, align 4
  %83 = load i32, i32* @sensor_start_2_sxga, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @sccb_w_array(%struct.gspca_dev* %81, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %70, %54, %38, %22, %6
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @setfreq(%struct.gspca_dev* %87)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @setautogain(%struct.gspca_dev* %89)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @setbrightness(%struct.gspca_dev* %91)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @setcontrast(%struct.gspca_dev* %93)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @setexposure(%struct.gspca_dev* %95)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = call i32 @setsharpness(%struct.gspca_dev* %97)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = call i32 @setsatur(%struct.gspca_dev* %99)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %102 = call i32 @reg_w(%struct.gspca_dev* %101, i32 224, i32 0)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = call i32 @reg_w(%struct.gspca_dev* %103, i32 224, i32 0)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = call i32 @set_led(%struct.gspca_dev* %105, i32 1)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %108 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  ret i32 %109
}

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setfreq(%struct.gspca_dev*) #1

declare dso_local i32 @setautogain(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*) #1

declare dso_local i32 @setsatur(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
