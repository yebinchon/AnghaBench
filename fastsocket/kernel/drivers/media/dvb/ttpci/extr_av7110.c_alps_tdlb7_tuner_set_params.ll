; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_alps_tdlb7_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_alps_tdlb7_tuner_set_params.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @alps_tdlb7_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_tdlb7_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.av7110*, %struct.av7110** %14, align 8
  store %struct.av7110* %15, %struct.av7110** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 96, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 16, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 36200000
  %25 = sdiv i32 %24, 166666
  store i32 %25, i32* %7, align 4
  %26 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 782000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %32

31:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 127
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 133, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 6
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %52, align 8
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %55 = bitcast %struct.dvb_frontend* %54 to %struct.dvb_frontend.0*
  %56 = call i32 %53(%struct.dvb_frontend.0* %55, i32 1)
  br label %57

57:                                               ; preds = %49, %32
  %58 = load %struct.av7110*, %struct.av7110** %6, align 8
  %59 = getelementptr inbounds %struct.av7110, %struct.av7110* %58, i32 0, i32 0
  %60 = call i32 @i2c_transfer(i32* %59, %struct.i2c_msg* %10, i32 1)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
