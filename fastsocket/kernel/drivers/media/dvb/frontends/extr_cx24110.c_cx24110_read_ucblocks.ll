; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_read_ucblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_read_ucblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cx24110_read_ucblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_read_ucblocks(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cx24110_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  store %struct.cx24110_state* %9, %struct.cx24110_state** %5, align 8
  %10 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %11 = call i32 @cx24110_readreg(%struct.cx24110_state* %10, i32 16)
  %12 = and i32 %11, 64
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %16 = call i32 @cx24110_writereg(%struct.cx24110_state* %15, i32 16, i32 96)
  %17 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %18 = call i32 @cx24110_readreg(%struct.cx24110_state* %17, i32 18)
  %19 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %20 = call i32 @cx24110_readreg(%struct.cx24110_state* %19, i32 19)
  %21 = shl i32 %20, 8
  %22 = or i32 %18, %21
  %23 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %24 = call i32 @cx24110_readreg(%struct.cx24110_state* %23, i32 20)
  %25 = shl i32 %24, 16
  %26 = or i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %28 = call i32 @cx24110_writereg(%struct.cx24110_state* %27, i32 16, i32 112)
  %29 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %30 = call i32 @cx24110_readreg(%struct.cx24110_state* %29, i32 18)
  %31 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %32 = call i32 @cx24110_readreg(%struct.cx24110_state* %31, i32 19)
  %33 = shl i32 %32, 8
  %34 = or i32 %30, %33
  %35 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %36 = call i32 @cx24110_readreg(%struct.cx24110_state* %35, i32 20)
  %37 = shl i32 %36, 16
  %38 = or i32 %34, %37
  %39 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %40 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %42 = call i32 @cx24110_writereg(%struct.cx24110_state* %41, i32 16, i32 32)
  br label %43

43:                                               ; preds = %14, %2
  %44 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %45 = getelementptr inbounds %struct.cx24110_state, %struct.cx24110_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
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
