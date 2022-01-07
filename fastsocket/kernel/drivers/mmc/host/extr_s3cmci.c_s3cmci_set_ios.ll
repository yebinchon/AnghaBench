; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32 }
%struct.s3cmci_host = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@S3C2410_SDICON = common dso_local global i64 0, align 8
@S3C2410_GPE5_SDCLK = common dso_local global i32 0, align 4
@S3C2410_GPE6_SDCMD = common dso_local global i32 0, align 4
@S3C2410_GPE7_SDDAT0 = common dso_local global i32 0, align 4
@S3C2410_GPE8_SDDAT1 = common dso_local global i32 0, align 4
@S3C2410_GPE9_SDDAT2 = common dso_local global i32 0, align 4
@S3C2410_GPE10_SDDAT3 = common dso_local global i32 0, align 4
@S3C2410_SDICON_FIFORESET = common dso_local global i32 0, align 4
@S3C2440_SDICON_SDRESET = common dso_local global i32 0, align 4
@S3C2410_SDICON_CLOCKTYPE = common dso_local global i32 0, align 4
@dbg_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"running at %lukHz (requested: %ukHz).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"powered down.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @s3cmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.s3cmci_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.s3cmci_host* %8, %struct.s3cmci_host** %5, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S3C2410_SDICON, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %67 [
    i32 129, label %18
    i32 128, label %18
    i32 130, label %66
  ]

18:                                               ; preds = %2, %2
  %19 = call i32 @S3C2410_GPE(i32 5)
  %20 = load i32, i32* @S3C2410_GPE5_SDCLK, align 4
  %21 = call i32 @s3c2410_gpio_cfgpin(i32 %19, i32 %20)
  %22 = call i32 @S3C2410_GPE(i32 6)
  %23 = load i32, i32* @S3C2410_GPE6_SDCMD, align 4
  %24 = call i32 @s3c2410_gpio_cfgpin(i32 %22, i32 %23)
  %25 = call i32 @S3C2410_GPE(i32 7)
  %26 = load i32, i32* @S3C2410_GPE7_SDDAT0, align 4
  %27 = call i32 @s3c2410_gpio_cfgpin(i32 %25, i32 %26)
  %28 = call i32 @S3C2410_GPE(i32 8)
  %29 = load i32, i32* @S3C2410_GPE8_SDDAT1, align 4
  %30 = call i32 @s3c2410_gpio_cfgpin(i32 %28, i32 %29)
  %31 = call i32 @S3C2410_GPE(i32 9)
  %32 = load i32, i32* @S3C2410_GPE9_SDDAT2, align 4
  %33 = call i32 @s3c2410_gpio_cfgpin(i32 %31, i32 %32)
  %34 = call i32 @S3C2410_GPE(i32 10)
  %35 = load i32, i32* @S3C2410_GPE10_SDDAT3, align 4
  %36 = call i32 @s3c2410_gpio_cfgpin(i32 %34, i32 %35)
  %37 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %38 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = icmp ne i32 (i32, i32)* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %18
  %44 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %45 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %48(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %43, %18
  %57 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %58 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @S3C2410_SDICON_FIFORESET, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %99

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %2, %66
  %68 = call i32 @S3C2410_GPE(i32 5)
  %69 = call i32 @gpio_direction_output(i32 %68, i32 0)
  %70 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %71 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @S3C2440_SDICON_SDRESET, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %80 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (i32, i32)*, i32 (i32, i32)** %82, align 8
  %84 = icmp ne i32 (i32, i32)* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %87 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 %90(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %85, %78
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %101 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %102 = call i32 @s3cmci_set_clk(%struct.s3cmci_host* %100, %struct.mmc_ios* %101)
  %103 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @S3C2410_SDICON_CLOCKTYPE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %116

111:                                              ; preds = %99
  %112 = load i32, i32* @S3C2410_SDICON_CLOCKTYPE, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %119 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @S3C2410_SDICON, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %125 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 129
  br i1 %127, label %133, label %128

128:                                              ; preds = %116
  %129 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 128
  br i1 %132, label %133, label %145

133:                                              ; preds = %128, %116
  %134 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %135 = load i32, i32* @dbg_conf, align 4
  %136 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %137 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %138, 1000
  %140 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %141 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 1000
  %144 = call i32 (%struct.s3cmci_host*, i32, i8*, ...) @dbg(%struct.s3cmci_host* %134, i32 %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %143)
  br label %149

145:                                              ; preds = %128
  %146 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %147 = load i32, i32* @dbg_conf, align 4
  %148 = call i32 (%struct.s3cmci_host*, i32, i8*, ...) @dbg(%struct.s3cmci_host* %146, i32 %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %133
  %150 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %151 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %154 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  ret void
}

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @s3c2410_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C2410_GPE(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @s3cmci_set_clk(%struct.s3cmci_host*, %struct.mmc_ios*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
