; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_find_lopair.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_find_lopair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_lopair = type { i32 }
%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32 }

@b43legacy_find_lopair.dict = internal constant [10 x i32] [i32 11, i32 10, i32 11, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13, i32 12], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43legacy_lopair* (%struct.b43legacy_wldev*, i32, i32, i32)* @b43legacy_find_lopair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43legacy_lopair* @b43legacy_find_lopair(%struct.b43legacy_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_lopair*, align 8
  %6 = alloca %struct.b43legacy_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  store %struct.b43legacy_phy* %12, %struct.b43legacy_phy** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 6, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 10
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43legacy_WARN_ON(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %24, i32 %25, i32 %26)
  store %struct.b43legacy_lopair* %27, %struct.b43legacy_lopair** %5, align 8
  br label %36

28:                                               ; preds = %16
  %29 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* @b43legacy_find_lopair.dict, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy* %29, i32 %33, i32 %34)
  store %struct.b43legacy_lopair* %35, %struct.b43legacy_lopair** %5, align 8
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %5, align 8
  ret %struct.b43legacy_lopair* %37
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local %struct.b43legacy_lopair* @b43legacy_get_lopair(%struct.b43legacy_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
