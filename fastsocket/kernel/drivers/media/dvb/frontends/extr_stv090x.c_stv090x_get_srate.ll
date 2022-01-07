; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_srate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@SFR3 = common dso_local global i32 0, align 4
@SFR2 = common dso_local global i32 0, align 4
@SFR1 = common dso_local global i32 0, align 4
@SFR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_get_srate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_srate(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = load i32, i32* @SFR3, align 4
  %16 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %18 = load i32, i32* @SFR2, align 4
  %19 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = load i32, i32* @SFR1, align 4
  %22 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %24 = load i32, i32* @SFR0, align 4
  %25 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 24
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 16
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %40, 65536
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = srem i32 %42, 65536
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %13, align 4
  %49 = mul nsw i32 %47, %48
  %50 = ashr i32 %49, 16
  %51 = add nsw i32 %46, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 %52, %53
  %55 = ashr i32 %54, 16
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
