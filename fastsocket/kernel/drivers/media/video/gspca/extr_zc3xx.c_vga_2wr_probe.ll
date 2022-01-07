; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_vga_2wr_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_vga_2wr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@SENSOR_PAS202B = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"probe 2wr ov vga 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @vga_2wr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_2wr_probe(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = call i32 @start_2wr_probe(%struct.gspca_dev* %5, i32 0)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = call i32 @i2c_write(%struct.gspca_dev* %7, i32 1, i32 170, i32 0)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @i2c_read(%struct.gspca_dev* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %145

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = call i32 @start_2wr_probe(%struct.gspca_dev* %15, i32 4)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @i2c_write(%struct.gspca_dev* %17, i32 1, i32 170, i32 0)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = call i32 @i2c_read(%struct.gspca_dev* %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 4, i32* %2, align 4
  br label %145

24:                                               ; preds = %14
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @start_2wr_probe(%struct.gspca_dev* %25, i32 6)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @reg_w(%struct.gspca_dev* %27, i32 8, i32 141)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @i2c_write(%struct.gspca_dev* %29, i32 17, i32 170, i32 0)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = call i32 @i2c_read(%struct.gspca_dev* %31, i32 17)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %107

36:                                               ; preds = %24
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = call i32 @start_2wr_probe(%struct.gspca_dev* %37, i32 8)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = call i32 @i2c_write(%struct.gspca_dev* %39, i32 28, i32 0, i32 0)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = call i32 @i2c_write(%struct.gspca_dev* %41, i32 21, i32 170, i32 0)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = call i32 @i2c_read(%struct.gspca_dev* %43, i32 21)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 8, i32* %2, align 4
  br label %145

48:                                               ; preds = %36
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = call i32 @start_2wr_probe(%struct.gspca_dev* %49, i32 10)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = call i32 @i2c_write(%struct.gspca_dev* %51, i32 7, i32 170, i32 170)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = call i32 @i2c_read(%struct.gspca_dev* %53, i32 7)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 10, i32* %2, align 4
  br label %145

58:                                               ; preds = %48
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = call i32 @i2c_read(%struct.gspca_dev* %59, i32 3)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 10, i32* %2, align 4
  br label %145

64:                                               ; preds = %58
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = call i32 @i2c_read(%struct.gspca_dev* %65, i32 4)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 10, i32* %2, align 4
  br label %145

70:                                               ; preds = %64
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %72 = call i32 @start_2wr_probe(%struct.gspca_dev* %71, i32 12)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = call i32 @i2c_write(%struct.gspca_dev* %73, i32 1, i32 17, i32 0)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = call i32 @i2c_read(%struct.gspca_dev* %75, i32 1)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 12, i32* %2, align 4
  br label %145

80:                                               ; preds = %70
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %82 = call i32 @start_2wr_probe(%struct.gspca_dev* %81, i32 14)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %84 = call i32 @reg_w(%struct.gspca_dev* %83, i32 8, i32 141)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = call i32 @i2c_write(%struct.gspca_dev* %85, i32 3, i32 170, i32 0)
  %87 = call i32 @msleep(i32 50)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %89 = call i32 @i2c_read(%struct.gspca_dev* %88, i32 3)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = load i32, i32* @SENSOR_PAS202B, align 4
  %95 = call i32 @send_unknown(%struct.gspca_dev* %93, i32 %94)
  store i32 14, i32* %2, align 4
  br label %145

96:                                               ; preds = %80
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = call i32 @start_2wr_probe(%struct.gspca_dev* %97, i32 2)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %100 = call i32 @i2c_write(%struct.gspca_dev* %99, i32 1, i32 170, i32 0)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = call i32 @i2c_read(%struct.gspca_dev* %101, i32 1)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 2, i32* %2, align 4
  br label %145

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %35
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %109 = call i32 @reg_r(%struct.gspca_dev* %108, i32 16)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = call i32 @reg_r(%struct.gspca_dev* %110, i32 16)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = call i32 @reg_w(%struct.gspca_dev* %112, i32 1, i32 0)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %115 = call i32 @reg_w(%struct.gspca_dev* %114, i32 1, i32 1)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %117 = call i32 @reg_w(%struct.gspca_dev* %116, i32 6, i32 16)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %119 = call i32 @reg_w(%struct.gspca_dev* %118, i32 161, i32 139)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = call i32 @reg_w(%struct.gspca_dev* %120, i32 8, i32 141)
  %122 = call i32 @msleep(i32 500)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = call i32 @reg_w(%struct.gspca_dev* %123, i32 1, i32 18)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %126 = call i32 @i2c_write(%struct.gspca_dev* %125, i32 18, i32 128, i32 0)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %128 = call i32 @i2c_read(%struct.gspca_dev* %127, i32 10)
  %129 = shl i32 %128, 8
  store i32 %129, i32* %4, align 4
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @i2c_read(%struct.gspca_dev* %130, i32 11)
  %132 = load i32, i32* %4, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* @D_PROBE, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @PDEBUG(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %4, align 4
  switch i32 %137, label %142 [
    i32 30257, label %138
    i32 30240, label %141
    i32 30280, label %141
  ]

138:                                              ; preds = %107
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %140 = call i32 @reg_w(%struct.gspca_dev* %139, i32 6, i32 16)
  br label %143

141:                                              ; preds = %107, %107
  br label %143

142:                                              ; preds = %107
  store i32 -1, i32* %2, align 4
  br label %145

143:                                              ; preds = %141, %138
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %142, %105, %92, %79, %69, %63, %57, %47, %23, %13
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @start_2wr_probe(%struct.gspca_dev*, i32) #1

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @i2c_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @send_unknown(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
