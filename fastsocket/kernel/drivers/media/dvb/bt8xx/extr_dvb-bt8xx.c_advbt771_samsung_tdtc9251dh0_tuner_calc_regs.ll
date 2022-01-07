; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_advbt771_samsung_tdtc9251dh0_tuner_calc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_advbt771_samsung_tdtc9251dh0_tuner_calc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32*, i32)* @advbt771_samsung_tdtc9251dh0_tuner_calc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advbt771_samsung_tdtc9251dh0_tuner_calc_regs(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.dvb_frontend_parameters*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %157

18:                                               ; preds = %4
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 83333
  %23 = mul nsw i32 %22, 3
  %24 = sdiv i32 %23, 500000
  %25 = load i32, i32* @IF_FREQUENCYx6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 150000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i8 -76, i8* %12, align 1
  br label %82

32:                                               ; preds = %18
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 173000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8 -68, i8* %12, align 1
  br label %81

38:                                               ; preds = %32
  %39 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 250000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8 -76, i8* %12, align 1
  br label %80

44:                                               ; preds = %38
  %45 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 400000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8 -68, i8* %12, align 1
  br label %79

50:                                               ; preds = %44
  %51 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 420000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8 -12, i8* %12, align 1
  br label %78

56:                                               ; preds = %50
  %57 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 470000000
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i8 -4, i8* %12, align 1
  br label %77

62:                                               ; preds = %56
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 600000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i8 -68, i8* %12, align 1
  br label %76

68:                                               ; preds = %62
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 730000000
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i8 -12, i8* %12, align 1
  br label %75

74:                                               ; preds = %68
  store i8 -4, i8* %12, align 1
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %67
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %55
  br label %79

79:                                               ; preds = %78, %49
  br label %80

80:                                               ; preds = %79, %43
  br label %81

81:                                               ; preds = %80, %37
  br label %82

82:                                               ; preds = %81, %31
  %83 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 150000000
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i8 1, i8* %11, align 1
  br label %138

88:                                               ; preds = %82
  %89 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 173000000
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i8 1, i8* %11, align 1
  br label %137

94:                                               ; preds = %88
  %95 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 250000000
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i8 2, i8* %11, align 1
  br label %136

100:                                              ; preds = %94
  %101 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 400000000
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i8 2, i8* %11, align 1
  br label %135

106:                                              ; preds = %100
  %107 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %108 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 420000000
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i8 2, i8* %11, align 1
  br label %134

112:                                              ; preds = %106
  %113 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %114 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 470000000
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i8 2, i8* %11, align 1
  br label %133

118:                                              ; preds = %112
  %119 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %120 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 600000000
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i8 8, i8* %11, align 1
  br label %132

124:                                              ; preds = %118
  %125 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %126 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 730000000
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i8 8, i8* %11, align 1
  br label %131

130:                                              ; preds = %124
  store i8 8, i8* %11, align 1
  br label %131

131:                                              ; preds = %130, %129
  br label %132

132:                                              ; preds = %131, %123
  br label %133

133:                                              ; preds = %132, %117
  br label %134

134:                                              ; preds = %133, %111
  br label %135

135:                                              ; preds = %134, %105
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %93
  br label %138

138:                                              ; preds = %137, %87
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 97, i32* %140, align 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 8
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 255
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %146, i32* %148, align 4
  %149 = load i8, i8* %12, align 1
  %150 = zext i8 %149 to i32
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 %150, i32* %152, align 4
  %153 = load i8, i8* %11, align 1
  %154 = zext i8 %153 to i32
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  store i32 %154, i32* %156, align 4
  store i32 5, i32* %5, align 4
  br label %157

157:                                              ; preds = %138, %15
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
