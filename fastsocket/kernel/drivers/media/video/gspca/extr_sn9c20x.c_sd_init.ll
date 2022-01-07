; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@bridge_init = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Device initialization failed\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LED_REVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"OV9650 sensor detected\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"OV9655 sensor detected\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SOI968 sensor detected\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"OV7660 sensor detected\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"OV7670 sensor detected\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"MT9M111 sensor detected\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"MT9M112 sensor detected\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"HV7131R sensor detected\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Unsupported Sensor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [9 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 3, i32* %21, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32**, i32*** @bridge_init, align 8
  %25 = call i32 @ARRAY_SIZE(i32** %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load i32**, i32*** @bridge_init, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = load i32**, i32*** @bridge_init, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @reg_w(%struct.gspca_dev* %35, i32 %42, i32* %6, i32 1)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %172

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load %struct.sd*, %struct.sd** %4, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LED_REVERSE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = call i32 @reg_w1(%struct.gspca_dev* %61, i32 4102, i32 0)
  br label %66

63:                                               ; preds = %53
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = call i32 @reg_w1(%struct.gspca_dev* %64, i32 4102, i32 32)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %69 = call i64 @reg_w(%struct.gspca_dev* %67, i32 4288, i32* %68, i32 9)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %172

75:                                               ; preds = %66
  %76 = load %struct.sd*, %struct.sd** %4, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %167 [
    i32 130, label %79
    i32 129, label %88
    i32 128, label %97
    i32 132, label %106
    i32 131, label %115
    i32 133, label %124
    i32 135, label %132
    i32 134, label %141
    i32 136, label %150
    i32 137, label %158
  ]

79:                                               ; preds = %75
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = call i32 @ov9650_init_sensor(%struct.gspca_dev* %80)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %172

86:                                               ; preds = %79
  %87 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %171

88:                                               ; preds = %75
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %90 = call i32 @ov9655_init_sensor(%struct.gspca_dev* %89)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %172

95:                                               ; preds = %88
  %96 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %171

97:                                               ; preds = %75
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @soi968_init_sensor(%struct.gspca_dev* %98)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %172

104:                                              ; preds = %97
  %105 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %171

106:                                              ; preds = %75
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %108 = call i32 @ov7660_init_sensor(%struct.gspca_dev* %107)
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %172

113:                                              ; preds = %106
  %114 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %171

115:                                              ; preds = %75
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %117 = call i32 @ov7670_init_sensor(%struct.gspca_dev* %116)
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %172

122:                                              ; preds = %115
  %123 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %171

124:                                              ; preds = %75
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %126 = call i32 @mt9v_init_sensor(%struct.gspca_dev* %125)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %172

131:                                              ; preds = %124
  br label %171

132:                                              ; preds = %75
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %134 = call i32 @mt9m111_init_sensor(%struct.gspca_dev* %133)
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %172

139:                                              ; preds = %132
  %140 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %171

141:                                              ; preds = %75
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %143 = call i32 @mt9m112_init_sensor(%struct.gspca_dev* %142)
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* @ENODEV, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %172

148:                                              ; preds = %141
  %149 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %171

150:                                              ; preds = %75
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %152 = call i32 @mt9m001_init_sensor(%struct.gspca_dev* %151)
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %172

157:                                              ; preds = %150
  br label %171

158:                                              ; preds = %75
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %160 = call i32 @hv7131r_init_sensor(%struct.gspca_dev* %159)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* @ENODEV, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %172

165:                                              ; preds = %158
  %166 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %171

167:                                              ; preds = %75
  %168 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %165, %157, %148, %139, %131, %122, %113, %104, %95, %86
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %167, %162, %154, %145, %136, %128, %119, %110, %101, %92, %83, %71, %45
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i64 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ov9650_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @ov9655_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @soi968_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @ov7660_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @ov7670_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9v_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9m111_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9m112_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @mt9m001_init_sensor(%struct.gspca_dev*) #1

declare dso_local i32 @hv7131r_init_sensor(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
