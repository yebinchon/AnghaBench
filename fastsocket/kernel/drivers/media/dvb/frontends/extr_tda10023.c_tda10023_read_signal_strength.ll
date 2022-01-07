; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10023_state* }
%struct.tda10023_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tda10023_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tda10023_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda10023_state*, %struct.tda10023_state** %9, align 8
  store %struct.tda10023_state* %10, %struct.tda10023_state** %5, align 8
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %12 = call i32 @tda10023_readreg(%struct.tda10023_state* %11, i32 47)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %14 = call i32 @tda10023_readreg(%struct.tda10023_state* %13, i32 23)
  %15 = sub nsw i32 255, %14
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 255, %16
  %18 = sdiv i32 %17, 16
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 144
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 144
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 255, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  ret i32 0
}

declare dso_local i32 @tda10023_readreg(%struct.tda10023_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
