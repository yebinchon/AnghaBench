; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-budget/extr_dvb-ttusb-budget.c_philips_tsa5059_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-budget/extr_dvb-ttusb-budget.c_philips_tsa5059_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.ttusb = type { i64, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TTUSB_REV_2_2 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @philips_tsa5059_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tsa5059_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.ttusb*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ttusb*
  store %struct.ttusb* %15, %struct.ttusb** %6, align 8
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
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 124
  %38 = sdiv i32 %37, 125
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 127
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 98304
  %48 = ashr i32 %47, 10
  %49 = or i32 128, %48
  %50 = or i32 %49, 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 196, i32* %52, align 4
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1530000
  br i1 %56, label %57, label %59

57:                                               ; preds = %33
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 192, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %33
  %60 = load %struct.ttusb*, %struct.ttusb** %6, align 8
  %61 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TTUSB_REV_2_2, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 32
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %78, align 8
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %81 = bitcast %struct.dvb_frontend* %80 to %struct.dvb_frontend.0*
  %82 = call i32 %79(%struct.dvb_frontend.0* %81, i32 1)
  br label %83

83:                                               ; preds = %75, %69
  %84 = load %struct.ttusb*, %struct.ttusb** %6, align 8
  %85 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %84, i32 0, i32 1
  %86 = call i32 @i2c_transfer(i32* %85, %struct.i2c_msg* %9, i32 1)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %30
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
