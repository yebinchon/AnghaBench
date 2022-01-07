; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_cfg_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_cfg_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"gpio dir: %x: gpio val: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32, i32, i32)* @dib8000_cfg_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_cfg_gpio(%struct.dib8000_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %10 = call i8* @dib8000_read_word(%struct.dib8000_state* %9, i32 1029)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %13 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %34 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dib8000_write_word(%struct.dib8000_state* %32, i32 1029, i32 %36)
  %38 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %39 = call i8* @dib8000_read_word(%struct.dib8000_state* %38, i32 1030)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %42 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %48 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 1
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %53, %54
  %56 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %57 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %63 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dib8000_write_word(%struct.dib8000_state* %61, i32 1030, i32 %65)
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %72 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %74)
  ret i32 0
}

declare dso_local i8* @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
