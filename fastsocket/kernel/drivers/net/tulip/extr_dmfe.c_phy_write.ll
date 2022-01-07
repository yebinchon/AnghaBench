; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_phy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_DM9132_ID = common dso_local global i64 0, align 8
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
  %14 = load i64, i64* @PCI_DM9132_ID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 128
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %18, %21
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @outw(i32 %23, i64 %24)
  br label %119

26:                                               ; preds = %5
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @DCR9, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %37, %26
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 35
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* @PHY_DATA_1, align 4
  %36 = call i32 @phy_write_1bit(i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @PHY_DATA_0, align 4
  %43 = call i32 @phy_write_1bit(i64 %41, i32 %42)
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* @PHY_DATA_1, align 4
  %46 = call i32 @phy_write_1bit(i64 %44, i32 %45)
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* @PHY_DATA_0, align 4
  %49 = call i32 @phy_write_1bit(i64 %47, i32 %48)
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @PHY_DATA_1, align 4
  %52 = call i32 @phy_write_1bit(i64 %50, i32 %51)
  store i32 16, i32* %11, align 4
  br label %53

53:                                               ; preds = %69, %40
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
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
  %68 = call i32 @phy_write_1bit(i64 %57, i32 %67)
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %53

72:                                               ; preds = %53
  store i32 16, i32* %11, align 4
  br label %73

73:                                               ; preds = %89, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @PHY_DATA_1, align 4
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @PHY_DATA_0, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i32 @phy_write_1bit(i64 %77, i32 %87)
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load i64, i64* %12, align 8
  %94 = load i32, i32* @PHY_DATA_1, align 4
  %95 = call i32 @phy_write_1bit(i64 %93, i32 %94)
  %96 = load i64, i64* %12, align 8
  %97 = load i32, i32* @PHY_DATA_0, align 4
  %98 = call i32 @phy_write_1bit(i64 %96, i32 %97)
  store i32 32768, i32* %11, align 4
  br label %99

99:                                               ; preds = %115, %92
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @PHY_DATA_1, align 4
  br label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @PHY_DATA_0, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = call i32 @phy_write_1bit(i64 %103, i32 %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = ashr i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %99

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %16
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @phy_write_1bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
