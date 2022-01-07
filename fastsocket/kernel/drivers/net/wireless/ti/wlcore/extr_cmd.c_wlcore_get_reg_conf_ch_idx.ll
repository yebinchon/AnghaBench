; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_get_reg_conf_ch_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_get_reg_conf_ch_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"get reg conf ch idx - unknown band: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @wlcore_get_reg_conf_ch_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_get_reg_conf_ch_idx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %70 [
    i32 128, label %7
    i32 129, label %59
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 8
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 16
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 8
  %16 = sdiv i32 %15, 4
  %17 = add nsw i32 %16, 18
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %10, %7
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 34
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 34
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %27, 3
  %29 = add nsw i32 %28, 18
  store i32 %29, i32* %5, align 4
  br label %57

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 100
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 140
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 100
  %39 = sdiv i32 %38, 4
  %40 = add nsw i32 %39, 15
  %41 = add nsw i32 %40, 18
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %43, 149
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 165
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 149
  %51 = sdiv i32 %50, 4
  %52 = add nsw i32 %51, 26
  %53 = add nsw i32 %52, 18
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %45, %42
  store i32 -1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %24
  br label %58

58:                                               ; preds = %57, %13
  br label %73

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %63, 14
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %62, %59
  store i32 -1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %73

70:                                               ; preds = %2
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %69, %58
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @wl1271_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
