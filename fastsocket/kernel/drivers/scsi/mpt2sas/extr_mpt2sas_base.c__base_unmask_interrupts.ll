; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_base.c__base_unmask_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_base.c__base_unmask_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPI2_HIM_RIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*)* @_base_unmask_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_unmask_interrupts(%struct.MPT2SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %3 = alloca i32, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %2, align 8
  %4 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %5 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @readl(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @MPI2_HIM_RIM, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %15 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @writel(i32 %13, i32* %17)
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %20 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
