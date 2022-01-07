; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.msmsdcc_host = type { i64, i32, i32, %struct.TYPE_6__, i64, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.mmc_request* }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@MCI_CMDRESPEND = common dso_local global i32 0, align 4
@MCI_CMDCRCFAIL = common dso_local global i32 0, align 4
@MCI_CMDTIMEOUT = common dso_local global i32 0, align 4
@CMD_SPINMAX = common dso_local global i32 0, align 4
@MMCISTATUS = common dso_local global i64 0, align 8
@MMCICLEAR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @msmsdcc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmsdcc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.msmsdcc_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.msmsdcc_host* %9, %struct.msmsdcc_host** %5, align 8
  %10 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %11 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  %14 = icmp ne %struct.mmc_request* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %18 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %24 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %28 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %33 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %85

36:                                               ; preds = %2
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MMC_DATA_READ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %41
  %51 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  br label %77

70:                                               ; preds = %41, %36
  %71 = load i32, i32* @ENOMEDIUM, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %50
  %78 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %79 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %78, i32 0, i32 1
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %83 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %84 = call i32 @mmc_request_done(%struct.mmc_host* %82, %struct.mmc_request* %83)
  br label %172

85:                                               ; preds = %2
  %86 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %87 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %88 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store %struct.mmc_request* %86, %struct.mmc_request** %89, align 8
  %90 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MMC_DATA_READ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %105 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %106 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = call i32 @msmsdcc_start_data(%struct.msmsdcc_host* %104, %struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %103, %94, %85
  %110 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %111 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @msmsdcc_start_command(%struct.msmsdcc_host* %110, %struct.TYPE_8__* %113, i32 0)
  %115 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %116 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %109
  %120 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %121 = load i32, i32* @MCI_CMDRESPEND, align 4
  %122 = load i32, i32* @MCI_CMDCRCFAIL, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MCI_CMDTIMEOUT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @CMD_SPINMAX, align 4
  %127 = call i32 @msmsdcc_spin_on_status(%struct.msmsdcc_host* %120, i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %119
  %130 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %131 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MMCISTATUS, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @readl(i64 %134)
  store i32 %135, i32* %7, align 4
  %136 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @msmsdcc_do_cmdirq(%struct.msmsdcc_host* %136, i32 %137)
  %139 = load i32, i32* @MCI_CMDRESPEND, align 4
  %140 = load i32, i32* @MCI_CMDCRCFAIL, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @MCI_CMDTIMEOUT, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %145 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MMCICLEAR, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %151 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %167

155:                                              ; preds = %119, %109
  %156 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %157 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %162 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %161, i32 0, i32 2
  %163 = load i64, i64* @jiffies, align 8
  %164 = load i64, i64* @HZ, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @mod_timer(i32* %162, i64 %165)
  br label %167

167:                                              ; preds = %155, %129
  %168 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %169 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %168, i32 0, i32 1
  %170 = load i64, i64* %6, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %167, %77
  ret void
}

declare dso_local %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @msmsdcc_start_data(%struct.msmsdcc_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @msmsdcc_start_command(%struct.msmsdcc_host*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @msmsdcc_spin_on_status(%struct.msmsdcc_host*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msmsdcc_do_cmdirq(%struct.msmsdcc_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
