; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgs8gxx_state* }
%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8913 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @lgs8gxx_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lgs8gxx_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %8, align 8
  store %struct.lgs8gxx_state* %9, %struct.lgs8gxx_state** %6, align 8
  %10 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %11 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @lgs8913_read_signal_strength(%struct.lgs8gxx_state* %18, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %23 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @lgs8g75_read_signal_strength(%struct.lgs8gxx_state* %30, i32* %31)
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @lgs8gxx_read_signal_agc(%struct.lgs8gxx_state* %34, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %29, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @lgs8913_read_signal_strength(%struct.lgs8gxx_state*, i32*) #1

declare dso_local i32 @lgs8g75_read_signal_strength(%struct.lgs8gxx_state*, i32*) #1

declare dso_local i32 @lgs8gxx_read_signal_agc(%struct.lgs8gxx_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
