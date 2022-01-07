; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_set_bbramp_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_set_bbramp_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"total BB gain: %ddB, step: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*, i32*)* @dib0090_set_bbramp_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_set_bbramp_pwm(%struct.dib0090_state* %0, i32* %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32*, align 8
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %7 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %6, i32 0, i32 0
  store i32* %5, i32** %7, align 8
  %8 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 500
  %13 = zext i1 %12 to i32
  %14 = call i32 @dib0090_set_boost(%struct.dib0090_state* %8, i32 %13)
  %15 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %16 = call i32 @dib0090_write_reg(%struct.dib0090_state* %15, i32 51, i32 65535)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %21 = call i32 @dib0090_read_reg(%struct.dib0090_state* %20, i32 51)
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  %23 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = call i32 @dib0090_write_regs(%struct.dib0090_state* %23, i32 53, i32* %25, i32 4)
  ret void
}

declare dso_local i32 @dib0090_set_boost(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_regs(%struct.dib0090_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
