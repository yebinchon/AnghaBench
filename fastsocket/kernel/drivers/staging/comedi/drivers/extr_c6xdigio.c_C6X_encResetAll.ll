; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_C6X_encResetAll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_C6X_encResetAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C6XDIGIO_TIME_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @C6X_encResetAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @C6X_encResetAll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @WriteByteToHwPort(i64 %4, i32 104)
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i64, i64* %2, align 8
  %8 = add i64 %7, 1
  %9 = call i32 @ReadByteFromHwPort(i64 %8)
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %15 = icmp ult i32 %13, %14
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i1 [ false, %6 ], [ %15, %12 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @WriteByteToHwPort(i64 %22, i32 108)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %36, %21
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  %27 = call i32 @ReadByteFromHwPort(i64 %26)
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %33 = icmp ult i32 %31, %32
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %24

39:                                               ; preds = %34
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @WriteByteToHwPort(i64 %40, i32 104)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %54, %39
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, 1
  %45 = call i32 @ReadByteFromHwPort(i64 %44)
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %51 = icmp ult i32 %49, %50
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i1 [ false, %42 ], [ %51, %48 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %42

57:                                               ; preds = %52
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @WriteByteToHwPort(i64 %58, i32 0)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %72, %57
  %61 = load i64, i64* %2, align 8
  %62 = add i64 %61, 1
  %63 = call i32 @ReadByteFromHwPort(i64 %62)
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %69 = icmp ult i32 %67, %68
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi i1 [ false, %60 ], [ %69, %66 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %60

75:                                               ; preds = %70
  ret void
}

declare dso_local i32 @WriteByteToHwPort(i64, i32) #1

declare dso_local i32 @ReadByteFromHwPort(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
