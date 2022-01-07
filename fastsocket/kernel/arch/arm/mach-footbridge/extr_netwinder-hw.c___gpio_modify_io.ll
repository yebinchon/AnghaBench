; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c___gpio_modify_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c___gpio_modify_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_gpio_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__gpio_modify_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gpio_modify_io(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @current_gpio_io, align 4
  %9 = load i32, i32* %3, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @current_gpio_io, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* @current_gpio_io, align 4
  %18 = load i32, i32* %6, align 4
  %19 = lshr i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = call i32 @wb977_device_select(i32 7)
  store i32 225, i32* %7, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 232
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1
  %35 = call i32 @wb977_wb(i32 %32, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = lshr i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = lshr i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %23

43:                                               ; preds = %29
  %44 = call i32 @wb977_device_select(i32 8)
  store i32 232, i32* %7, align 4
  br label %45

45:                                               ; preds = %62, %43
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 236
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 1
  %57 = call i32 @wb977_wb(i32 %54, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = lshr i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = lshr i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %45

65:                                               ; preds = %51
  ret void
}

declare dso_local i32 @wb977_device_select(i32) #1

declare dso_local i32 @wb977_wb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
