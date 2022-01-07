; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*, i32)* @dib7000m_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000m_set_power_mode(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  store i32 16383, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %25 [
    i32 133, label %11
    i32 130, label %12
    i32 129, label %15
    i32 131, label %22
    i32 132, label %23
    i32 128, label %24
  ]

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -229
  store i32 %14, i32* %7, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -52225
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -245
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, -2
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 32799, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

23:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 32768, i32* %6, align 4
  store i32 267, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %2, %24, %23, %22, %15, %12, %11
  %26 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %27 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 214
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %36 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 16384
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %44 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 16387
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 903, %50
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %49, i32 %51, i32 %52)
  %54 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 904, %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %54, i32 %56, i32 %57)
  %59 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 905, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %59, i32 %61, i32 %62)
  %64 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 906, %65
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %64, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
