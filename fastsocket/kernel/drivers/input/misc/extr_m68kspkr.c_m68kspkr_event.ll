; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_m68kspkr.c_m68kspkr_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_m68kspkr.c_m68kspkr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@EV_SND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @m68kspkr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m68kspkr_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @EV_SND, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %22
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1000, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %15, %21
  br label %24

23:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %36

24:                                               ; preds = %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 20
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 32767
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 1193182, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @mach_beep(i32 %34, i32 -1)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %23, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @mach_beep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
