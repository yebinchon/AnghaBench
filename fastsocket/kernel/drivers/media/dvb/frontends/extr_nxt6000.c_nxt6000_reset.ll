; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32 }

@OFDM_COR_CTL = common dso_local global i32 0, align 4
@COREACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nxt6000_state*)* @nxt6000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nxt6000_reset(%struct.nxt6000_state* %0) #0 {
  %2 = alloca %struct.nxt6000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %2, align 8
  %4 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %5 = load i32, i32* @OFDM_COR_CTL, align 4
  %6 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %8 = load i32, i32* @OFDM_COR_CTL, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @COREACT, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %7, i32 %8, i32 %12)
  %14 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %15 = load i32, i32* @OFDM_COR_CTL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @COREACT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %14, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @nxt6000_readreg(%struct.nxt6000_state*, i32) #1

declare dso_local i32 @nxt6000_writereg(%struct.nxt6000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
