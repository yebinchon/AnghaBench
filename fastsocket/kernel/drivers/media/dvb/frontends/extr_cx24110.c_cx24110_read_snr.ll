; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cx24110_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %7, align 8
  store %struct.cx24110_state* %8, %struct.cx24110_state** %5, align 8
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %10 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i32 106)
  %11 = and i32 %10, 128
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %15 = call i32 @cx24110_readreg(%struct.cx24110_state* %14, i32 105)
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %17 = call i32 @cx24110_readreg(%struct.cx24110_state* %16, i32 104)
  %18 = shl i32 %17, 8
  %19 = or i32 %15, %18
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %21 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %23 = call i32 @cx24110_writereg(%struct.cx24110_state* %22, i32 106, i32 132)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %26 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
