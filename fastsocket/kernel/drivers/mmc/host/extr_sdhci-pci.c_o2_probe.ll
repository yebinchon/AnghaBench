; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_o2_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_o2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@O2_SD_LOCK_WP = common dso_local global i32 0, align 4
@O2_SD_MULTI_VCC3V = common dso_local global i32 0, align 4
@O2_SD_CLKREQ = common dso_local global i32 0, align 4
@O2_SD_CAPS = common dso_local global i32 0, align 4
@O2_SD_ADMA1 = common dso_local global i32 0, align 4
@O2_SD_ADMA2 = common dso_local global i32 0, align 4
@O2_SD_INF_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_chip*)* @o2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2_probe(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %3, align 8
  %6 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %122 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %13 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %16 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %14, i32 %15, i32* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %123

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 127
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %26, i32 %27, i32 %28)
  %30 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %31 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @O2_SD_MULTI_VCC3V, align 4
  %34 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %32, i32 %33, i32 8)
  %35 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @O2_SD_CLKREQ, align 4
  %39 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %37, i32 %38, i32* %5)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %123

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, 32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* @O2_SD_CLKREQ, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %49, i32 %50, i32 %51)
  %53 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %54 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* @O2_SD_CAPS, align 4
  %57 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %55, i32 %56, i32* %5)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %123

62:                                               ; preds = %44
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %66 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* @O2_SD_CAPS, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %67, i32 %68, i32 %69)
  %71 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %72 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* @O2_SD_CAPS, align 4
  %75 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %73, i32 %74, i32 115)
  %76 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %77 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* @O2_SD_ADMA1, align 4
  %80 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %78, i32 %79, i32 57)
  %81 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %82 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* @O2_SD_ADMA2, align 4
  %85 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %83, i32 %84, i32 8)
  %86 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %87 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* @O2_SD_INF_MOD, align 4
  %90 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %88, i32 %89, i32* %5)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %62
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %123

95:                                               ; preds = %62
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, 8
  store i32 %97, i32* %5, align 4
  %98 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %99 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* @O2_SD_INF_MOD, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %100, i32 %101, i32 %102)
  %104 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %105 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %108 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %106, i32 %107, i32* %5)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %95
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %123

113:                                              ; preds = %95
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, 128
  store i32 %115, i32* %5, align 4
  %116 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %117 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @pci_write_config_byte(%struct.TYPE_3__* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %1
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %111, %93, %60, %42, %19
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
