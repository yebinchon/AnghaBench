; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_maccess.c_copy_to_absolute_zero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_maccess.c_copy_to_absolute_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_to_absolute_zero(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %9, %10
  %12 = icmp uge i64 %11, 4
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 (...) @preempt_disable()
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @__ctl_store(i64 %16, i32 0, i32 0)
  %18 = call i32 @__ctl_clear_bit(i32 0, i32 28)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (...) @store_prefix()
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @memcpy_real(i8* %22, i8* %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @__ctl_load(i64 %26, i32 0, i32 0)
  %28 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__ctl_store(i64, i32, i32) #1

declare dso_local i32 @__ctl_clear_bit(i32, i32) #1

declare dso_local i32 @memcpy_real(i8*, i8*, i64) #1

declare dso_local i32 @store_prefix(...) #1

declare dso_local i32 @__ctl_load(i64, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
