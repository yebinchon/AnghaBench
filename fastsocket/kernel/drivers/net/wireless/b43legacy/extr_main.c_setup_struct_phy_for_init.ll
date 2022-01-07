; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_setup_struct_phy_for_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_setup_struct_phy_for_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, %struct.b43legacy_lopair*, %struct.b43legacy_lopair*, %struct.b43legacy_lopair* }
%struct.b43legacy_lopair = type { i32 }

@B43legacy_LO_COUNT = common dso_local global i32 0, align 4
@B43legacy_INTERFMODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, %struct.b43legacy_phy*)* @setup_struct_phy_for_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_struct_phy_for_init(%struct.b43legacy_wldev* %0, %struct.b43legacy_phy* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_phy*, align 8
  %5 = alloca %struct.b43legacy_lopair*, align 8
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store %struct.b43legacy_phy* %1, %struct.b43legacy_phy** %4, align 8
  %7 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %8 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %7, i32 0, i32 19
  %9 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %8, align 8
  %10 = call i32 @memset(%struct.b43legacy_lopair* %9, i32 255, i32 8)
  %11 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %12 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %11, i32 0, i32 18
  %13 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %12, align 8
  %14 = call i32 @memset(%struct.b43legacy_lopair* %13, i32 0, i32 8)
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %18 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %17, i32 0, i32 0
  store i32 65535, i32* %18, align 8
  %19 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %20 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %22 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %24 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %26 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %25, i32 0, i32 17
  %27 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %26, align 8
  store %struct.b43legacy_lopair* %27, %struct.b43legacy_lopair** %5, align 8
  %28 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %5, align 8
  %29 = icmp ne %struct.b43legacy_lopair* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %5, align 8
  %32 = load i32, i32* @B43legacy_LO_COUNT, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.b43legacy_lopair* %31, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %39 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %38, i32 0, i32 16
  store i64 0, i64* %39, align 8
  %40 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %41 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %40, i32 0, i32 15
  store i64 0, i64* %41, align 8
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %43 = call i32 @b43legacy_default_baseband_attenuation(%struct.b43legacy_wldev* %42)
  %44 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %45 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %44, i32 0, i32 14
  store i32 %43, i32* %45, align 8
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %47 = call i32 @b43legacy_default_radio_attenuation(%struct.b43legacy_wldev* %46)
  %48 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %49 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %51 = call i32 @b43legacy_default_txctl1(%struct.b43legacy_wldev* %50)
  %52 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %53 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  %54 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %55 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %54, i32 0, i32 11
  store i64 0, i64* %55, align 8
  %56 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %57 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %72, %37
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %61 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %67 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 -1000, i32* %71, align 4
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %58

75:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %79 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %86 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %96 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %95, i32 0, i32 6
  store i32 65535, i32* %96, align 8
  %97 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %98 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %97, i32 0, i32 7
  store i32 65535, i32* %98, align 4
  %99 = load i32, i32* @B43legacy_INTERFMODE_NONE, align 4
  %100 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %101 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %103 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %102, i32 0, i32 8
  store i32 255, i32* %103, align 8
  ret void
}

declare dso_local i32 @memset(%struct.b43legacy_lopair*, i32, i32) #1

declare dso_local i32 @b43legacy_default_baseband_attenuation(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_default_radio_attenuation(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_default_txctl1(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
