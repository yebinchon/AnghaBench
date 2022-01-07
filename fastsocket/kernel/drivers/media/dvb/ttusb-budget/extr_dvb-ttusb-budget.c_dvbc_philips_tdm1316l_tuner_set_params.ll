; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-budget/extr_dvb-ttusb-budget.c_dvbc_philips_tdm1316l_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-budget/extr_dvb-ttusb-budget.c_dvbc_philips_tdm1316l_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.ttusb = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"dvb-ttusb-budget: dvbc_philips_tdm1316l_pll_set Error 1\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"dvb-ttusb-budget: dvbc_philips_tdm1316l_pll_set Error 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dvbc_philips_tdm1316l_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbc_philips_tdm1316l_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.ttusb*, align 8
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
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ttusb*
  store %struct.ttusb* %18, %struct.ttusb** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 96, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %23, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 87000000
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %150

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 130000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 3, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %79

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 160000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 5, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 200000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 6, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %77

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 290000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 3, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %76

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 420000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 5, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 480000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 6, i32* %11, align 4
  store i32 2, i32* %10, align 4
  br label %74

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 620000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 3, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 830000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 5, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 895000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 7, i32* %11, align 4
  store i32 4, i32* %10, align 4
  br label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %150

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %63
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77, %39
  br label %79

79:                                               ; preds = %78, %35
  br label %80

80:                                               ; preds = %79
  store i32 1, i32* %12, align 4
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 36125000
  %85 = sdiv i32 %84, 62500
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 8
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %87, i32* %88, align 16
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 255
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 200, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %93, 5
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 %95, 3
  %97 = or i32 %94, %96
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 128, i32* %101, align 16
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %80
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %110, align 8
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %113 = bitcast %struct.dvb_frontend* %112 to %struct.dvb_frontend.0*
  %114 = call i32 %111(%struct.dvb_frontend.0* %113, i32 1)
  br label %115

115:                                              ; preds = %107, %80
  %116 = load %struct.ttusb*, %struct.ttusb** %6, align 8
  %117 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %116, i32 0, i32 0
  %118 = call i32 @i2c_transfer(i32* %117, %struct.i2c_msg* %8, i32 1)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %150

124:                                              ; preds = %115
  %125 = call i32 @msleep(i32 50)
  %126 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %127 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %128, align 8
  %130 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %134, align 8
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %137 = bitcast %struct.dvb_frontend* %136 to %struct.dvb_frontend.0*
  %138 = call i32 %135(%struct.dvb_frontend.0* %137, i32 1)
  br label %139

139:                                              ; preds = %131, %124
  %140 = load %struct.ttusb*, %struct.ttusb** %6, align 8
  %141 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %140, i32 0, i32 0
  %142 = call i32 @i2c_transfer(i32* %141, %struct.i2c_msg* %8, i32 1)
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %150

148:                                              ; preds = %139
  %149 = call i32 @msleep(i32 1)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %144, %120, %68, %29
  %151 = load i32, i32* %3, align 4
  ret i32 %151
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
