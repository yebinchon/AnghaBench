; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_phy_has_link_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_phy_has_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %18 = load i32, i32* @MII_BMSR, align 4
  %19 = call i64 @e1e_rphy(%struct.e1000_hw* %17, i32 %18, i64* %11)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @udelay(i64 %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i64 @e1e_rphy(%struct.e1000_hw* %26, i32 %27, i64* %11)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %52

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @BMSR_LSTATUS, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %52

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = icmp sge i64 %39, 1000
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = sdiv i64 %42, 1000
  %44 = call i32 @mdelay(i64 %43)
  br label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @udelay(i64 %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %12

52:                                               ; preds = %37, %31, %12
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i64, i64* %9, align 8
  ret i64 %58
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @mdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
