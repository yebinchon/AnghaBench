; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32, i32, i32 }
%struct.tifm_sd = type { i32, i32, i32, %struct.tifm_dev* }
%struct.tifm_dev = type { i32, i64, i32 }

@.str = private unnamed_addr constant [93 x i8] c"ios: clock = %u, vdd = %x, bus_mode = %x, chip_select = %x, power_mode = %x, bus_width = %x\0A\00", align 1
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@TIFM_MMCSD_4BBUS = common dso_local global i32 0, align 4
@SOCK_MMCSD_CONFIG = common dso_local global i64 0, align 8
@TIFM_CTRL_FAST_CLK = common dso_local global i32 0, align 4
@SOCK_CONTROL = common dso_local global i64 0, align 8
@TIFM_MMCSD_CLKMASK = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @tifm_sd_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.tifm_sd*, align 8
  %6 = alloca %struct.tifm_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.tifm_sd* @mmc_priv(%struct.mmc_host* %10)
  store %struct.tifm_sd* %11, %struct.tifm_sd** %5, align 8
  %12 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %13 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %12, i32 0, i32 3
  %14 = load %struct.tifm_dev*, %struct.tifm_dev** %13, align 8
  store %struct.tifm_dev* %14, %struct.tifm_dev** %6, align 8
  %15 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %16 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %20 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %19, i32 0, i32 2
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %2
  %46 = load i32, i32* @TIFM_MMCSD_4BBUS, align 4
  %47 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %48 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = or i32 %46, %52
  %54 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %55 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %76

60:                                               ; preds = %2
  %61 = load i32, i32* @TIFM_MMCSD_4BBUS, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %64 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  %69 = and i32 %62, %68
  %70 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %71 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %60, %45
  %77 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %165

81:                                               ; preds = %76
  %82 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 20000000, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %81
  %90 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 24000000, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  store i32 1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %89
  %98 = load i32, i32* %7, align 4
  %99 = udiv i32 20000000, %98
  %100 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ugt i32 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* %8, align 4
  %109 = udiv i32 24000000, %108
  %110 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ugt i32 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i32, i32* %7, align 4
  %119 = udiv i32 20000000, %118
  %120 = load i32, i32* %8, align 4
  %121 = udiv i32 24000000, %120
  %122 = icmp ugt i32 %119, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %117
  %124 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %125 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %124, i32 0, i32 0
  store i32 20000000, i32* %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %128 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @TIFM_CTRL_FAST_CLK, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %132 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SOCK_CONTROL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @readl(i64 %135)
  %137 = and i32 %130, %136
  %138 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %139 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SOCK_CONTROL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel(i32 %137, i64 %142)
  br label %164

144:                                              ; preds = %117
  %145 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %146 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %145, i32 0, i32 0
  store i32 24000000, i32* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %149 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @TIFM_CTRL_FAST_CLK, align 4
  %151 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %152 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SOCK_CONTROL, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @readl(i64 %155)
  %157 = or i32 %150, %156
  %158 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %159 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SOCK_CONTROL, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  br label %164

164:                                              ; preds = %144, %123
  br label %168

165:                                              ; preds = %76
  %166 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %167 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %164
  %169 = load i32, i32* @TIFM_MMCSD_CLKMASK, align 4
  %170 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %171 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %175 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @TIFM_MMCSD_CLKMASK, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %180 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @readl(i64 %183)
  %185 = and i32 %178, %184
  %186 = or i32 %176, %185
  %187 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %188 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 %186, i64 %191)
  %193 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %194 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MMC_BUSMODE_OPENDRAIN, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %200 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %202 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %201, i32 0, i32 0
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  ret void
}

declare dso_local %struct.tifm_sd* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
