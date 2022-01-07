; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }

@SDHCI_POWER_180 = common dso_local global i32 0, align 4
@SDHCI_POWER_300 = common dso_local global i32 0, align 4
@SDHCI_POWER_330 = common dso_local global i32 0, align 4
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_SINGLE_POWER_WRITE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER = common dso_local global i32 0, align 4
@SDHCI_POWER_ON = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DELAY_AFTER_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i16)* @sdhci_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_power(%struct.sdhci_host* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp eq i32 %7, 65535
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 1, %12
  switch i32 %13, label %20 [
    i32 132, label %14
    i32 131, label %16
    i32 130, label %16
    i32 129, label %18
    i32 128, label %18
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @SDHCI_POWER_180, align 4
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %10, %10
  %17 = load i32, i32* @SDHCI_POWER_300, align 4
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %10, %10
  %19 = load i32, i32* @SDHCI_POWER_330, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %10
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  br label %23

23:                                               ; preds = %22, %9
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %79

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %39 = call i32 @sdhci_writeb(%struct.sdhci_host* %37, i32 0, i32 %38)
  br label %79

40:                                               ; preds = %30
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SDHCI_QUIRK_SINGLE_POWER_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %49 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %50 = call i32 @sdhci_writeb(%struct.sdhci_host* %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %62 = call i32 @sdhci_writeb(%struct.sdhci_host* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32, i32* @SDHCI_POWER_ON, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %70 = call i32 @sdhci_writeb(%struct.sdhci_host* %67, i32 %68, i32 %69)
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %72 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SDHCI_QUIRK_DELAY_AFTER_POWER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = call i32 @mdelay(i32 10)
  br label %79

79:                                               ; preds = %29, %36, %77, %63
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
