; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_grundig_29504_401_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_grundig_29504_401_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.budget* }
%struct.budget = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @grundig_29504_401_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grundig_29504_401_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.budget*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.budget*, %struct.budget** %17, align 8
  store %struct.budget* %18, %struct.budget** %6, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 16, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  br label %35

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 97, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 36125000, %38
  %40 = sdiv i32 %39, 166666
  store i32 %40, i32* %8, align 4
  store i32 136, i32* %9, align 4
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 175000000
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 2, i32* %10, align 4
  br label %68

46:                                               ; preds = %35
  %47 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 390000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %67

52:                                               ; preds = %46
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 470000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 2, i32* %10, align 4
  br label %66

58:                                               ; preds = %52
  %59 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 750000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  br label %65

64:                                               ; preds = %58
  store i32 3, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 175000000
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 14, i32* %11, align 4
  br label %82

74:                                               ; preds = %68
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 470000000
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 5, i32* %11, align 4
  br label %81

80:                                               ; preds = %74
  store i32 3, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 127
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %85, i32* %86, align 16
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 255
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 10
  %92 = and i32 %91, 96
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %92, %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %96, 6
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %99, i32* %100, align 4
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %82
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %109, align 8
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %112 = bitcast %struct.dvb_frontend* %111 to %struct.dvb_frontend.0*
  %113 = call i32 %110(%struct.dvb_frontend.0* %112, i32 1)
  br label %114

114:                                              ; preds = %106, %82
  %115 = load %struct.budget*, %struct.budget** %6, align 8
  %116 = getelementptr inbounds %struct.budget, %struct.budget* %115, i32 0, i32 0
  %117 = call i32 @i2c_transfer(i32* %116, %struct.i2c_msg* %13, i32 1)
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %123

122:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
