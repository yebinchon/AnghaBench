; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_polarity_reversal_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_polarity_reversal_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@PHY_FORCE_TIME = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_polarity_reversal_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %9 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %7, i32 %8, i32 25)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %141

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %17 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %15, i32 %16, i32 65535)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %141

22:                                               ; preds = %14
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %25 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %23, i32 %24, i32 0)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %141

30:                                               ; preds = %22
  %31 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %60, %30
  %33 = load i64, i64* %6, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = load i32, i32* @PHY_STATUS, align 4
  %38 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %36, i32 %37, i64* %5)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %141

43:                                               ; preds = %35
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = load i32, i32* @PHY_STATUS, align 4
  %46 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %44, i32 %45, i64* %5)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %141

51:                                               ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %63

58:                                               ; preds = %51
  %59 = call i32 @msleep(i32 100)
  br label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %6, align 8
  br label %32

63:                                               ; preds = %57, %32
  %64 = call i32 @msleep(i32 1000)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %67 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %65, i32 %66, i32 25)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* %4, align 8
  store i64 %71, i64* %2, align 8
  br label %141

72:                                               ; preds = %63
  %73 = call i32 @msleep(i32 50)
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %76 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %74, i32 %75, i32 65520)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %2, align 8
  br label %141

81:                                               ; preds = %72
  %82 = call i32 @msleep(i32 50)
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %85 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %83, i32 %84, i32 65280)
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* %4, align 8
  store i64 %89, i64* %2, align 8
  br label %141

90:                                               ; preds = %81
  %91 = call i32 @msleep(i32 50)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %94 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %92, i32 %93, i32 0)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i64, i64* %4, align 8
  store i64 %98, i64* %2, align 8
  br label %141

99:                                               ; preds = %90
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %102 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %100, i32 %101, i32 0)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i64, i64* %4, align 8
  store i64 %106, i64* %2, align 8
  br label %141

107:                                              ; preds = %99
  %108 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %136, %107
  %110 = load i64, i64* %6, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %114 = load i32, i32* @PHY_STATUS, align 4
  %115 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %113, i32 %114, i64* %5)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i64, i64* %4, align 8
  store i64 %119, i64* %2, align 8
  br label %141

120:                                              ; preds = %112
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = load i32, i32* @PHY_STATUS, align 4
  %123 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %121, i32 %122, i64* %5)
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i64, i64* %4, align 8
  store i64 %127, i64* %2, align 8
  br label %141

128:                                              ; preds = %120
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %139

134:                                              ; preds = %128
  %135 = call i32 @msleep(i32 100)
  br label %136

136:                                              ; preds = %134
  %137 = load i64, i64* %6, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %6, align 8
  br label %109

139:                                              ; preds = %133, %109
  %140 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %140, i64* %2, align 8
  br label %141

141:                                              ; preds = %139, %126, %118, %105, %97, %88, %79, %70, %49, %41, %28, %20, %12
  %142 = load i64, i64* %2, align 8
  ret i64 %142
}

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
