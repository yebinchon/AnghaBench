; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_sd_attach_bus_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_sd_attach_bus_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_bus_ops = type { i32 }
%struct.mmc_host = type { i32 }

@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@mmc_sd_ops_unsafe = common dso_local global %struct.mmc_bus_ops zeroinitializer, align 4
@mmc_sd_ops = common dso_local global %struct.mmc_bus_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_sd_attach_bus_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_sd_attach_bus_ops(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_bus_ops*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mmc_bus_ops* @mmc_sd_ops_unsafe, %struct.mmc_bus_ops** %3, align 8
  br label %12

11:                                               ; preds = %1
  store %struct.mmc_bus_ops* @mmc_sd_ops, %struct.mmc_bus_ops** %3, align 8
  br label %12

12:                                               ; preds = %11, %10
  %13 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %14 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %3, align 8
  %15 = call i32 @mmc_attach_bus(%struct.mmc_host* %13, %struct.mmc_bus_ops* %14)
  ret void
}

declare dso_local i32 @mmc_attach_bus(%struct.mmc_host*, %struct.mmc_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
