; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_set_guard_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_set_guard_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32 }

@OFDM_COR_MODEGUARD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxt6000_state*, i32)* @nxt6000_set_guard_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_set_guard_interval(%struct.nxt6000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxt6000_state*, align 8
  %5 = alloca i32, align 4
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %43 [
    i32 131, label %7
    i32 132, label %16
    i32 128, label %25
    i32 129, label %25
    i32 130, label %34
  ]

7:                                                ; preds = %2
  %8 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %9 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %10 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %11 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %12 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %10, i32 %11)
  %13 = and i32 %12, -4
  %14 = or i32 0, %13
  %15 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %8, i32 %9, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %18 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %19 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %20 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %21 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %19, i32 %20)
  %22 = and i32 %21, -4
  %23 = or i32 1, %22
  %24 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %17, i32 %18, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2, %2
  %26 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %27 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %28 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %29 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %30 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %28, i32 %29)
  %31 = and i32 %30, -4
  %32 = or i32 2, %31
  %33 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %26, i32 %27, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %36 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %37 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %38 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %39 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %37, i32 %38)
  %40 = and i32 %39, -4
  %41 = or i32 3, %40
  %42 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %35, i32 %36, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %34, %25, %16, %7
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @nxt6000_writereg(%struct.nxt6000_state*, i32, i32) #1

declare dso_local i32 @nxt6000_readreg(%struct.nxt6000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
