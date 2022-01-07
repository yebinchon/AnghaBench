; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc91c92_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc91c92_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.smc_private = type { i64, i64 }

@MANFID_MEGAHERTZ = common dso_local global i64 0, align 8
@PRODID_MEGAHERTZ_EM3288 = common dso_local global i64 0, align 8
@MANFID_MOTOROLA = common dso_local global i64 0, align 8
@MANFID_OSITECH = common dso_local global i64 0, align 8
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@OSITECH_AUI_PWR = common dso_local global i32 0, align 4
@OSITECH_RESET_ISR = common dso_local global i32 0, align 4
@MANFID_PSION = common dso_local global i64 0, align 8
@PRODID_PSION_NET100 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"smc91c92_cs: Failed to load firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @smc91c92_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc91c92_resume(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_private*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.smc_private* @netdev_priv(%struct.net_device* %10)
  store %struct.smc_private* %11, %struct.smc_private** %5, align 8
  %12 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %13 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MANFID_MEGAHERTZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %19 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PRODID_MEGAHERTZ_EM3288, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = call i32 @mhz_3288_power(%struct.pcmcia_device* %24)
  br label %26

26:                                               ; preds = %23, %17, %1
  %27 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %28 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MANFID_MOTOROLA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = call i32 @mot_config(%struct.pcmcia_device* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %37 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MANFID_OSITECH, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %43 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 16
  %52 = load i32, i32* @OSITECH_AUI_PWR, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @set_bits(i32 768, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 16
  %59 = load i32, i32* @OSITECH_RESET_ISR, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @set_bits(i32 768, i32 %60)
  br label %62

62:                                               ; preds = %47, %41, %35
  %63 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %64 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MANFID_OSITECH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %70 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %76 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MANFID_PSION, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %82 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PRODID_PSION_NET100, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80, %68
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %88 = call i32 @osi_load_firmware(%struct.pcmcia_device* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %106

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %80, %74
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i32 @smc_reset(%struct.net_device* %101)
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = call i32 @netif_device_attach(%struct.net_device* %103)
  br label %105

105:                                              ; preds = %100, %95
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mhz_3288_power(%struct.pcmcia_device*) #1

declare dso_local i32 @mot_config(%struct.pcmcia_device*) #1

declare dso_local i32 @set_bits(i32, i32) #1

declare dso_local i32 @osi_load_firmware(%struct.pcmcia_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smc_reset(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
