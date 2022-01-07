; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_deconfigure_bp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_deconfigure_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bp_owner = common dso_local global i64 0, align 8
@PT_BP = common dso_local global i64 0, align 8
@PT_BP_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deconfigure_bp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @bp_owner, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @PT_BP, align 8
  %16 = add nsw i64 %15, 3
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @put_debugreg(i64 %14, i64 %20, i64 0)
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @PT_BP, align 8
  %24 = add nsw i64 %23, 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @put_debugreg(i64 %22, i64 %28, i64 0)
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @PT_BP_CTRL, align 8
  %32 = call i32 @get_debugreg(i64 %30, i64 %31)
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 2, %34
  %36 = shl i32 3, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %32, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @PT_BP_CTRL, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @put_debugreg(i64 %40, i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %13
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10

47:                                               ; preds = %10
  store i64 0, i64* @bp_owner, align 8
  br label %48

48:                                               ; preds = %47, %8
  ret void
}

declare dso_local i32 @put_debugreg(i64, i64, i64) #1

declare dso_local i32 @get_debugreg(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
