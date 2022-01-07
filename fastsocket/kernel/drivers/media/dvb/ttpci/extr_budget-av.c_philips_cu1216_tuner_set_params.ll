; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_cu1216_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_cu1216_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.budget = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@CU1216_IF = common dso_local global i32 0, align 4
@TUNER_MUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @philips_cu1216_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_cu1216_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.budget*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.budget*
  store %struct.budget* %16, %struct.budget** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 96, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 24, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 36125000
  %26 = add nsw i32 %25, 31250
  %27 = sdiv i32 %26, 62500
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 127
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 206, i32* %35, align 8
  %36 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 150000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %48

41:                                               ; preds = %2
  %42 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 445000000
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 4
  br label %48

48:                                               ; preds = %41, %40
  %49 = phi i32 [ 1, %40 ], [ %47, %41 ]
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 222, i32* %51, align 16
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 32, i32* %52, align 4
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %61, align 8
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %64 = bitcast %struct.dvb_frontend* %63 to %struct.dvb_frontend.0*
  %65 = call i32 %62(%struct.dvb_frontend.0* %64, i32 1)
  br label %66

66:                                               ; preds = %58, %48
  %67 = load %struct.budget*, %struct.budget** %6, align 8
  %68 = getelementptr inbounds %struct.budget, %struct.budget* %67, i32 0, i32 0
  %69 = call i32 @i2c_transfer(i32* %68, %struct.i2c_msg* %8, i32 1)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %141

74:                                               ; preds = %66
  %75 = load i64, i64* @I2C_M_RD, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 1, i32* %77, align 8
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %108, %74
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 20
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %90, align 8
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %93 = bitcast %struct.dvb_frontend* %92 to %struct.dvb_frontend.0*
  %94 = call i32 %91(%struct.dvb_frontend.0* %93, i32 1)
  br label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.budget*, %struct.budget** %6, align 8
  %97 = getelementptr inbounds %struct.budget, %struct.budget* %96, i32 0, i32 0
  %98 = call i32 @i2c_transfer(i32* %97, %struct.i2c_msg* %8, i32 1)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = and i32 %102, 64
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %111

106:                                              ; preds = %100, %95
  %107 = call i32 @msleep(i32 10)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %78

111:                                              ; preds = %105, %78
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 2, i32* %113, align 8
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32* %114, i32** %115, align 8
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, -65
  store i32 %118, i32* %116, align 8
  %119 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %120 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %121, align 8
  %123 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %111
  %125 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %126 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %127, align 8
  %129 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %130 = bitcast %struct.dvb_frontend* %129 to %struct.dvb_frontend.0*
  %131 = call i32 %128(%struct.dvb_frontend.0* %130, i32 1)
  br label %132

132:                                              ; preds = %124, %111
  %133 = load %struct.budget*, %struct.budget** %6, align 8
  %134 = getelementptr inbounds %struct.budget, %struct.budget* %133, i32 0, i32 0
  %135 = call i32 @i2c_transfer(i32* %134, %struct.i2c_msg* %8, i32 1)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %137, %71
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
