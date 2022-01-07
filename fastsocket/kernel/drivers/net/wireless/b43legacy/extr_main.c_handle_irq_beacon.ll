; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_handle_irq_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_handle_irq_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.b43legacy_wl* }
%struct.b43legacy_wl = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@B43legacy_IRQ_BEACON = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCMD = common dso_local global i32 0, align 4
@B43legacy_MACCMD_BEACON0_VALID = common dso_local global i32 0, align 4
@B43legacy_MACCMD_BEACON1_VALID = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @handle_irq_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_irq_beacon(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %7, i32 0, i32 1
  %9 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %8, align 8
  store %struct.b43legacy_wl* %9, %struct.b43legacy_wl** %3, align 8
  %10 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %11 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %12 = call i32 @b43legacy_is_mode(%struct.b43legacy_wl* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %103

15:                                               ; preds = %1
  %16 = load i32, i32* @B43legacy_IRQ_BEACON, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %19 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %23 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %24 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @B43legacy_MACCMD_BEACON0_VALID, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @B43legacy_MACCMD_BEACON1_VALID, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %15
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %39 = load i32, i32* @B43legacy_IRQ_BEACON, align 4
  %40 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @B43legacy_IRQ_BEACON, align 4
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %103

46:                                               ; preds = %33, %15
  %47 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %48 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %54 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %56 = call i32 @b43legacy_upload_beacon0(%struct.b43legacy_wldev* %55)
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %58 = call i32 @b43legacy_upload_beacon1(%struct.b43legacy_wldev* %57)
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %61 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @B43legacy_MACCMD_BEACON0_VALID, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %66 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %65, i32 %66, i32 %67)
  br label %103

69:                                               ; preds = %46
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = call i32 @b43legacy_upload_beacon0(%struct.b43legacy_wldev* %73)
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %77 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @B43legacy_MACCMD_BEACON0_VALID, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %81, i32 %82, i32 %83)
  br label %102

85:                                               ; preds = %69
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %90 = call i32 @b43legacy_upload_beacon1(%struct.b43legacy_wldev* %89)
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %93 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @B43legacy_MACCMD_BEACON1_VALID, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %98 = load i32, i32* @B43legacy_MMIO_MACCMD, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %88, %85
  br label %102

102:                                              ; preds = %101, %72
  br label %103

103:                                              ; preds = %14, %36, %102, %52
  ret void
}

declare dso_local i32 @b43legacy_is_mode(%struct.b43legacy_wl*, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43legacy_upload_beacon0(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_upload_beacon1(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
