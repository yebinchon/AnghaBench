; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_phy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_ULI5263_ID = common dso_local global i32 0, align 4
@DCR9 = common dso_local global i64 0, align 8
@PHY_DATA_1 = common dso_local global i32 0, align 4
@PHY_DATA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32)* @phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_read(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PCI_ULI5263_ID, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @phy_readby_cr10(i64 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %114

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @DCR9, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %33, %21
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 35
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* @PHY_DATA_1, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @phy_write_1bit(i64 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* @PHY_DATA_0, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @phy_write_1bit(i64 %37, i32 %38, i32 %39)
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @PHY_DATA_1, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @phy_write_1bit(i64 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @PHY_DATA_1, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @phy_write_1bit(i64 %45, i32 %46, i32 %47)
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* @PHY_DATA_0, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @phy_write_1bit(i64 %49, i32 %50, i32 %51)
  store i32 16, i32* %10, align 4
  br label %53

53:                                               ; preds = %70, %36
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @PHY_DATA_1, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @PHY_DATA_0, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @phy_write_1bit(i64 %57, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %53

73:                                               ; preds = %53
  store i32 16, i32* %10, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @PHY_DATA_1, align 4
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @PHY_DATA_0, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @phy_write_1bit(i64 %78, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @phy_read_1bit(i64 %95, i32 %96)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %109, %94
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 16
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @phy_read_1bit(i64 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %98

112:                                              ; preds = %98
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %16
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @phy_readby_cr10(i64, i32, i32) #1

declare dso_local i32 @phy_write_1bit(i64, i32, i32) #1

declare dso_local i32 @phy_read_1bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
