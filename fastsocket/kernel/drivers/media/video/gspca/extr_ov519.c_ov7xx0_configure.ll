; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov7xx0_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov7xx0_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i8*, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"starting OV7xx0 configuration\00", align 1
@OV7610_REG_COM_I = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error detecting sensor type\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Sensor is an OV76%02x\00", align 1
@SEN_OV7670 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Sensor is an OV7610\00", align 1
@SEN_OV7610 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Sensor is an OV7620AE\00", align 1
@SEN_OV7620AE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Sensor is an OV76BE\00", align 1
@SEN_OV76BE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Error detecting camera chip PID\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error detecting camera chip VER\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Sensor is an OV7630/OV7635\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"7630 is not supported by this driver\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Sensor is an OV7645\00", align 1
@SEN_OV7640 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"Sensor is an OV7645B\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Sensor is an OV7648\00", align 1
@SEN_OV7648 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"Sensor is a OV7660\00", align 1
@SEN_OV7660 = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"Unknown sensor: 0x76%x\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Sensor is an OV7620\00", align 1
@SEN_OV7620 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"Unknown image sensor version: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov7xx0_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7xx0_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %6 = load i32, i32* @D_PROBE, align 4
  %7 = call i32 (i32, i8*, ...) @PDEBUG(i32 %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sd*, %struct.sd** %2, align 8
  %9 = load i32, i32* @OV7610_REG_COM_I, align 4
  %10 = call i32 @i2c_r(%struct.sd* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @D_ERR, align 4
  %15 = call i32 (i32, i8*, ...) @PDEBUG(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %139

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = call i32 @i2c_r(%struct.sd* %21, i32 10)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = call i32 @i2c_r(%struct.sd* %23, i32 11)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 118
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 240
  %30 = icmp eq i32 %29, 112
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @D_PROBE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, i8*, ...) @PDEBUG(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** @SEN_OV7670, align 8
  %36 = load %struct.sd*, %struct.sd** %2, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %44

38:                                               ; preds = %27, %20
  %39 = load i32, i32* @D_PROBE, align 4
  %40 = call i32 (i32, i8*, ...) @PDEBUG(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i8*, i8** @SEN_OV7610, align 8
  %42 = load %struct.sd*, %struct.sd** %2, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %38, %31
  br label %139

45:                                               ; preds = %16
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 3
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = call i32 @i2c_r(%struct.sd* %50, i32 21)
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @D_PROBE, align 4
  %56 = call i32 (i32, i8*, ...) @PDEBUG(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i8*, i8** @SEN_OV7620AE, align 8
  %58 = load %struct.sd*, %struct.sd** %2, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %66

60:                                               ; preds = %49
  %61 = load i32, i32* @D_PROBE, align 4
  %62 = call i32 (i32, i8*, ...) @PDEBUG(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** @SEN_OV76BE, align 8
  %64 = load %struct.sd*, %struct.sd** %2, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %54
  br label %138

67:                                               ; preds = %45
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 3
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = call i32 @i2c_r(%struct.sd* %72, i32 10)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @D_ERR, align 4
  %78 = call i32 (i32, i8*, ...) @PDEBUG(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %139

79:                                               ; preds = %71
  %80 = load %struct.sd*, %struct.sd** %2, align 8
  %81 = call i32 @i2c_r(%struct.sd* %80, i32 11)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @D_ERR, align 4
  %86 = call i32 (i32, i8*, ...) @PDEBUG(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %139

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 118
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  switch i32 %91, label %121 [
    i32 48, label %92
    i32 64, label %95
    i32 69, label %101
    i32 72, label %107
    i32 96, label %113
  ]

92:                                               ; preds = %90
  %93 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %139

95:                                               ; preds = %90
  %96 = load i32, i32* @D_PROBE, align 4
  %97 = call i32 (i32, i8*, ...) @PDEBUG(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %98 = load i8*, i8** @SEN_OV7640, align 8
  %99 = load %struct.sd*, %struct.sd** %2, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %125

101:                                              ; preds = %90
  %102 = load i32, i32* @D_PROBE, align 4
  %103 = call i32 (i32, i8*, ...) @PDEBUG(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %104 = load i8*, i8** @SEN_OV7640, align 8
  %105 = load %struct.sd*, %struct.sd** %2, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %125

107:                                              ; preds = %90
  %108 = load i32, i32* @D_PROBE, align 4
  %109 = call i32 (i32, i8*, ...) @PDEBUG(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %110 = load i8*, i8** @SEN_OV7648, align 8
  %111 = load %struct.sd*, %struct.sd** %2, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %125

113:                                              ; preds = %90
  %114 = load i32, i32* @D_PROBE, align 4
  %115 = call i32 (i32, i8*, ...) @PDEBUG(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %116 = load i8*, i8** @SEN_OV7660, align 8
  %117 = load %struct.sd*, %struct.sd** %2, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.sd*, %struct.sd** %2, align 8
  %120 = getelementptr inbounds %struct.sd, %struct.sd* %119, i32 0, i32 1
  store i32 0, i32* %120, align 8
  br label %125

121:                                              ; preds = %90
  %122 = load i32, i32* @D_PROBE, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32, i8*, ...) @PDEBUG(i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %123)
  br label %139

125:                                              ; preds = %113, %107, %101, %95
  br label %132

126:                                              ; preds = %87
  %127 = load i32, i32* @D_PROBE, align 4
  %128 = call i32 (i32, i8*, ...) @PDEBUG(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %129 = load i8*, i8** @SEN_OV7620, align 8
  %130 = load %struct.sd*, %struct.sd** %2, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %126, %125
  br label %137

133:                                              ; preds = %67
  %134 = load i32, i32* %3, align 4
  %135 = and i32 %134, 3
  %136 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %132
  br label %138

138:                                              ; preds = %137, %66
  br label %139

139:                                              ; preds = %13, %76, %84, %92, %121, %138, %44
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
