; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_microtune_mt7202dtf_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_microtune_mt7202dtf_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.dvb_bt8xx_card = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @microtune_mt7202dtf_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microtune_mt7202dtf_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dvb_bt8xx_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.dvb_bt8xx_card*
  store %struct.dvb_bt8xx_card* %17, %struct.dvb_bt8xx_card** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 96, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 16, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 36000000, %25
  %27 = add nsw i32 %26, 83333
  %28 = sdiv i32 %27, 166666
  store i32 %28, i32* %10, align 4
  store i32 136, i32* %6, align 4
  %29 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 175000000
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %56

34:                                               ; preds = %2
  %35 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 390000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 470000000
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 2, i32* %7, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 750000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 2, i32* %7, align 4
  br label %53

52:                                               ; preds = %46
  store i32 3, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 175000000
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 14, i32* %8, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 470000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 5, i32* %8, align 4
  br label %69

68:                                               ; preds = %62
  store i32 3, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 127
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %73, i32* %74, align 16
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 255
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 10
  %80 = and i32 %79, 96
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %80, %81
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 6
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %87, i32* %88, align 4
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %91, align 8
  %93 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %70
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %97, align 8
  %99 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %100 = bitcast %struct.dvb_frontend* %99 to %struct.dvb_frontend.0*
  %101 = call i32 %98(%struct.dvb_frontend.0* %100, i32 1)
  br label %102

102:                                              ; preds = %94, %70
  %103 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %5, align 8
  %104 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @i2c_transfer(i32 %105, %struct.i2c_msg* %11, i32 1)
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %107, 166666
  %109 = sub nsw i32 %108, 36000000
  ret i32 %109
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
