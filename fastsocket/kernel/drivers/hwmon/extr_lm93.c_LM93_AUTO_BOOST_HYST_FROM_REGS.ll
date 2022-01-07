; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_AUTO_BOOST_HYST_FROM_REGS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_AUTO_BOOST_HYST_FROM_REGS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm93_data*, i32, i32)* @LM93_AUTO_BOOST_HYST_FROM_REGS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_AUTO_BOOST_HYST_FROM_REGS(%struct.lm93_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lm93_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm93_data* %0, %struct.lm93_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %32 [
    i32 0, label %9
    i32 1, label %16
    i32 2, label %24
    i32 3, label %31
  ]

9:                                                ; preds = %3
  %10 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %11 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %7, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %18 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %7, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %26 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  store i32 %30, i32* %7, align 4
  br label %40

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %34 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32, %24, %16, %9
  %41 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %42 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @LM93_TEMP_FROM_REG(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @LM93_TEMP_OFFSET_FROM_REG(i32 %49, i32 %50)
  %52 = sub nsw i32 %48, %51
  ret i32 %52
}

declare dso_local i32 @LM93_TEMP_FROM_REG(i32) #1

declare dso_local i32 @LM93_TEMP_OFFSET_FROM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
