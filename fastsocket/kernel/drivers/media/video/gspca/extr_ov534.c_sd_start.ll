; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@bridge_start_qvga = common dso_local global i32 0, align 4
@sensor_start_qvga = common dso_local global i32 0, align 4
@bridge_start_vga = common dso_local global i32 0, align 4
@sensor_start_vga = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load i32, i32* @bridge_start_qvga, align 4
  %19 = load i32, i32* @bridge_start_qvga, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @reg_w_array(%struct.gspca_dev* %17, i32 %18, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = load i32, i32* @sensor_start_qvga, align 4
  %24 = load i32, i32* @sensor_start_qvga, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @sccb_w_array(%struct.gspca_dev* %22, i32 %23, i32 %25)
  br label %38

27:                                               ; preds = %1
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32, i32* @bridge_start_vga, align 4
  %30 = load i32, i32* @bridge_start_vga, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @reg_w_array(%struct.gspca_dev* %28, i32 %29, i32 %31)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* @sensor_start_vga, align 4
  %35 = load i32, i32* @sensor_start_vga, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @sccb_w_array(%struct.gspca_dev* %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %27, %16
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = call i32 @set_frame_rate(%struct.gspca_dev* %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = call i32 @setagc(%struct.gspca_dev* %41)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @setawb(%struct.gspca_dev* %43)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @setaec(%struct.gspca_dev* %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @setgain(%struct.gspca_dev* %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @setexposure(%struct.gspca_dev* %49)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @setbrightness(%struct.gspca_dev* %51)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = call i32 @setcontrast(%struct.gspca_dev* %53)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @setsharpness(%struct.gspca_dev* %55)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @setvflip(%struct.gspca_dev* %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = call i32 @sethflip(%struct.gspca_dev* %59)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = call i32 @setfreqfltr(%struct.gspca_dev* %61)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @ov534_set_led(%struct.gspca_dev* %63, i32 1)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = call i32 @ov534_reg_write(%struct.gspca_dev* %65, i32 224, i32 0)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  ret i32 %69
}

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_frame_rate(%struct.gspca_dev*) #1

declare dso_local i32 @setagc(%struct.gspca_dev*) #1

declare dso_local i32 @setawb(%struct.gspca_dev*) #1

declare dso_local i32 @setaec(%struct.gspca_dev*) #1

declare dso_local i32 @setgain(%struct.gspca_dev*) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*) #1

declare dso_local i32 @setvflip(%struct.gspca_dev*) #1

declare dso_local i32 @sethflip(%struct.gspca_dev*) #1

declare dso_local i32 @setfreqfltr(%struct.gspca_dev*) #1

declare dso_local i32 @ov534_set_led(%struct.gspca_dev*, i32) #1

declare dso_local i32 @ov534_reg_write(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
