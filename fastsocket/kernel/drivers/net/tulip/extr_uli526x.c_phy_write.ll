; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_phy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_ULI5263_ID = common dso_local global i64 0, align 8
@DCR9 = common dso_local global i64 0, align 8
@PHY_DATA_1 = common dso_local global i32 0, align 4
@PHY_DATA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32, i64)* @phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_write(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @PCI_ULI5263_ID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @phy_writeby_cr10(i64 %17, i32 %18, i32 %19, i32 %20)
  br label %124

22:                                               ; preds = %5
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @DCR9, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %34, %22
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 35
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* @PHY_DATA_1, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @phy_write_1bit(i64 %30, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %26

37:                                               ; preds = %26
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @PHY_DATA_0, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @phy_write_1bit(i64 %38, i32 %39, i64 %40)
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* @PHY_DATA_1, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @phy_write_1bit(i64 %42, i32 %43, i64 %44)
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* @PHY_DATA_0, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @phy_write_1bit(i64 %46, i32 %47, i64 %48)
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @PHY_DATA_1, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @phy_write_1bit(i64 %50, i32 %51, i64 %52)
  store i32 16, i32* %11, align 4
  br label %54

54:                                               ; preds = %71, %37
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @PHY_DATA_1, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @PHY_DATA_0, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @phy_write_1bit(i64 %58, i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %54

74:                                               ; preds = %54
  store i32 16, i32* %11, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @PHY_DATA_1, align 4
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @PHY_DATA_0, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @phy_write_1bit(i64 %79, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load i64, i64* %12, align 8
  %97 = load i32, i32* @PHY_DATA_1, align 4
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @phy_write_1bit(i64 %96, i32 %97, i64 %98)
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* @PHY_DATA_0, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @phy_write_1bit(i64 %100, i32 %101, i64 %102)
  store i32 32768, i32* %11, align 4
  br label %104

104:                                              ; preds = %121, %95
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @PHY_DATA_1, align 4
  br label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @PHY_DATA_0, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @phy_write_1bit(i64 %108, i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = ashr i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %104

124:                                              ; preds = %16, %104
  ret void
}

declare dso_local i32 @phy_writeby_cr10(i64, i32, i32, i32) #1

declare dso_local i32 @phy_write_1bit(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
