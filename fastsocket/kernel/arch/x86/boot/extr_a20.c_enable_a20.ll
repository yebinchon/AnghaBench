; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_a20.c_enable_a20.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_a20.c_enable_a20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A20_ENABLE_LOOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enable_a20() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @A20_ENABLE_LOOPS, align 4
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %37, %0
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %2, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = call i64 (...) @a20_test_short()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %39

13:                                               ; preds = %9
  %14 = call i32 (...) @enable_a20_bios()
  %15 = call i64 (...) @a20_test_short()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %39

18:                                               ; preds = %13
  %19 = call i32 (...) @empty_8042()
  store i32 %19, i32* %3, align 4
  %20 = call i64 (...) @a20_test_short()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %39

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @enable_a20_kbc()
  %28 = call i64 (...) @a20_test_long()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %39

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = call i32 (...) @enable_a20_fast()
  %34 = call i64 (...) @a20_test_long()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %39

37:                                               ; preds = %32
  br label %5

38:                                               ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %36, %30, %22, %17, %12
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i64 @a20_test_short(...) #1

declare dso_local i32 @enable_a20_bios(...) #1

declare dso_local i32 @empty_8042(...) #1

declare dso_local i32 @enable_a20_kbc(...) #1

declare dso_local i64 @a20_test_long(...) #1

declare dso_local i32 @enable_a20_fast(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
