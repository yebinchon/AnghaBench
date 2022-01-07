; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i32 }
%struct.mmc_omap_slot = type { i64, i32, i32, i32, %struct.TYPE_2__*, %struct.mmc_omap_host* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.mmc_omap_host = type { i32 }

@CON = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mmc_omap_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmc_omap_slot*, align 8
  %6 = alloca %struct.mmc_omap_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host* %11)
  store %struct.mmc_omap_slot* %12, %struct.mmc_omap_slot** %5, align 8
  %13 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %13, i32 0, i32 5
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %14, align 8
  store %struct.mmc_omap_host* %15, %struct.mmc_omap_host** %6, align 8
  %16 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %17 = call i32 @mmc_omap_select_slot(%struct.mmc_omap_slot* %16, i32 0)
  %18 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = call i32 @mmc_omap_calc_divisor(%struct.mmc_host* %18, %struct.mmc_ios* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %2
  store i32 0, i32* %9, align 4
  %35 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %55 [
    i32 130, label %38
    i32 128, label %44
    i32 129, label %50
  ]

38:                                               ; preds = %34
  %39 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %40 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mmc_omap_set_power(%struct.mmc_omap_slot* %39, i32 0, i64 %42)
  br label %55

44:                                               ; preds = %34
  %45 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %46 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mmc_omap_set_power(%struct.mmc_omap_slot* %45, i32 1, i64 %48)
  br label %141

50:                                               ; preds = %34
  %51 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %52 = call i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host* %51, i32 1)
  store i32 1, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, 2048
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %34, %50, %38
  %56 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %57 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %55
  %64 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %67, align 8
  %69 = icmp ne i32 (i32, i32, i32)* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %72 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %74, align 8
  %76 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %77 = call i32 @mmc_dev(%struct.mmc_host* %76)
  %78 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %75(i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %70, %63
  %86 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %55
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %100, %91
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %97 = load i32, i32* @CON, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %92

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 129
  br i1 %110, label %111, label %140

111:                                              ; preds = %103
  store i32 250, i32* %10, align 4
  %112 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %113 = load i32, i32* @IE, align 4
  %114 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %112, i32 %113, i32 0)
  %115 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %116 = load i32, i32* @STAT, align 4
  %117 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %115, i32 %116, i32 65535)
  %118 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %119 = load i32, i32* @CMD, align 4
  %120 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %118, i32 %119, i32 128)
  br label %121

121:                                              ; preds = %132, %111
  %122 = load i32, i32* %10, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %126 = load i32, i32* @STAT, align 4
  %127 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %125, i32 %126)
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %124, %121
  %131 = phi i1 [ false, %121 ], [ %129, %124 ]
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  %133 = call i32 @udelay(i32 1)
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %10, align 4
  br label %121

136:                                              ; preds = %130
  %137 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %6, align 8
  %138 = load i32, i32* @STAT, align 4
  %139 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %137, i32 %138, i32 1)
  br label %140

140:                                              ; preds = %136, %103
  br label %141

141:                                              ; preds = %140, %44
  %142 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @mmc_omap_release_slot(%struct.mmc_omap_slot* %142, i32 %143)
  ret void
}

declare dso_local %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_omap_select_slot(%struct.mmc_omap_slot*, i32) #1

declare dso_local i32 @mmc_omap_calc_divisor(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @mmc_omap_set_power(%struct.mmc_omap_slot*, i32, i64) #1

declare dso_local i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mmc_omap_release_slot(%struct.mmc_omap_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
