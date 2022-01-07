; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_alps_bsrv2_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_alps_bsrv2_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @alps_bsrv2_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_bsrv2_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.av7110*, align 8
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
  %15 = load %struct.av7110*, %struct.av7110** %14, align 8
  store %struct.av7110* %15, %struct.av7110** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 97, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 479500
  %25 = sdiv i32 %24, 125
  store i32 %25, i32* %10, align 4
  %26 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 2000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 3, i32* %7, align 4
  br label %60

31:                                               ; preds = %2
  %32 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 1800000
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 2, i32* %7, align 4
  br label %59

37:                                               ; preds = %31
  %38 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1600000
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %58

43:                                               ; preds = %37
  %44 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 1200000
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %57

49:                                               ; preds = %43
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 1100000
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %56

55:                                               ; preds = %49
  store i32 2, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 127
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 98304
  %70 = ashr i32 %69, 10
  %71 = or i32 %70, 149
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 %73, 6
  %75 = or i32 %74, 48
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %75, i32* %76, align 4
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %60
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %85, align 8
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %88 = bitcast %struct.dvb_frontend* %87 to %struct.dvb_frontend.0*
  %89 = call i32 %86(%struct.dvb_frontend.0* %88, i32 1)
  br label %90

90:                                               ; preds = %82, %60
  %91 = load %struct.av7110*, %struct.av7110** %6, align 8
  %92 = getelementptr inbounds %struct.av7110, %struct.av7110* %91, i32 0, i32 0
  %93 = call i32 @i2c_transfer(i32* %92, %struct.i2c_msg* %9, i32 1)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
