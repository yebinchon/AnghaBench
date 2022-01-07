; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_alps_bsrv2_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_alps_bsrv2_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.budget = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @alps_bsrv2_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_bsrv2_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.budget*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.budget*
  store %struct.budget* %16, %struct.budget** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 97, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 479500
  %26 = sdiv i32 %25, 125
  store i32 %26, i32* %10, align 4
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 2000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 3, i32* %7, align 4
  br label %61

32:                                               ; preds = %2
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1800000
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 2, i32* %7, align 4
  br label %60

38:                                               ; preds = %32
  %39 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 1600000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1200000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 1100000
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %7, align 4
  br label %57

56:                                               ; preds = %50
  store i32 2, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 127
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 98304
  %71 = ashr i32 %70, 10
  %72 = or i32 %71, 149
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 %74, 6
  %76 = or i32 %75, 48
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %61
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %86, align 8
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %89 = bitcast %struct.dvb_frontend* %88 to %struct.dvb_frontend.0*
  %90 = call i32 %87(%struct.dvb_frontend.0* %89, i32 1)
  br label %91

91:                                               ; preds = %83, %61
  %92 = load %struct.budget*, %struct.budget** %6, align 8
  %93 = getelementptr inbounds %struct.budget, %struct.budget* %92, i32 0, i32 0
  %94 = call i32 @i2c_transfer(i32* %93, %struct.i2c_msg* %9, i32 1)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
