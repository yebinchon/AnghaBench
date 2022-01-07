; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_fint.c_ieee754sp_fint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_fint.c_ieee754sp_fint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLEARCX = common dso_local global i32 0, align 4
@SP_MBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_fint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @CLEARCX, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @ieee754sp_zero(i32 0)
  store i32 %11, i32* %2, align 4
  br label %89

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ieee754sp_one(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -10
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ieee754sp_ten(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, -2147483648
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -2147483648, i32* %4, align 4
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %43
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* @SP_MBITS, align 4
  %52 = add nsw i32 %51, 3
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SP_MBITS, align 4
  %55 = add nsw i32 %54, 1
  %56 = add nsw i32 %55, 3
  %57 = lshr i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %67, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @SP_MBITS, align 4
  %63 = add nsw i32 %62, 1
  %64 = add nsw i32 %63, 3
  %65 = lshr i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 (...) @SPXSRSX1()
  br label %60

69:                                               ; preds = %60
  br label %83

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %77, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SP_MBITS, align 4
  %74 = add nsw i32 %73, 3
  %75 = lshr i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %5, align 4
  br label %71

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @SPNORMRET1(i32 %84, i32 %85, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %29, %18, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @ieee754sp_zero(i32) #1

declare dso_local i32 @ieee754sp_one(i32) #1

declare dso_local i32 @ieee754sp_ten(i32) #1

declare dso_local i32 @SPXSRSX1(...) #1

declare dso_local i32 @SPNORMRET1(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
