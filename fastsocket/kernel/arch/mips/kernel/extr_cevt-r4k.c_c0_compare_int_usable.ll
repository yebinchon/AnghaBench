; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-r4k.c_c0_compare_int_usable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-r4k.c_c0_compare_int_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c0_compare_int_usable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @c0_compare_int_pending()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = call i32 (...) @read_c0_count()
  %8 = call i32 @write_c0_compare(i32 %7)
  %9 = call i32 (...) @compare_change_hazard()
  %10 = call i64 (...) @c0_compare_int_pending()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %55

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %0
  store i32 16, i32* %2, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp ule i32 %16, 4194304
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = call i32 (...) @read_c0_count()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @write_c0_compare(i32 %23)
  %25 = call i32 (...) @compare_change_hazard()
  %26 = call i32 (...) @read_c0_count()
  %27 = load i32, i32* %3, align 4
  %28 = sub i32 %26, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %2, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %15

35:                                               ; preds = %30, %15
  br label %36

36:                                               ; preds = %41, %35
  %37 = call i32 (...) @read_c0_count()
  %38 = load i32, i32* %3, align 4
  %39 = sub i32 %37, %38
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %36

42:                                               ; preds = %36
  %43 = call i32 (...) @compare_change_hazard()
  %44 = call i64 (...) @c0_compare_int_pending()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %55

47:                                               ; preds = %42
  %48 = call i32 (...) @read_c0_count()
  %49 = call i32 @write_c0_compare(i32 %48)
  %50 = call i32 (...) @compare_change_hazard()
  %51 = call i64 (...) @c0_compare_int_pending()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %55

54:                                               ; preds = %47
  store i32 1, i32* %1, align 4
  br label %55

55:                                               ; preds = %54, %53, %46, %12
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i64 @c0_compare_int_pending(...) #1

declare dso_local i32 @write_c0_compare(i32) #1

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @compare_change_hazard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
