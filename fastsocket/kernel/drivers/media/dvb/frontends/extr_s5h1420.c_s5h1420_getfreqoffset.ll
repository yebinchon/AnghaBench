; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_getfreqoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_getfreqoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5h1420_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5h1420_state*)* @s5h1420_getfreqoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_getfreqoffset(%struct.s5h1420_state* %0) #0 {
  %2 = alloca %struct.s5h1420_state*, align 8
  %3 = alloca i32, align 4
  store %struct.s5h1420_state* %0, %struct.s5h1420_state** %2, align 8
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %6 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %5, i32 6)
  %7 = or i32 %6, 8
  %8 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %4, i32 6, i32 %7)
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %10 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %9, i32 14)
  %11 = shl i32 %10, 16
  store i32 %11, i32* %3, align 4
  %12 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %13 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %12, i32 15)
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %18 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %17, i32 16)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %22 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %23 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %22, i32 6)
  %24 = and i32 %23, 247
  %25 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %21, i32 6, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 8388608
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, -16777216
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.s5h1420_state*, %struct.s5h1420_state** %2, align 8
  %36 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 1000000
  %39 = mul nsw i32 %34, %38
  %40 = sdiv i32 %39, 16777216
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @s5h1420_writereg(%struct.s5h1420_state*, i32, i32) #1

declare dso_local i32 @s5h1420_readreg(%struct.s5h1420_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
