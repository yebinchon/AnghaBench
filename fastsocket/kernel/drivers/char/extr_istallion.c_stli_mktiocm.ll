; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_mktiocm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_mktiocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SG_DCD = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@SG_CTS = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@SG_RI = common dso_local global i64 0, align 8
@TIOCM_RI = common dso_local global i64 0, align 8
@SG_DSR = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@SG_DTR = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i64 0, align 8
@SG_RTS = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @stli_mktiocm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stli_mktiocm(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @SG_DCD, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @TIOCM_CD, align 8
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %10 ]
  %13 = load i64, i64* %3, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @SG_CTS, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i64, i64* @TIOCM_CTS, align 8
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64 [ %20, %19 ], [ 0, %21 ]
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @SG_RI, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i64, i64* @TIOCM_RI, align 8
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i64 [ %31, %30 ], [ 0, %32 ]
  %35 = load i64, i64* %3, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @SG_DSR, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @TIOCM_DSR, align 8
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i64 [ %42, %41 ], [ 0, %43 ]
  %46 = load i64, i64* %3, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @SG_DTR, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @TIOCM_DTR, align 8
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i64 [ %53, %52 ], [ 0, %54 ]
  %57 = load i64, i64* %3, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @SG_RTS, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @TIOCM_RTS, align 8
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i64 [ %64, %63 ], [ 0, %65 ]
  %68 = load i64, i64* %3, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
