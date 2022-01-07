; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_philips_tdm1316l_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_philips_tdm1316l_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.budget_ci = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @philips_tdm1316l_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tdm1316l_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.budget_ci*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.budget_ci*
  store %struct.budget_ci* %18, %struct.budget_ci** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 16, i32* %21, align 8
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
  %30 = add nsw i32 %29, 36130000
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 87000000
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %181

36:                                               ; preds = %2
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 130000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 3, i32* %11, align 4
  br label %83

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 160000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 5, i32* %11, align 4
  br label %82

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 200000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 6, i32* %11, align 4
  br label %81

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 290000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 3, i32* %11, align 4
  br label %80

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 420000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 5, i32* %11, align 4
  br label %79

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 480000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 6, i32* %11, align 4
  br label %78

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 620000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 3, i32* %11, align 4
  br label %77

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 830000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 5, i32* %11, align 4
  br label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 895000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 7, i32* %11, align 4
  br label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %181

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
  %85 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 49000000
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %181

92:                                               ; preds = %84
  %93 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %94 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 159000000
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %10, align 4
  br label %115

98:                                               ; preds = %92
  %99 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 444000000
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 2, i32* %10, align 4
  br label %114

104:                                              ; preds = %98
  %105 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 861000000
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 4, i32* %10, align 4
  br label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %181

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %103
  br label %115

115:                                              ; preds = %114, %97
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %131 [
    i32 130, label %122
    i32 129, label %125
    i32 128, label %128
  ]

122:                                              ; preds = %116
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %124 = call i32 @tda1004x_writereg(%struct.dvb_frontend* %123, i32 12, i32 20)
  store i32 0, i32* %12, align 4
  br label %134

125:                                              ; preds = %116
  %126 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %127 = call i32 @tda1004x_writereg(%struct.dvb_frontend* %126, i32 12, i32 128)
  store i32 0, i32* %12, align 4
  br label %134

128:                                              ; preds = %116
  %129 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %130 = call i32 @tda1004x_writereg(%struct.dvb_frontend* %129, i32 12, i32 20)
  store i32 1, i32* %12, align 4
  br label %134

131:                                              ; preds = %116
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %181

134:                                              ; preds = %128, %125, %122
  %135 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %136 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 1000
  %139 = mul nsw i32 %138, 6
  %140 = add nsw i32 %139, 217280
  %141 = sdiv i32 %140, 1000
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = ashr i32 %142, 8
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %143, i32* %144, align 16
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, 255
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 202, i32* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = shl i32 %149, 5
  %151 = load i32, i32* %12, align 4
  %152 = shl i32 %151, 3
  %153 = or i32 %150, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %153, %154
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %158 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %159, align 8
  %161 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %134
  %163 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %164 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %165, align 8
  %167 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %168 = bitcast %struct.dvb_frontend* %167 to %struct.dvb_frontend.0*
  %169 = call i32 %166(%struct.dvb_frontend.0* %168, i32 1)
  br label %170

170:                                              ; preds = %162, %134
  %171 = load %struct.budget_ci*, %struct.budget_ci** %6, align 8
  %172 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = call i32 @i2c_transfer(i32* %173, %struct.i2c_msg* %8, i32 1)
  %175 = icmp ne i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %181

179:                                              ; preds = %170
  %180 = call i32 @msleep(i32 1)
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %176, %131, %110, %89, %72, %33
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @tda1004x_writereg(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
