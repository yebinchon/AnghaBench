; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_pit_calibrate_tsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_pit_calibrate_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @pit_calibrate_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pit_calibrate_tsc(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 @inb(i32 97)
  %16 = and i32 %15, -3
  %17 = or i32 %16, 1
  %18 = call i32 @outb(i32 %17, i32 97)
  %19 = call i32 @outb(i32 176, i32 67)
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = call i32 @outb(i32 %21, i32 66)
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @outb(i32 %24, i32 66)
  %26 = call i64 (...) @get_cycles()
  store i64 %26, i64* %10, align 8
  store i64 %26, i64* %9, align 8
  store i64 %26, i64* %8, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  %27 = load i64, i64* @ULONG_MAX, align 8
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %53, %3
  %29 = call i32 @inb(i32 97)
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = call i64 (...) @get_cycles()
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = mul i64 10, %62
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %56
  %66 = load i64, i64* @ULONG_MAX, align 8
  store i64 %66, i64* %4, align 8
  br label %75

67:                                               ; preds = %60
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @do_div(i64 %71, i64 %72)
  %74 = load i64, i64* %11, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %67, %65
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
