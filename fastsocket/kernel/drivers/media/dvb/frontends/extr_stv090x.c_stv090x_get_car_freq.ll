; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_car_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_car_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@CFR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_get_car_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_car_freq(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %11 = load i32, i32* @CFR2, align 4
  %12 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %10, i32 %11)
  %13 = shl i32 %12, 16
  store i32 %13, i32* %5, align 4
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = load i32, i32* @CFR1, align 4
  %16 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %14, i32 %15)
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = load i32, i32* @CFR0, align 4
  %22 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @comp2(i32 %25, i32 24)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 12
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 12
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 4096
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 4096
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %38, %39
  %41 = ashr i32 %40, 12
  %42 = add nsw i32 %37, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %43, %44
  %46 = ashr i32 %45, 12
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @comp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
