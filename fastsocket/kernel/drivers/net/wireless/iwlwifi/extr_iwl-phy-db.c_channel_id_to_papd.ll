; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_channel_id_to_papd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_channel_id_to_papd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @channel_id_to_papd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_id_to_papd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @is_valid_channel(i32 %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 255, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 1, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 14
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 36, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %23, 64
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %34

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 100, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %30, 140
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* %2, align 4
  br label %34

33:                                               ; preds = %29, %26
  store i32 3, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %25, %18, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_valid_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
