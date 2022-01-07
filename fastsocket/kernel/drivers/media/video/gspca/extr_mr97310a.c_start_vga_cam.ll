; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_start_vga_cam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_start_vga_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_w_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32*, i32 }
%struct.sd = type { i32, i64, i32 }

@start_vga_cam.startup_string = internal constant [11 x i32] [i32 0, i32 13, i32 1, i32 0, i32 0, i32 43, i32 0, i32 0, i32 0, i32 80, i32 192], align 16
@start_vga_cam.vga_sensor0_init_data = internal constant [6 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 1, i32 0, i32 12, %struct.TYPE_2__ { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 20, i32 0, i32 1, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 32, i32 0, i32 0, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 37, i32 0, i32 3, %struct.TYPE_2__ { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 48, i32 0, i32 48, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@start_vga_cam.color_adj = internal constant [1 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 6, %struct.TYPE_2__ { i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }], align 16
@start_vga_cam.color_no_adj = internal constant [1 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 6, %struct.TYPE_2__ { i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }], align 16
@start_vga_cam.vga_sensor1_init_data = internal constant [6 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 17, i32 4, i32 1, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 10, i32 0, i32 0, %struct.TYPE_2__ { i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 4, i32 1, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 0, %struct.TYPE_2__ { i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 4, i32 1, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@start_vga_cam.vga_sensor2_init_data = internal constant [22 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 1, i32 0, i32 72, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 2, i32 0, i32 34, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 5, i32 0, i32 16, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 6, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 7, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 8, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 9, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 19, i32 0, i32 4, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 20, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 21, i32 0, i32 6, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 22, i32 0, i32 1, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 23, i32 0, i32 226, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 24, i32 0, i32 2, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 25, i32 0, i32 130, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 26, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 27, i32 0, i32 32, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 29, i32 0, i32 128, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 30, i32 0, i32 8, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 31, i32 0, i32 12, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 32, i32 0, i32 0, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @start_vga_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_vga_cam(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @memcpy(i32* %12, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @start_vga_cam.startup_string, i64 0, i64 0), i32 11)
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 10
  store i32 145, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 10
  store i32 24, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %48 [
    i32 160, label %37
    i32 320, label %42
    i32 640, label %47
    i32 176, label %75
    i32 352, label %80
  ]

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 9
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 12
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %33, %37
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 9
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 4
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %33, %42
  br label %48

48:                                               ; preds = %33, %47
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 80, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 120, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  store i32 4, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32 3, i32* %56, align 4
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 2, i32* %63, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %48
  %67 = load %struct.sd*, %struct.sd** %4, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32 4, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %97

75:                                               ; preds = %33
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 9
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, 4
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %33, %75
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 44, i32* %82, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 72, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 148, i32* %86, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  store i32 99, i32* %88, align 4
  %89 = load %struct.sd*, %struct.sd** %4, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32 100, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %80
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @mr_write(%struct.gspca_dev* %98, i32 11)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %147

104:                                              ; preds = %97
  %105 = load %struct.sd*, %struct.sd** %4, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor0_init_data, i64 0, i64 0))
  %112 = call i32 @sensor_write_regs(%struct.gspca_dev* %110, %struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor0_init_data, i64 0, i64 0), i32 %111)
  store i32 %112, i32* %6, align 4
  br label %145

113:                                              ; preds = %104
  %114 = load %struct.sd*, %struct.sd** %4, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %140

118:                                              ; preds = %113
  %119 = load %struct.sd*, %struct.sd** %4, align 8
  %120 = getelementptr inbounds %struct.sd, %struct.sd* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %125 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_adj, i64 0, i64 0))
  %126 = call i32 @sensor_write_regs(%struct.gspca_dev* %124, %struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_adj, i64 0, i64 0), i32 %125)
  store i32 %126, i32* %6, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %129 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_no_adj, i64 0, i64 0))
  %130 = call i32 @sensor_write_regs(%struct.gspca_dev* %128, %struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_no_adj, i64 0, i64 0), i32 %129)
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %147

136:                                              ; preds = %131
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor1_init_data, i64 0, i64 0))
  %139 = call i32 @sensor_write_regs(%struct.gspca_dev* %137, %struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor1_init_data, i64 0, i64 0), i32 %138)
  store i32 %139, i32* %6, align 4
  br label %144

140:                                              ; preds = %113
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %142 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([22 x %struct.sensor_w_data], [22 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor2_init_data, i64 0, i64 0))
  %143 = call i32 @sensor_write_regs(%struct.gspca_dev* %141, %struct.sensor_w_data* getelementptr inbounds ([22 x %struct.sensor_w_data], [22 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor2_init_data, i64 0, i64 0), i32 %142)
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %109
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %134, %102
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mr_write(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sensor_write_regs(%struct.gspca_dev*, %struct.sensor_w_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_w_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
