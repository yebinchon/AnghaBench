; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp3_generic_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp3_generic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@AGPCTRL = common dso_local global i64 0, align 8
@AGPCTRL_APERENB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp3_generic_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AGPCTRL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @pci_read_config_dword(i32 %4, i64 %9, i32* %1)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AGPCTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @AGPCTRL_APERENB, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @pci_write_config_dword(i32 %13, i64 %18, i32 %22)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
