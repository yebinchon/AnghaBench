; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_nexusca_stv0297_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_nexusca_stv0297_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nexusca: pll transfer failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @nexusca_stv0297_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexusca_stv0297_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.av7110*, %struct.av7110** %15, align 8
  store %struct.av7110* %16, %struct.av7110** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 99, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 99, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %27 = load i32, i32* @I2C_M_RD, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 36150000
  %32 = add nsw i32 %31, 31250
  %33 = sdiv i32 %32, 62500
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 127
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 206, i32* %41, align 8
  %42 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 45000000
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %135

49:                                               ; preds = %2
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 137000000
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 1, i32* %55, align 4
  br label %75

56:                                               ; preds = %49
  %57 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 403000000
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 2, i32* %62, align 4
  br label %74

63:                                               ; preds = %56
  %64 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %65 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 860000000
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 4, i32* %69, align 4
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %135

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %85, align 8
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %88 = bitcast %struct.dvb_frontend* %87 to %struct.dvb_frontend.0*
  %89 = call i32 %86(%struct.dvb_frontend.0* %88, i32 1)
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.av7110*, %struct.av7110** %6, align 8
  %92 = getelementptr inbounds %struct.av7110, %struct.av7110* %91, i32 0, i32 0
  %93 = call i32 @i2c_transfer(i32* %92, %struct.i2c_msg* %9, i32 1)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %135

99:                                               ; preds = %90
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %131, %99
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 20
  br i1 %102, label %103, label %134

103:                                              ; preds = %100
  %104 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %106, align 8
  %108 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %112, align 8
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %115 = bitcast %struct.dvb_frontend* %114 to %struct.dvb_frontend.0*
  %116 = call i32 %113(%struct.dvb_frontend.0* %115, i32 1)
  br label %117

117:                                              ; preds = %109, %103
  %118 = load %struct.av7110*, %struct.av7110** %6, align 8
  %119 = getelementptr inbounds %struct.av7110, %struct.av7110* %118, i32 0, i32 0
  %120 = call i32 @i2c_transfer(i32* %119, %struct.i2c_msg* %10, i32 1)
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = and i32 %124, 64
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %134

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %117
  %130 = call i32 @msleep(i32 10)
  br label %131

131:                                              ; preds = %129
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %100

134:                                              ; preds = %127, %100
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %95, %70, %46
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
