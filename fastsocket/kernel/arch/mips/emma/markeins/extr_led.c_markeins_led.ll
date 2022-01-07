; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/emma/markeins/extr_led.c_markeins_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/emma/markeins/extr_led.c_markeins_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LED_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @markeins_led(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @markeins_led_clear()
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 8, i32* %4, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = call i32 @emma2rh_in32(i32 -1342175232)
  %13 = and i32 %12, 262144
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i64, i64* @LED_BASE, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @emma2rh_out8(i64 %24, i8 signext %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %16

34:                                               ; preds = %16
  br label %61

35:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i64, i64* @LED_BASE, align 8
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 3
  %48 = sub nsw i32 3, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @emma2rh_out8(i64 %50, i8 signext %55)
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %36

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60, %34
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @markeins_led_clear(...) #1

declare dso_local i32 @emma2rh_in32(i32) #1

declare dso_local i32 @emma2rh_out8(i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
