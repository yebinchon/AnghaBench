; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_cfg_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_cfg_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32, i32, i32)* @dib7000p_cfg_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_cfg_gpio(%struct.dib7000p_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %10 = call i8* @dib7000p_read_word(%struct.dib7000p_state* %9, i32 1029)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %13 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %18 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %26 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %29, i32 1029, i32 %32)
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %35 = call i8* @dib7000p_read_word(%struct.dib7000p_state* %34, i32 1030)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %38 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %43 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %51 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %55 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %56 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %54, i32 1030, i32 %57)
  ret i32 0
}

declare dso_local i8* @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
