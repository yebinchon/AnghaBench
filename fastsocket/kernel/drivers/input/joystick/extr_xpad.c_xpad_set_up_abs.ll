; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_set_up_abs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_set_up_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i16)* @xpad_set_up_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_set_up_abs(%struct.input_dev* %0, i16 signext %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i16, align 2
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_bit(i16 signext %5, i32 %8)
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i32
  switch i32 %11, label %24 [
    i32 130, label %12
    i32 129, label %12
    i32 133, label %12
    i32 132, label %12
    i32 128, label %16
    i32 131, label %16
    i32 135, label %20
    i32 134, label %20
  ]

12:                                               ; preds = %2, %2, %2, %2
  %13 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %14 = load i16, i16* %4, align 2
  %15 = call i32 @input_set_abs_params(%struct.input_dev* %13, i16 signext %14, i32 -32768, i32 32767, i32 16, i32 128)
  br label %24

16:                                               ; preds = %2, %2
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = load i16, i16* %4, align 2
  %19 = call i32 @input_set_abs_params(%struct.input_dev* %17, i16 signext %18, i32 0, i32 255, i32 0, i32 0)
  br label %24

20:                                               ; preds = %2, %2
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @input_set_abs_params(%struct.input_dev* %21, i16 signext %22, i32 -1, i32 1, i32 0, i32 0)
  br label %24

24:                                               ; preds = %2, %20, %16, %12
  ret void
}

declare dso_local i32 @set_bit(i16 signext, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i16 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
