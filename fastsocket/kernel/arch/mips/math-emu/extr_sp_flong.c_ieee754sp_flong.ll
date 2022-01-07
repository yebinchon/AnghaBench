; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_flong.c_ieee754sp_flong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_flong.c_ieee754sp_flong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLEARCX = common dso_local global i32 0, align 4
@SP_MBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sp_flong\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_flong(i32 %0) #0 {
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
  br label %90

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
  br label %90

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
  br label %90

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, -9223372036854775808
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %44
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i32, i32* @SP_MBITS, align 4
  %53 = add nsw i32 %52, 3
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SP_MBITS, align 4
  %56 = add nsw i32 %55, 1
  %57 = add nsw i32 %56, 3
  %58 = ashr i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %68, %60
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SP_MBITS, align 4
  %64 = add nsw i32 %63, 1
  %65 = add nsw i32 %64, 3
  %66 = ashr i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 (...) @SPXSRSX1()
  br label %61

70:                                               ; preds = %61
  br label %84

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %78, %71
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SP_MBITS, align 4
  %75 = add nsw i32 %74, 3
  %76 = ashr i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = shl i32 %79, 1
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  br label %72

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @SPNORMRET1(i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %29, %18, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
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
