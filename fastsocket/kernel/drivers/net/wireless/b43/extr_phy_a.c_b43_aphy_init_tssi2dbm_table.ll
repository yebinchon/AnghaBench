; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_init_tssi2dbm_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_aphy_init_tssi2dbm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.b43_phy = type { %struct.b43_phy_a* }
%struct.b43_phy_a = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Could not generate tssi2dBm table (wrong SPROM info)!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_aphy_init_tssi2dbm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_aphy_init_tssi2dbm_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_a*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 2
  store %struct.b43_phy* %10, %struct.b43_phy** %4, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 0
  %13 = load %struct.b43_phy_a*, %struct.b43_phy_a** %12, align 8
  store %struct.b43_phy_a* %13, %struct.b43_phy_a** %5, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %103

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %103

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %103

55:                                               ; preds = %52
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %55
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %66 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, -1
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.b43_phy_a*, %struct.b43_phy_a** %5, align 8
  %83 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %87

84:                                               ; preds = %64, %55
  %85 = load %struct.b43_phy_a*, %struct.b43_phy_a** %5, align 8
  %86 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %85, i32 0, i32 0
  store i32 62, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %73
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32* @b43_generate_dyn_tssi2dbm_tab(%struct.b43_wldev* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.b43_phy_a*, %struct.b43_phy_a** %5, align 8
  %94 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.b43_phy_a*, %struct.b43_phy_a** %5, align 8
  %96 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %87
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %113

102:                                              ; preds = %87
  br label %112

103:                                              ; preds = %52, %49, %46, %43, %40, %1
  %104 = load %struct.b43_phy_a*, %struct.b43_phy_a** %5, align 8
  %105 = getelementptr inbounds %struct.b43_phy_a, %struct.b43_phy_a* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %107 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @b43err(i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %103, %99
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32* @b43_generate_dyn_tssi2dbm_tab(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
