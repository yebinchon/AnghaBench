; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_channel_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@B43_MMIO_CHANNEL = common dso_local global i32 0, align 4
@SSB_SPROM1CCODE_JAPAN = common dso_local global i64 0, align 8
@B43_HF_ACPR = common dso_local global i32 0, align 4
@B43_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_gphy_channel_switch(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @b43_synth_pu_workaround(%struct.b43_wldev* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %15 = load i32, i32* @B43_MMIO_CHANNEL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @channel2freq_bg(i32 %16)
  %18 = call i32 @b43_write16(%struct.b43_wldev* %14, i32 %15, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 14
  br i1 %20, label %21, label %54

21:                                               ; preds = %13
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSB_SPROM1CCODE_JAPAN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %34 = call i32 @b43_hf_read(%struct.b43_wldev* %33)
  %35 = load i32, i32* @B43_HF_ACPR, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @b43_hf_write(%struct.b43_wldev* %32, i32 %37)
  br label %46

39:                                               ; preds = %21
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %42 = call i32 @b43_hf_read(%struct.b43_wldev* %41)
  %43 = load i32, i32* @B43_HF_ACPR, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @b43_hf_write(%struct.b43_wldev* %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %31
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %48 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %50 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %51 = call i32 @b43_read16(%struct.b43_wldev* %49, i32 %50)
  %52 = or i32 %51, 2048
  %53 = call i32 @b43_write16(%struct.b43_wldev* %47, i32 %48, i32 %52)
  br label %62

54:                                               ; preds = %13
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %56 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %58 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %59 = call i32 @b43_read16(%struct.b43_wldev* %57, i32 %58)
  %60 = and i32 %59, 63423
  %61 = call i32 @b43_write16(%struct.b43_wldev* %55, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  ret void
}

declare dso_local i32 @b43_synth_pu_workaround(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @channel2freq_bg(i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
