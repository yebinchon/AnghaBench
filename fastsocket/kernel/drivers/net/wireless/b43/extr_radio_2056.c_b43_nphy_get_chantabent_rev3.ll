; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b43_nphy_get_chantabent_rev3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b43_nphy_get_chantabent_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_nphy_channeltab_entry_rev3 = type { i64 }
%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@b43_nphy_channeltab_rev3 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_rev4 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_rev5 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_rev6 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_rev7_9 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_rev8 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.b43_nphy_channeltab_entry_rev3* @b43_nphy_get_chantabent_rev3(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 3, label %13
    i32 4, label %17
    i32 5, label %21
    i32 6, label %25
    i32 7, label %29
    i32 9, label %29
    i32 8, label %33
  ]

13:                                               ; preds = %2
  %14 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev3, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %14, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %15 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev3, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %15)
  store i32 %16, i32* %7, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev4, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %18, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %19 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev4, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %19)
  store i32 %20, i32* %7, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev5, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %22, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %23 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev5, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %23)
  store i32 %24, i32* %7, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev6, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %26, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %27 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev6, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %27)
  store i32 %28, i32* %7, align 4
  br label %39

29:                                               ; preds = %2, %2
  %30 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev7_9, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %30, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %31 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev7_9, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %31)
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev8, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %34, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %35 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_rev8, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %35)
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %2
  %38 = call i32 @B43_WARN_ON(i32 1)
  store %struct.b43_nphy_channeltab_entry_rev3* null, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  br label %59

39:                                               ; preds = %33, %29, %25, %21, %17, %13
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %46 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev3, %struct.b43_nphy_channeltab_entry_rev3* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %51, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  br label %59

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  %57 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev3, %struct.b43_nphy_channeltab_entry_rev3* %56, i32 1
  store %struct.b43_nphy_channeltab_entry_rev3* %57, %struct.b43_nphy_channeltab_entry_rev3** %6, align 8
  br label %40

58:                                               ; preds = %40
  store %struct.b43_nphy_channeltab_entry_rev3* null, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  br label %59

59:                                               ; preds = %58, %50, %37
  %60 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  ret %struct.b43_nphy_channeltab_entry_rev3* %60
}

declare dso_local i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
