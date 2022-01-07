; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_vr41xx_set_intassign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_vr41xx_set_intassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@CPU_VR4133 = common dso_local global i64 0, align 8
@INTASSIGN_MAX = common dso_local global i8 0, align 1
@SYSINT1_IRQ_BASE = common dso_local global i32 0, align 4
@SYSINT1_IRQ_LAST = common dso_local global i32 0, align 4
@SYSINT2_IRQ_BASE = common dso_local global i32 0, align 4
@SYSINT2_IRQ_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vr41xx_set_intassign(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i64 (...) @current_cpu_type()
  %10 = load i64, i64* @CPU_VR4133, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @INTASSIGN_MAX, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SYSINT1_IRQ_BASE, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SYSINT1_IRQ_LAST, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @set_sysint1_assign(i32 %33, i8 zeroext %34)
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SYSINT2_IRQ_BASE, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SYSINT2_IRQ_LAST, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i8, i8* %5, align 1
  %47 = call i32 @set_sysint2_assign(i32 %45, i8 zeroext %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %40, %36
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %21, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @set_sysint1_assign(i32, i8 zeroext) #1

declare dso_local i32 @set_sysint2_assign(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
