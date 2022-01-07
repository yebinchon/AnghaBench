; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_probe_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_probe_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@MPI_TEST_FUNC_PRB_CTL = common dso_local global i32 0, align 4
@MPI_TEST_FUNC_PRB_EN = common dso_local global i32 0, align 4
@PRB_MX_ADDR_SYS_CLOCK = common dso_local global i32 0, align 4
@PRB_MX_ADDR_VALID_SYS_MOD = common dso_local global i32 0, align 4
@PRB_MX_ADDR_PCI_CLOCK = common dso_local global i32 0, align 4
@PRB_MX_ADDR_VALID_PCI_MOD = common dso_local global i32 0, align 4
@PRB_MX_ADDR_XGM_CLOCK = common dso_local global i32 0, align 4
@PRB_MX_ADDR_VALID_XGM_MOD = common dso_local global i32 0, align 4
@PRB_MX_ADDR_FC_CLOCK = common dso_local global i32 0, align 4
@PRB_MX_ADDR_VALID_FC_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*)* @ql_get_probe_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_probe_dump(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %6 = load i32, i32* @MPI_TEST_FUNC_PRB_CTL, align 4
  %7 = load i32, i32* @MPI_TEST_FUNC_PRB_EN, align 4
  %8 = call i32 @ql_write_mpi_reg(%struct.ql_adapter* %5, i32 %6, i32 %7)
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = load i32, i32* @PRB_MX_ADDR_SYS_CLOCK, align 4
  %11 = load i32, i32* @PRB_MX_ADDR_VALID_SYS_MOD, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @ql_get_probe(%struct.ql_adapter* %9, i32 %10, i32 %11, i32* %12)
  store i32* %13, i32** %4, align 8
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = load i32, i32* @PRB_MX_ADDR_PCI_CLOCK, align 4
  %16 = load i32, i32* @PRB_MX_ADDR_VALID_PCI_MOD, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @ql_get_probe(%struct.ql_adapter* %14, i32 %15, i32 %16, i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @PRB_MX_ADDR_XGM_CLOCK, align 4
  %21 = load i32, i32* @PRB_MX_ADDR_VALID_XGM_MOD, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @ql_get_probe(%struct.ql_adapter* %19, i32 %20, i32 %21, i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %25 = load i32, i32* @PRB_MX_ADDR_FC_CLOCK, align 4
  %26 = load i32, i32* @PRB_MX_ADDR_VALID_FC_MOD, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @ql_get_probe(%struct.ql_adapter* %24, i32 %25, i32 %26, i32* %27)
  store i32* %28, i32** %4, align 8
  ret i32 0
}

declare dso_local i32 @ql_write_mpi_reg(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32* @ql_get_probe(%struct.ql_adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
