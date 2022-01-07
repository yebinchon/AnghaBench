; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_philips_tda6651_pll_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-dvb.c_philips_tda6651_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.tda1004x_state*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.tda1004x_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not write to tuner at addr: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @philips_tda6651_pll_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tda6651_pll_set(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.saa7134_dev*, align 8
  %7 = alloca %struct.tda1004x_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  store %struct.saa7134_dev* %19, %struct.saa7134_dev** %6, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1
  %22 = load %struct.tda1004x_state*, %struct.tda1004x_state** %21, align 8
  store %struct.tda1004x_state* %22, %struct.tda1004x_state** %7, align 8
  %23 = load %struct.tda1004x_state*, %struct.tda1004x_state** %7, align 8
  %24 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 16, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 0, i32* %33, align 4
  store i32 0, i32* %11, align 4
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 36166000
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 87000000
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %185

43:                                               ; preds = %2
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 130000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 3, i32* %13, align 4
  br label %90

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 160000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 5, i32* %13, align 4
  br label %89

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 200000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 6, i32* %13, align 4
  br label %88

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 290000000
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 3, i32* %13, align 4
  br label %87

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 420000000
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 5, i32* %13, align 4
  br label %86

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 480000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 6, i32* %13, align 4
  br label %85

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 620000000
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 3, i32* %13, align 4
  br label %84

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 830000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 5, i32* %13, align 4
  br label %83

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 895000000
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 7, i32* %13, align 4
  br label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %185

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83, %70
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %58
  br label %88

88:                                               ; preds = %87, %54
  br label %89

89:                                               ; preds = %88, %50
  br label %90

90:                                               ; preds = %89, %46
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %93 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 49000000
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %185

99:                                               ; preds = %91
  %100 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %101 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 161000000
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* %12, align 4
  br label %122

105:                                              ; preds = %99
  %106 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %107 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 444000000
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 2, i32* %12, align 4
  br label %121

111:                                              ; preds = %105
  %112 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %113 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 861000000
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 4, i32* %12, align 4
  br label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %185

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %110
  br label %122

122:                                              ; preds = %121, %104
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %125 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %132 [
    i32 130, label %129
    i32 129, label %130
    i32 128, label %131
  ]

129:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  br label %135

130:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  br label %135

131:                                              ; preds = %123
  store i32 1, i32* %14, align 4
  br label %135

132:                                              ; preds = %123
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %185

135:                                              ; preds = %131, %130, %129
  %136 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %137 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 1000
  %140 = mul nsw i32 %139, 6
  %141 = add nsw i32 %140, 217496
  %142 = sdiv i32 %141, 1000
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = ashr i32 %143, 8
  %145 = and i32 %144, 127
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %145, i32* %146, align 16
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %147, 255
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 202, i32* %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = shl i32 %151, 5
  %153 = load i32, i32* %14, align 4
  %154 = shl i32 %153, 3
  %155 = or i32 %152, %154
  %156 = load i32, i32* %12, align 4
  %157 = or i32 %155, %156
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %157, i32* %158, align 4
  %159 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %160 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %161, align 8
  %163 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %135
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %166 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %167, align 8
  %169 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %170 = bitcast %struct.dvb_frontend* %169 to %struct.dvb_frontend.0*
  %171 = call i32 %168(%struct.dvb_frontend.0* %170, i32 1)
  br label %172

172:                                              ; preds = %164, %135
  %173 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %174 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %173, i32 0, i32 0
  %175 = call i32 @i2c_transfer(i32* %174, %struct.i2c_msg* %10, i32 1)
  %176 = icmp ne i32 %175, 1
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  %179 = shl i32 %178, 1
  %180 = call i32 @wprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %185

183:                                              ; preds = %172
  %184 = call i32 @msleep(i32 1)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %177, %132, %117, %96, %79, %40
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @wprintk(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
