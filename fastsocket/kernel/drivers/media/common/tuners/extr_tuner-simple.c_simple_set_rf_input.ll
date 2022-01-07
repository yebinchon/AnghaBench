; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_rf_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_rf_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32*, i32*, i32)* @simple_set_rf_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_set_rf_input(%struct.dvb_frontend* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tuner_simple_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  store %struct.tuner_simple_priv* %12, %struct.tuner_simple_priv** %9, align 8
  %13 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  %14 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %38 [
    i32 128, label %16
    i32 129, label %27
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %22 [
    i32 1, label %18
  ]

18:                                               ; preds = %16
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 8
  store i32 %21, i32* %19, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -9
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %39

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %33 [
    i32 1, label %29
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -2
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %33, %29
  br label %39

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38, %37, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
