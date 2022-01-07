; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_chspec_malformed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_chspec_malformed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @brcms_c_chspec_malformed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_chspec_malformed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @CHSPEC_IS5G(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CHSPEC_IS2G(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %42

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @CHSPEC_IS40(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @CHSPEC_IS20(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %42

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @CHSPEC_IS20(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CHSPEC_SB_NONE(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %42

30:                                               ; preds = %25
  br label %41

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @CHSPEC_SB_UPPER(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @CHSPEC_SB_LOWER(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %42

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40, %30
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %29, %20, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @CHSPEC_IS40(i32) #1

declare dso_local i64 @CHSPEC_IS20(i32) #1

declare dso_local i32 @CHSPEC_SB_NONE(i32) #1

declare dso_local i32 @CHSPEC_SB_UPPER(i32) #1

declare dso_local i32 @CHSPEC_SB_LOWER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
