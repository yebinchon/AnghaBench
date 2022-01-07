; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_dvbc_philips_tdm1316l_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_dvbc_philips_tdm1316l_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.budget_ci = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dvbc_philips_tdm1316l_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbc_philips_tdm1316l_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.budget_ci*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.budget_ci*
  store %struct.budget_ci* %18, %struct.budget_ci** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %24 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %25 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 8
  store i32 0, i32* %9, align 4
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 36125000
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 87000000
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %155

36:                                               ; preds = %2
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 130000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 3, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %83

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 160000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 5, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %82

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 200000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 6, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %81

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 290000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 3, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %80

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 420000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 5, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %79

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 480000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 6, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %78

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 620000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 3, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %77

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 830000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 5, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 895000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 7, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %155

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %67
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %47
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %39
  br label %84

84:                                               ; preds = %83
  store i32 1, i32* %12, align 4
  %85 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 36125000
  %89 = add nsw i32 %88, 31250
  %90 = sdiv i32 %89, 62500
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = ashr i32 %91, 8
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %92, i32* %93, align 16
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 200, i32* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, 5
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 %100, 3
  %102 = or i32 %99, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 128, i32* %106, align 16
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %109, align 8
  %111 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %84
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %114 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %115, align 8
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %118 = bitcast %struct.dvb_frontend* %117 to %struct.dvb_frontend.0*
  %119 = call i32 %116(%struct.dvb_frontend.0* %118, i32 1)
  br label %120

120:                                              ; preds = %112, %84
  %121 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %122 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = call i32 @i2c_transfer(i32* %123, %struct.i2c_msg* %8, i32 1)
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %155

129:                                              ; preds = %120
  %130 = call i32 @msleep(i32 50)
  %131 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %132 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %133, align 8
  %135 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %139, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %142 = bitcast %struct.dvb_frontend* %141 to %struct.dvb_frontend.0*
  %143 = call i32 %140(%struct.dvb_frontend.0* %142, i32 1)
  br label %144

144:                                              ; preds = %136, %129
  %145 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %146 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = call i32 @i2c_transfer(i32* %147, %struct.i2c_msg* %8, i32 1)
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %155

153:                                              ; preds = %144
  %154 = call i32 @msleep(i32 1)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %150, %126, %72, %33
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
