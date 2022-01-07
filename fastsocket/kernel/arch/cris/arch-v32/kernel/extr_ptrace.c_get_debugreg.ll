; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_get_debugreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_get_debugreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bp_owner = common dso_local global i64 0, align 8
@SPEC_REG_SRS = common dso_local global i32 0, align 4
@BANK_BP = common dso_local global i32 0, align 4
@PT_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @get_debugreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_debugreg(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @bp_owner, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %70

12:                                               ; preds = %2
  %13 = load i32, i32* @SPEC_REG_SRS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @SPEC_REG_RD(i32 %13, i32 %14)
  %16 = load i32, i32* @BANK_BP, align 4
  %17 = call i32 @SUPP_BANK_SEL(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PT_BP, align 4
  %20 = sub i32 %18, %19
  switch i32 %20, label %61 [
    i32 0, label %21
    i32 1, label %24
    i32 2, label %24
    i32 3, label %25
    i32 4, label %28
    i32 5, label %31
    i32 6, label %34
    i32 7, label %37
    i32 8, label %40
    i32 9, label %43
    i32 10, label %46
    i32 11, label %49
    i32 12, label %52
    i32 13, label %55
    i32 14, label %58
  ]

21:                                               ; preds = %12
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @SUPP_REG_RD(i32 0, i64 %22)
  br label %62

24:                                               ; preds = %12, %12
  store i64 0, i64* %7, align 8
  br label %62

25:                                               ; preds = %12
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @SUPP_REG_RD(i32 3, i64 %26)
  br label %62

28:                                               ; preds = %12
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @SUPP_REG_RD(i32 4, i64 %29)
  br label %62

31:                                               ; preds = %12
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @SUPP_REG_RD(i32 5, i64 %32)
  br label %62

34:                                               ; preds = %12
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @SUPP_REG_RD(i32 6, i64 %35)
  br label %62

37:                                               ; preds = %12
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @SUPP_REG_RD(i32 7, i64 %38)
  br label %62

40:                                               ; preds = %12
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @SUPP_REG_RD(i32 8, i64 %41)
  br label %62

43:                                               ; preds = %12
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @SUPP_REG_RD(i32 9, i64 %44)
  br label %62

46:                                               ; preds = %12
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @SUPP_REG_RD(i32 10, i64 %47)
  br label %62

49:                                               ; preds = %12
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @SUPP_REG_RD(i32 11, i64 %50)
  br label %62

52:                                               ; preds = %12
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @SUPP_REG_RD(i32 12, i64 %53)
  br label %62

55:                                               ; preds = %12
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @SUPP_REG_RD(i32 13, i64 %56)
  br label %62

58:                                               ; preds = %12
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @SUPP_REG_RD(i32 14, i64 %59)
  br label %62

61:                                               ; preds = %12
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %24, %21
  %63 = load i32, i32* @SPEC_REG_SRS, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @SPEC_REG_WR(i32 %63, i32 %64)
  %66 = call i32 (...) @NOP()
  %67 = call i32 (...) @NOP()
  %68 = call i32 (...) @NOP()
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %62, %11
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @SPEC_REG_RD(i32, i32) #1

declare dso_local i32 @SUPP_BANK_SEL(i32) #1

declare dso_local i32 @SUPP_REG_RD(i32, i64) #1

declare dso_local i32 @SPEC_REG_WR(i32, i32) #1

declare dso_local i32 @NOP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
