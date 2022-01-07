; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_vc032x_probe_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_vc032x_probe_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32* }
%struct.sd = type { i32, i64 }

@FL_SAMSUNG = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vc032%d check sensor header %02x\00", align 1
@BRIDGE_VC0321 = common dso_local global i64 0, align 8
@vc0321_probe_data = common dso_local global %struct.sensor_info* null, align 8
@vc0323_probe_data = common dso_local global %struct.sensor_info* null, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Sensor ID %04x (%d)\00", align 1
@SENSOR_PO3130NC = common dso_local global i32 0, align 4
@SENSOR_OV7670 = common dso_local global i32 0, align 4
@SENSOR_MI0360 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @vc032x_probe_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc032x_probe_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sensor_info*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %4, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FL_SAMSUNG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 160, i32 1, i32 45825)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @reg_w(%struct.gspca_dev* %20, i32 137, i32 61695, i32 65535)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @reg_r(%struct.gspca_dev* %23, i32 161, i32 49103, i32 1)
  %25 = load i32, i32* @D_PROBE, align 4
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BRIDGE_VC0321, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 3
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PDEBUG(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37)
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BRIDGE_VC0321, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load %struct.sensor_info*, %struct.sensor_info** @vc0321_probe_data, align 8
  store %struct.sensor_info* %45, %struct.sensor_info** %8, align 8
  %46 = load %struct.sensor_info*, %struct.sensor_info** @vc0321_probe_data, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.sensor_info* %46)
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %22
  %49 = load %struct.sensor_info*, %struct.sensor_info** @vc0323_probe_data, align 8
  store %struct.sensor_info* %49, %struct.sensor_info** %8, align 8
  %50 = load %struct.sensor_info*, %struct.sensor_info** @vc0323_probe_data, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.sensor_info* %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %44
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %130, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %133

57:                                               ; preds = %53
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = call i32 @reg_w(%struct.gspca_dev* %58, i32 160, i32 2, i32 45876)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %61 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %62 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @reg_w(%struct.gspca_dev* %60, i32 160, i32 %63, i32 45824)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %67 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @reg_w(%struct.gspca_dev* %65, i32 160, i32 %68, i32 45824)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %71 = call i32 @reg_w(%struct.gspca_dev* %70, i32 160, i32 1, i32 45832)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = call i32 @reg_w(%struct.gspca_dev* %72, i32 160, i32 12, i32 45833)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %76 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @reg_w(%struct.gspca_dev* %74, i32 160, i32 %77, i32 45877)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %80 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %81 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @reg_w(%struct.gspca_dev* %79, i32 160, i32 %82, i32 45825)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %86 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @read_sensor_register(%struct.gspca_dev* %84, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %57
  %92 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %93 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 130
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = call i32 @read_sensor_register(%struct.gspca_dev* %97, i32 131)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %91, %57
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load i32, i32* @D_ERR, align 4
  %104 = load i32, i32* @D_PROBE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @PDEBUG(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %111 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %116 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %2, align 4
  br label %134

118:                                              ; preds = %102
  %119 = load i32, i32* %7, align 4
  switch i32 %119, label %126 [
    i32 12592, label %120
    i32 30323, label %122
    i32 33347, label %124
  ]

120:                                              ; preds = %118
  %121 = load i32, i32* @SENSOR_PO3130NC, align 4
  store i32 %121, i32* %2, align 4
  br label %134

122:                                              ; preds = %118
  %123 = load i32, i32* @SENSOR_OV7670, align 4
  store i32 %123, i32* %2, align 4
  br label %134

124:                                              ; preds = %118
  %125 = load i32, i32* @SENSOR_MI0360, align 4
  store i32 %125, i32* %2, align 4
  br label %134

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %99
  %128 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %129 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %128, i32 1
  store %struct.sensor_info* %129, %struct.sensor_info** %8, align 8
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %53

133:                                              ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %124, %122, %120, %114
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_info*) #1

declare dso_local i32 @read_sensor_register(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
