; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_afe_unk1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_afe_unk1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.b43_wldev = type { i32 }

@b43_phy_ht_afe_unk1.ctl_regs = internal constant [3 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 132, i32 133 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 130, i32 131 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 128, i32 129 }, %struct.TYPE_4__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_ht_afe_unk1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_afe_unk1(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %54, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %57

7:                                                ; preds = %4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x [2 x %struct.TYPE_4__]], [3 x [2 x %struct.TYPE_4__]]* @b43_phy_ht_afe_unk1.ctl_regs, i64 0, i64 %10
  %12 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %11, i64 0, i64 1
  %13 = bitcast %struct.TYPE_4__* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @b43_phy_set(%struct.b43_wldev* %8, i64 %14, i32 4)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x [2 x %struct.TYPE_4__]], [3 x [2 x %struct.TYPE_4__]]* @b43_phy_ht_afe_unk1.ctl_regs, i64 0, i64 %18
  %20 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %19, i64 0, i64 0
  %21 = bitcast %struct.TYPE_4__* %20 to i64*
  %22 = load i64, i64* %21, align 16
  %23 = call i32 @b43_phy_set(%struct.b43_wldev* %16, i64 %22, i32 4)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x [2 x %struct.TYPE_4__]], [3 x [2 x %struct.TYPE_4__]]* @b43_phy_ht_afe_unk1.ctl_regs, i64 0, i64 %26
  %28 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %27, i64 0, i64 1
  %29 = bitcast %struct.TYPE_4__* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @b43_phy_mask(%struct.b43_wldev* %24, i64 %30, i32 -2)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [2 x %struct.TYPE_4__]], [3 x [2 x %struct.TYPE_4__]]* @b43_phy_ht_afe_unk1.ctl_regs, i64 0, i64 %34
  %36 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %35, i64 0, i64 0
  %37 = bitcast %struct.TYPE_4__* %36 to i64*
  %38 = load i64, i64* %37, align 16
  %39 = call i32 @b43_phy_set(%struct.b43_wldev* %32, i64 %38, i32 1)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 %41, 16
  %43 = add nsw i32 5, %42
  %44 = call i32 @B43_HTTAB16(i32 8, i32 %43)
  %45 = call i32 @b43_httab_write(%struct.b43_wldev* %40, i32 %44, i32 0)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x [2 x %struct.TYPE_4__]], [3 x [2 x %struct.TYPE_4__]]* @b43_phy_ht_afe_unk1.ctl_regs, i64 0, i64 %48
  %50 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %49, i64 0, i64 0
  %51 = bitcast %struct.TYPE_4__* %50 to i64*
  %52 = load i64, i64* %51, align 16
  %53 = call i32 @b43_phy_mask(%struct.b43_wldev* %46, i64 %52, i32 -5)
  br label %54

54:                                               ; preds = %7
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %4

57:                                               ; preds = %4
  ret void
}

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i64, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i64, i32) #1

declare dso_local i32 @b43_httab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_HTTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
