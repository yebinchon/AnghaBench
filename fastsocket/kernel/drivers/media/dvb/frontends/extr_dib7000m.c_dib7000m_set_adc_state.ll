; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_adc_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_adc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_set_adc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_adc_state(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %9 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %8, i32 913)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %11 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %10, i32 914)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %60 [
    i32 130, label %13
    i32 131, label %23
    i32 132, label %26
    i32 133, label %49
    i32 128, label %54
    i32 129, label %57
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, 3
  store i32 %15, i32* %7, align 4
  %16 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %16, i32 914, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, -3
  store i32 %22, i32* %7, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 3
  store i32 %25, i32* %7, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %28 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 16384
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %33 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %32, i32 913, i32 0)
  %34 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 3
  %37 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %34, i32 914, i32 %36)
  %38 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %39 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %38, i32 913, i32 32768)
  %40 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 3
  %43 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %40, i32 914, i32 %42)
  br label %44

44:                                               ; preds = %31, %26
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 4095
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 3
  store i32 %48, i32* %7, align 4
  br label %61

49:                                               ; preds = %2
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, 28672
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, 60
  store i32 %53, i32* %7, align 4
  br label %61

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, -32769
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %2
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, 32768
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %57, %54, %49, %44, %23, %13
  %62 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %62, i32 913, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %67, i32 914, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
