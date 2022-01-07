; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_read_ber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cx24110_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
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
  %10 = call i32 @cx24110_readreg(%struct.cx24110_state* %9, i32 36)
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %15 = call i32 @cx24110_writereg(%struct.cx24110_state* %14, i32 36, i32 4)
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %17 = call i32 @cx24110_readreg(%struct.cx24110_state* %16, i32 37)
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %19 = call i32 @cx24110_readreg(%struct.cx24110_state* %18, i32 38)
  %20 = shl i32 %19, 8
  %21 = or i32 %17, %20
  %22 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %23 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %25 = call i32 @cx24110_writereg(%struct.cx24110_state* %24, i32 36, i32 4)
  %26 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %27 = call i32 @cx24110_writereg(%struct.cx24110_state* %26, i32 36, i32 20)
  br label %28

28:                                               ; preds = %13, %2
  %29 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %30 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
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
