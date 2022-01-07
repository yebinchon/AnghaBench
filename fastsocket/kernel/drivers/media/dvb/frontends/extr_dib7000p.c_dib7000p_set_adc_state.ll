; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_set_adc_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_set_adc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*, i32)* @dib7000p_set_adc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_set_adc_state(%struct.dib7000p_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %8 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %7, i32 908)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %10 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %9, i32 909)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %39 [
    i32 130, label %12
    i32 131, label %20
    i32 132, label %23
    i32 133, label %28
    i32 128, label %33
    i32 129, label %36
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, 3
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %15, i32 909, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -3
  store i32 %19, i32* %6, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 3
  store i32 %22, i32* %6, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 4095
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 3
  store i32 %27, i32* %6, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 28672
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 60
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, -32769
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 32768
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %36, %33, %28, %23, %20, %12
  %41 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %42 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %50 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = shl i32 %53, 7
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %57, i32 908, i32 %58)
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %60, i32 909, i32 %61)
  ret void
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
