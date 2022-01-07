; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dvb-pll.c_dvb_pll_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dvb-pll.c_dvb_pll_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.dvb_pll_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.TYPE_5__ = type { i64 }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_pll_priv = type { i32, i32, i32*, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FE_OFDM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dvb_pll_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_pll_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dvb_pll_priv*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  store %struct.dvb_pll_priv* %13, %struct.dvb_pll_priv** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 16, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %19 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %6, align 8
  %23 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %2
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %32 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %33 = call i32 @dvb_pll_configure(%struct.dvb_frontend* %30, i32* %31, %struct.dvb_frontend_parameters* %32)
  store i32 %33, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %83

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %48, align 8
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %51 = bitcast %struct.dvb_frontend* %50 to %struct.dvb_frontend.0*
  %52 = call i32 %49(%struct.dvb_frontend.0* %51, i32 1)
  br label %53

53:                                               ; preds = %45, %39
  %54 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %6, align 8
  %55 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @i2c_transfer(i32* %56, %struct.i2c_msg* %8, i32 1)
  store i32 %57, i32* %9, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %83

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %6, align 8
  %64 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FE_OFDM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %79

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i32 [ %77, %72 ], [ 0, %78 ]
  %81 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %6, align 8
  %82 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %59, %35, %26
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dvb_pll_configure(%struct.dvb_frontend*, i32*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
