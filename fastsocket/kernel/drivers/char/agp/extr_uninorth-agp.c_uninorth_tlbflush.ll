; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_tlbflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_tlbflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.agp_memory = type { i32 }

@UNI_N_CFG_GART_ENABLE = common dso_local global i32 0, align 4
@is_u3 = common dso_local global i64 0, align 8
@U3_N_CFG_GART_PERFRD = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@UNI_N_CFG_GART_CTRL = common dso_local global i32 0, align 4
@UNI_N_CFG_GART_INVAL = common dso_local global i32 0, align 4
@uninorth_rev = common dso_local global i32 0, align 4
@UNI_N_CFG_GART_2xRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @uninorth_tlbflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninorth_tlbflush(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %4 = load i32, i32* @UNI_N_CFG_GART_ENABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @is_u3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @U3_N_CFG_GART_PERFRD, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @UNI_N_CFG_GART_INVAL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @pci_write_config_dword(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_write_config_dword(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @uninorth_rev, align 4
  %27 = icmp sle i32 %26, 48
  br i1 %27, label %28, label %43

28:                                               ; preds = %11
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @UNI_N_CFG_GART_2xRESET, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @pci_write_config_dword(i32 %31, i32 %32, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_write_config_dword(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
