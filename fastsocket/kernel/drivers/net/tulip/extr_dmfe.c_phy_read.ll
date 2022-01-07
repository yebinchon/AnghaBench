; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_phy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_DM9132_ID = common dso_local global i64 0, align 8
@DCR9 = common dso_local global i64 0, align 8
@PHY_DATA_1 = common dso_local global i32 0, align 4
@PHY_DATA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64)* @phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_read(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @PCI_DM9132_ID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 128
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %17, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @inw(i64 %22)
  store i32 %23, i32* %10, align 4
  br label %107

24:                                               ; preds = %4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @DCR9, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %35, %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 35
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* @PHY_DATA_1, align 4
  %34 = call i32 @phy_write_1bit(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %28

38:                                               ; preds = %28
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @PHY_DATA_0, align 4
  %41 = call i32 @phy_write_1bit(i64 %39, i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @PHY_DATA_1, align 4
  %44 = call i32 @phy_write_1bit(i64 %42, i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @PHY_DATA_1, align 4
  %47 = call i32 @phy_write_1bit(i64 %45, i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* @PHY_DATA_0, align 4
  %50 = call i32 @phy_write_1bit(i64 %48, i32 %49)
  store i32 16, i32* %9, align 4
  br label %51

51:                                               ; preds = %67, %38
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @PHY_DATA_1, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @PHY_DATA_0, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @phy_write_1bit(i64 %55, i32 %65)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %51

70:                                               ; preds = %51
  store i32 16, i32* %9, align 4
  br label %71

71:                                               ; preds = %87, %70
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @PHY_DATA_1, align 4
  br label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @PHY_DATA_0, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = call i32 @phy_write_1bit(i64 %75, i32 %85)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @phy_read_1bit(i64 %91)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %103, %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @phy_read_1bit(i64 %99)
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %93

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %15
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @phy_write_1bit(i64, i32) #1

declare dso_local i32 @phy_read_1bit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
