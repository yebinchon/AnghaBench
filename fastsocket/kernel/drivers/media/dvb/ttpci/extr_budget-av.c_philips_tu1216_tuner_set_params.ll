; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_tu1216_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_tu1216_tuner_set_params.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @philips_tu1216_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tu1216_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.budget*, align 8
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
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.budget*
  store %struct.budget* %18, %struct.budget** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 96, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 16, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %23, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 36166000
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 87000000
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %172

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 130000000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 3, i32* %11, align 4
  br label %80

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 160000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 5, i32* %11, align 4
  br label %79

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 200000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 6, i32* %11, align 4
  br label %78

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 290000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 3, i32* %11, align 4
  br label %77

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 420000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 5, i32* %11, align 4
  br label %76

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 480000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 6, i32* %11, align 4
  br label %75

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 620000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 3, i32* %11, align 4
  br label %74

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 830000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 5, i32* %11, align 4
  br label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 895000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 7, i32* %11, align 4
  br label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %172

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %44
  br label %79

79:                                               ; preds = %78, %40
  br label %80

80:                                               ; preds = %79, %36
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 49000000
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %172

89:                                               ; preds = %81
  %90 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 161000000
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %10, align 4
  br label %112

95:                                               ; preds = %89
  %96 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %97 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 444000000
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 2, i32* %10, align 4
  br label %111

101:                                              ; preds = %95
  %102 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 861000000
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 4, i32* %10, align 4
  br label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %172

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111, %94
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %115 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %122 [
    i32 130, label %119
    i32 129, label %120
    i32 128, label %121
  ]

119:                                              ; preds = %113
  store i32 0, i32* %12, align 4
  br label %125

120:                                              ; preds = %113
  store i32 0, i32* %12, align 4
  br label %125

121:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  br label %125

122:                                              ; preds = %113
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %172

125:                                              ; preds = %121, %120, %119
  %126 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %127 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 1000
  %130 = mul nsw i32 %129, 6
  %131 = add nsw i32 %130, 217496
  %132 = sdiv i32 %131, 1000
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = ashr i32 %133, 8
  %135 = and i32 %134, 127
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %135, i32* %136, align 16
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, 255
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 202, i32* %140, align 8
  %141 = load i32, i32* %11, align 4
  %142 = shl i32 %141, 5
  %143 = load i32, i32* %12, align 4
  %144 = shl i32 %143, 3
  %145 = or i32 %142, %144
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %145, %146
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %147, i32* %148, align 4
  %149 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %150 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %151, align 8
  %153 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %125
  %155 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %156 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %157, align 8
  %159 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %160 = bitcast %struct.dvb_frontend* %159 to %struct.dvb_frontend.0*
  %161 = call i32 %158(%struct.dvb_frontend.0* %160, i32 1)
  br label %162

162:                                              ; preds = %154, %125
  %163 = load %struct.budget*, %struct.budget** %6, align 8
  %164 = getelementptr inbounds %struct.budget, %struct.budget* %163, i32 0, i32 0
  %165 = call i32 @i2c_transfer(i32* %164, %struct.i2c_msg* %8, i32 1)
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %162
  %171 = call i32 @msleep(i32 1)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %167, %122, %107, %86, %69, %30
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
