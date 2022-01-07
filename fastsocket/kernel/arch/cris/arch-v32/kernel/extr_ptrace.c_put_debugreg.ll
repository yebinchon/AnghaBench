; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_put_debugreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_put_debugreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bp_owner = common dso_local global i64 0, align 8
@SPEC_REG_SRS = common dso_local global i32 0, align 4
@BANK_BP = common dso_local global i32 0, align 4
@PT_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @put_debugreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_debugreg(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* @bp_owner, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* @bp_owner, align 8
  br label %27

14:                                               ; preds = %3
  %15 = load i64, i64* @bp_owner, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ -1, %23 ]
  store i32 %25, i32* %4, align 4
  br label %89

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* @SPEC_REG_SRS, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @SPEC_REG_RD(i32 %28, i32 %29)
  %31 = load i32, i32* @BANK_BP, align 4
  %32 = call i32 @SUPP_BANK_SEL(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PT_BP, align 4
  %35 = sub i32 %33, %34
  switch i32 %35, label %80 [
    i32 0, label %36
    i32 1, label %39
    i32 2, label %39
    i32 3, label %44
    i32 4, label %47
    i32 5, label %50
    i32 6, label %53
    i32 7, label %56
    i32 8, label %59
    i32 9, label %62
    i32 10, label %65
    i32 11, label %68
    i32 12, label %71
    i32 13, label %74
    i32 14, label %77
  ]

36:                                               ; preds = %27
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @SUPP_REG_WR(i32 0, i64 %37)
  br label %81

39:                                               ; preds = %27, %27
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %81

44:                                               ; preds = %27
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @SUPP_REG_WR(i32 3, i64 %45)
  br label %81

47:                                               ; preds = %27
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @SUPP_REG_WR(i32 4, i64 %48)
  br label %81

50:                                               ; preds = %27
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @SUPP_REG_WR(i32 5, i64 %51)
  br label %81

53:                                               ; preds = %27
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @SUPP_REG_WR(i32 6, i64 %54)
  br label %81

56:                                               ; preds = %27
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @SUPP_REG_WR(i32 7, i64 %57)
  br label %81

59:                                               ; preds = %27
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @SUPP_REG_WR(i32 8, i64 %60)
  br label %81

62:                                               ; preds = %27
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @SUPP_REG_WR(i32 9, i64 %63)
  br label %81

65:                                               ; preds = %27
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @SUPP_REG_WR(i32 10, i64 %66)
  br label %81

68:                                               ; preds = %27
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @SUPP_REG_WR(i32 11, i64 %69)
  br label %81

71:                                               ; preds = %27
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @SUPP_REG_WR(i32 12, i64 %72)
  br label %81

74:                                               ; preds = %27
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @SUPP_REG_WR(i32 13, i64 %75)
  br label %81

77:                                               ; preds = %27
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @SUPP_REG_WR(i32 14, i64 %78)
  br label %81

80:                                               ; preds = %27
  store i32 -1, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %43, %36
  %82 = load i32, i32* @SPEC_REG_SRS, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @SPEC_REG_WR(i32 %82, i32 %83)
  %85 = call i32 (...) @NOP()
  %86 = call i32 (...) @NOP()
  %87 = call i32 (...) @NOP()
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %81, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @SPEC_REG_RD(i32, i32) #1

declare dso_local i32 @SUPP_BANK_SEL(i32) #1

declare dso_local i32 @SUPP_REG_WR(i32, i64) #1

declare dso_local i32 @SPEC_REG_WR(i32, i32) #1

declare dso_local i32 @NOP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
