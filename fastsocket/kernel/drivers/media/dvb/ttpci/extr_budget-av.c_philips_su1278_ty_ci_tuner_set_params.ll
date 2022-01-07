; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_su1278_ty_ci_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_su1278_ty_ci_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.budget = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @philips_su1278_ty_ci_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_su1278_ty_ci_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.budget*, align 8
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.budget*
  store %struct.budget* %15, %struct.budget** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 97, i32* %16, align 8
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
  %24 = icmp slt i32 %23, 950000
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 2150000
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %124

33:                                               ; preds = %25
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 124
  %38 = sdiv i32 %37, 125
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 127
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 98304
  %48 = ashr i32 %47, 10
  %49 = or i32 128, %48
  %50 = or i32 %49, 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 32, i32* %52, align 4
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 4000000
  br i1 %58, label %59, label %63

59:                                               ; preds = %33
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %59, %33
  %64 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %65 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 1250000
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %69, align 4
  br label %101

71:                                               ; preds = %63
  %72 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 1550000
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, 64
  store i32 %79, i32* %77, align 4
  br label %100

80:                                               ; preds = %71
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 2050000
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 128
  store i32 %88, i32* %86, align 4
  br label %99

89:                                               ; preds = %80
  %90 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 2150000
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, 192
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %68
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %110, align 8
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %113 = bitcast %struct.dvb_frontend* %112 to %struct.dvb_frontend.0*
  %114 = call i32 %111(%struct.dvb_frontend.0* %113, i32 1)
  br label %115

115:                                              ; preds = %107, %101
  %116 = load %struct.budget*, %struct.budget** %8, align 8
  %117 = getelementptr inbounds %struct.budget, %struct.budget* %116, i32 0, i32 0
  %118 = call i32 @i2c_transfer(i32* %117, %struct.i2c_msg* %9, i32 1)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %124

123:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %120, %30
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
