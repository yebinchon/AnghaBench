; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_get_status_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_get_status_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5h1420_state = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5h1420_state*)* @s5h1420_get_status_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_get_status_bits(%struct.s5h1420_state* %0) #0 {
  %2 = alloca %struct.s5h1420_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s5h1420_state* %0, %struct.s5h1420_state** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %6 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %5, i32 20)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @FE_HAS_CARRIER, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %24 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %23, i32 54)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @FE_HAS_VITERBI, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @FE_HAS_SYNC, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %43 = load i32, i32* @FE_HAS_CARRIER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FE_HAS_VITERBI, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FE_HAS_SYNC, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %41, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @FE_HAS_LOCK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %40
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @s5h1420_readreg(%struct.s5h1420_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
