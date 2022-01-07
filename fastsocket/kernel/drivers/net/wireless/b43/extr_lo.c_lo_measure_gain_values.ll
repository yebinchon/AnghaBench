; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_lo_measure_gain_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_lo_measure_gain_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32)* @lo_measure_gain_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_measure_gain_values(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.b43_phy_g*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  store %struct.b43_phy* %12, %struct.b43_phy** %7, align 8
  %13 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 0
  %15 = load %struct.b43_phy_g*, %struct.b43_phy_g** %14, align 8
  store %struct.b43_phy_g* %15, %struct.b43_phy_g** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %21 = call i64 @has_loopback_gain(%struct.b43_phy* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %28 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %26
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 9
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %46 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %49 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 8
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @clamp_val(i32 %53, i32 0, i32 45)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sdiv i32 %55, 3
  %57 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %58 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %60 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 5
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %65 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 5
  store i32 %67, i32* %65, align 4
  %68 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %69 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %68, i32 0, i32 3
  store i32 2, i32* %69, align 4
  br label %73

70:                                               ; preds = %52
  %71 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %72 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %63
  br label %110

74:                                               ; preds = %19
  %75 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %76 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %78 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %77, i32 0, i32 0
  store i32 32, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 20
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %83 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %85 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %84, i32 0, i32 2
  store i32 2, i32* %85, align 4
  br label %109

86:                                               ; preds = %74
  %87 = load i32, i32* %5, align 4
  %88 = icmp sge i32 %87, 18
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %91 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %93 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %92, i32 0, i32 2
  store i32 1, i32* %93, align 4
  br label %108

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = icmp sge i32 %95, 15
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %99 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %101 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %100, i32 0, i32 2
  store i32 0, i32* %101, align 4
  br label %107

102:                                              ; preds = %94
  %103 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %104 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %106 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %105, i32 0, i32 2
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %73
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %112 = call i32 @b43_radio_read16(%struct.b43_wldev* %111, i32 122)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %114 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, -9
  store i32 %119, i32* %9, align 4
  br label %123

120:                                              ; preds = %110
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, 8
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @b43_radio_write16(%struct.b43_wldev* %124, i32 122, i32 %125)
  ret void
}

declare dso_local i64 @has_loopback_gain(%struct.b43_phy*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
