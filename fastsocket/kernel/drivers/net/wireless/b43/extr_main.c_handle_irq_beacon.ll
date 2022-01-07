; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_handle_irq_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_handle_irq_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_wl* }
%struct.b43_wl = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@B43_IRQ_BEACON = common dso_local global i32 0, align 4
@B43_MMIO_MACCMD = common dso_local global i32 0, align 4
@B43_MACCMD_BEACON0_VALID = common dso_local global i32 0, align 4
@B43_MACCMD_BEACON1_VALID = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @handle_irq_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_irq_beacon(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  %9 = load %struct.b43_wl*, %struct.b43_wl** %8, align 8
  store %struct.b43_wl* %9, %struct.b43_wl** %3, align 8
  %10 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %11 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %12 = call i32 @b43_is_mode(%struct.b43_wl* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %16 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %17 = call i32 @b43_is_mode(%struct.b43_wl* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %21 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %22 = call i32 @b43_is_mode(%struct.b43_wl* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %113

25:                                               ; preds = %19, %14, %1
  %26 = load i32, i32* @B43_IRQ_BEACON, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %34 = call i32 @b43_read32(%struct.b43_wldev* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @B43_MACCMD_BEACON0_VALID, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @B43_MACCMD_BEACON1_VALID, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %49 = load i32, i32* @B43_IRQ_BEACON, align 4
  %50 = call i32 @b43_write32(%struct.b43_wldev* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @B43_IRQ_BEACON, align 4
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %113

56:                                               ; preds = %43, %25
  %57 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %58 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %64 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @b43_upload_beacon0(%struct.b43_wldev* %65)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = call i32 @b43_upload_beacon1(%struct.b43_wldev* %67)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %71 = call i32 @b43_read32(%struct.b43_wldev* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @B43_MACCMD_BEACON0_VALID, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @b43_write32(%struct.b43_wldev* %75, i32 %76, i32 %77)
  br label %113

79:                                               ; preds = %56
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %79
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @b43_upload_beacon0(%struct.b43_wldev* %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %87 = call i32 @b43_read32(%struct.b43_wldev* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @B43_MACCMD_BEACON0_VALID, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @b43_write32(%struct.b43_wldev* %91, i32 %92, i32 %93)
  br label %112

95:                                               ; preds = %79
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %95
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = call i32 @b43_upload_beacon1(%struct.b43_wldev* %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %103 = call i32 @b43_read32(%struct.b43_wldev* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @B43_MACCMD_BEACON1_VALID, align 4
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* @B43_MMIO_MACCMD, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @b43_write32(%struct.b43_wldev* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %98, %95
  br label %112

112:                                              ; preds = %111, %82
  br label %113

113:                                              ; preds = %24, %46, %112, %62
  ret void
}

declare dso_local i32 @b43_is_mode(%struct.b43_wl*, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43_upload_beacon0(%struct.b43_wldev*) #1

declare dso_local i32 @b43_upload_beacon1(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
