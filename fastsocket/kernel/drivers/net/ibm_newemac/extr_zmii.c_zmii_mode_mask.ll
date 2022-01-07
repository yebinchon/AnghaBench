; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_zmii.c_zmii_mode_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_zmii.c_zmii_mode_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @zmii_mode_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zmii_mode_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %16 [
    i32 130, label %7
    i32 129, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ZMII_FER_MII(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ZMII_FER_RMII(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ZMII_FER_SMII(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %13, %10, %7
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @ZMII_FER_MII(i32) #1

declare dso_local i32 @ZMII_FER_RMII(i32) #1

declare dso_local i32 @ZMII_FER_SMII(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
