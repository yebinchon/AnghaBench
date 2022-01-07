; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_set_transmission_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_set_transmission_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32 }

@EN_DMD_RACQ = common dso_local global i32 0, align 4
@OFDM_COR_MODEGUARD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxt6000_state*, i32)* @nxt6000_set_transmission_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_set_transmission_mode(%struct.nxt6000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxt6000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %50 [
    i32 130, label %8
    i32 129, label %29
    i32 128, label %29
  ]

8:                                                ; preds = %2
  %9 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %10 = load i32, i32* @EN_DMD_RACQ, align 4
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %12 = load i32, i32* @EN_DMD_RACQ, align 4
  %13 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %11, i32 %12)
  %14 = and i32 %13, -4
  %15 = or i32 0, %14
  %16 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %9, i32 %10, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %8
  %21 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %22 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %23 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %24 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %25 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %23, i32 %24)
  %26 = and i32 %25, -5
  %27 = or i32 0, %26
  %28 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %21, i32 %22, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2, %2
  %30 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %31 = load i32, i32* @EN_DMD_RACQ, align 4
  %32 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %33 = load i32, i32* @EN_DMD_RACQ, align 4
  %34 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %32, i32 %33)
  %35 = and i32 %34, -4
  %36 = or i32 2, %35
  %37 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %30, i32 %31, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %29
  %42 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %43 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %44 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %45 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %46 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %44, i32 %45)
  %47 = and i32 %46, -5
  %48 = or i32 4, %47
  %49 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %42, i32 %43, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %41, %39, %20, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @nxt6000_writereg(%struct.nxt6000_state*, i32, i32) #1

declare dso_local i32 @nxt6000_readreg(%struct.nxt6000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
