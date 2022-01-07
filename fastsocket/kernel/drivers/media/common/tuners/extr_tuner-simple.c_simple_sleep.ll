; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.tuner_simple_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.tuner_simple_priv = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @simple_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tuner_simple_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  store %struct.tuner_simple_priv* %8, %struct.tuner_simple_priv** %4, align 8
  %9 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %4, align 8
  %10 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %4, align 8
  %19 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %17
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %33, align 8
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = bitcast %struct.dvb_frontend* %35 to %struct.dvb_frontend.0*
  %37 = call i32 %34(%struct.dvb_frontend.0* %36, i32 1)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %4, align 8
  %40 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %39, i32 0, i32 1
  %41 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %4, align 8
  %42 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %4, align 8
  %48 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_6__* %40, i32* %46, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %4, align 8
  %57 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %55, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %17
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
