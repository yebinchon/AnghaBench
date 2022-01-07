; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_check_esc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_check_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@PLUSWAIT1 = common dso_local global i64 0, align 8
@PLUSWAIT2 = common dso_local global i64 0, align 8
@ISDN_TIMER_MODEMPLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i64*)* @isdn_tty_check_esc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_tty_check_esc(i32* %0, i32 %1, i32 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %85

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 3
  %20 = load i32*, i32** %6, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %6, align 8
  store i32 3, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %14
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %29, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PLUSWAIT1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @time_after(i64 %40, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32*, i32** %9, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %39
  br label %61

50:                                               ; preds = %34
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PLUSWAIT2, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @time_before(i64 %51, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %50
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @ISDN_TIMER_MODEMPLUS, align 4
  %70 = call i32 @isdn_timer_ctrl(i32 %69, i32 1)
  br label %71

71:                                               ; preds = %68, %65, %61
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 3
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %71
  br label %80

78:                                               ; preds = %28
  %79 = load i32*, i32** %9, align 8
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64*, i64** %10, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  br label %25

85:                                               ; preds = %13, %25
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @isdn_timer_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
