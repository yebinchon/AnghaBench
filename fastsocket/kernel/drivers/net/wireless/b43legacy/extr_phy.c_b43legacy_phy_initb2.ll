; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_initb2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_initb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32 }

@B43legacy_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_initb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_initb2(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 0
  store %struct.b43legacy_phy* %7, %struct.b43legacy_phy** %3, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %8, i32 1004, i32 16162)
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %10, i32 32, i32 12316)
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %12, i32 38, i32 0)
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %14, i32 48, i32 198)
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %16, i32 136, i32 15872)
  store i32 15421, i32* %5, align 4
  store i32 137, i32* %4, align 4
  br label %18

18:                                               ; preds = %28, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 167
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 514
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %32, i32 996, i32 12288)
  %34 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %35 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %36 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %34, i32 %37, i32 0)
  %39 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %40 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 8272
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %44, i32 117, i32 128)
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %47 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %46, i32 121, i32 129)
  br label %48

48:                                               ; preds = %43, %31
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %50 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %49, i32 80, i32 32)
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %51, i32 80, i32 35)
  %53 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %54 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 8272
  br i1 %56, label %57, label %72

57:                                               ; preds = %48
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %59 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %58, i32 80, i32 32)
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %61 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %60, i32 90, i32 112)
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %63 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %62, i32 91, i32 123)
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %65 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %64, i32 92, i32 176)
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %67 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %66, i32 122, i32 15)
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %68, i32 56, i32 1655)
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %71 = call i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev* %70)
  br label %72

72:                                               ; preds = %57, %48
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %73, i32 20, i32 128)
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %75, i32 50, i32 202)
  %77 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %78 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %77, i32 50, i32 204)
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %79, i32 53, i32 1986)
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = call i32 @b43legacy_phy_lo_b_measure(%struct.b43legacy_wldev* %81)
  %83 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %84 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %83, i32 38, i32 52224)
  %85 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %86 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 8272
  br i1 %88, label %89, label %92

89:                                               ; preds = %72
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %91 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %90, i32 38, i32 52736)
  br label %92

92:                                               ; preds = %89, %72
  %93 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %94 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %95 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %93, i32 %94, i32 4096)
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %97 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %96, i32 42, i32 34979)
  %98 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %99 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 8272
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %104 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %103, i32 42, i32 35010)
  br label %105

105:                                              ; preds = %102, %92
  %106 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %107 = call i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %106, i32 65535, i32 65535, i32 65535)
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %109 = call i32 @b43legacy_phy_init_pctl(%struct.b43legacy_wldev* %108)
  ret void
}

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_lo_b_measure(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_phy_init_pctl(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
