; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_core.c_m5602_read_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_core.c_m5602_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M5602_XB_I2C_DEV_ADDR = common dso_local global i32 0, align 4
@M5602_XB_I2C_REG_ADDR = common dso_local global i32 0, align 4
@M5602_XB_I2C_CTRL = common dso_local global i32 0, align 4
@M5602_XB_I2C_DATA = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Reading sensor register 0x%x containing 0x%x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5602_read_sensor(%struct.sd* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.sd*, %struct.sd** %6, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %115

25:                                               ; preds = %14
  %26 = load %struct.sd*, %struct.sd** %6, align 8
  %27 = call i32 @m5602_wait_for_i2c(%struct.sd* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %115

32:                                               ; preds = %25
  %33 = load %struct.sd*, %struct.sd** %6, align 8
  %34 = load i32, i32* @M5602_XB_I2C_DEV_ADDR, align 4
  %35 = load %struct.sd*, %struct.sd** %6, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @m5602_write_bridge(%struct.sd* %33, i32 %34, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %115

45:                                               ; preds = %32
  %46 = load %struct.sd*, %struct.sd** %6, align 8
  %47 = load i32, i32* @M5602_XB_I2C_REG_ADDR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @m5602_write_bridge(%struct.sd* %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %115

54:                                               ; preds = %45
  %55 = load %struct.sd*, %struct.sd** %6, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.sd*, %struct.sd** %6, align 8
  %63 = load i32, i32* @M5602_XB_I2C_CTRL, align 4
  %64 = call i32 @m5602_write_bridge(%struct.sd* %62, i32 %63, i32 1)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %115

69:                                               ; preds = %61
  %70 = load %struct.sd*, %struct.sd** %6, align 8
  %71 = load i32, i32* @M5602_XB_I2C_CTRL, align 4
  %72 = call i32 @m5602_write_bridge(%struct.sd* %70, i32 %71, i32 8)
  store i32 %72, i32* %10, align 4
  br label %79

73:                                               ; preds = %54
  %74 = load %struct.sd*, %struct.sd** %6, align 8
  %75 = load i32, i32* @M5602_XB_I2C_CTRL, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 24, %76
  %78 = call i32 @m5602_write_bridge(%struct.sd* %74, i32 %75, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %73, %69
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %110, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %113

90:                                               ; preds = %88
  %91 = load %struct.sd*, %struct.sd** %6, align 8
  %92 = call i32 @m5602_wait_for_i2c(%struct.sd* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %115

97:                                               ; preds = %90
  %98 = load %struct.sd*, %struct.sd** %6, align 8
  %99 = load i32, i32* @M5602_XB_I2C_DATA, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @m5602_read_bridge(%struct.sd* %98, i32 %99, i32* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* @D_CONF, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PDEBUG(i32 %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %80

113:                                              ; preds = %88
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %95, %67, %52, %43, %30, %22
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @m5602_wait_for_i2c(%struct.sd*) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_read_bridge(%struct.sd*, i32, i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
