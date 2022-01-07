; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_vp3021_alps_tded4_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_vp3021_alps_tded4_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.dvb_bt8xx_card = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @vp3021_alps_tded4_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp3021_alps_tded4_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dvb_bt8xx_card*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dvb_bt8xx_card*
  store %struct.dvb_bt8xx_card* %15, %struct.dvb_bt8xx_card** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 96, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 36166667
  %25 = sdiv i32 %24, 166667
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 127
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 133, i32* %33, align 8
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 47000000
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 153000000
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 1, i32* %44, align 4
  br label %87

45:                                               ; preds = %38, %2
  %46 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 153000000
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 430000000
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 2, i32* %56, align 4
  br label %86

57:                                               ; preds = %50, %45
  %58 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 430000000
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 824000000
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 12, i32* %68, align 4
  br label %85

69:                                               ; preds = %62, %57
  %70 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 824000000
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 863000000
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 140, i32* %80, align 4
  br label %84

81:                                               ; preds = %74, %69
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %106

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %43
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %96, align 8
  %98 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %99 = bitcast %struct.dvb_frontend* %98 to %struct.dvb_frontend.0*
  %100 = call i32 %97(%struct.dvb_frontend.0* %99, i32 1)
  br label %101

101:                                              ; preds = %93, %87
  %102 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %6, align 8
  %103 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @i2c_transfer(i32 %104, %struct.i2c_msg* %9, i32 1)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %81
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
