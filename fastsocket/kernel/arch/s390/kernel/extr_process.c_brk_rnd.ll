; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_brk_rnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_brk_rnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @brk_rnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brk_rnd() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @is_32bit_task()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = call i32 (...) @get_random_int()
  %6 = sext i32 %5 to i64
  %7 = and i64 %6, 2047
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 %7, %9
  store i64 %10, i64* %1, align 8
  br label %18

11:                                               ; preds = %0
  %12 = call i32 (...) @get_random_int()
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 262143
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 %14, %16
  store i64 %17, i64* %1, align 8
  br label %18

18:                                               ; preds = %11, %4
  %19 = load i64, i64* %1, align 8
  ret i64 %19
}

declare dso_local i64 @is_32bit_task(...) #1

declare dso_local i32 @get_random_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
