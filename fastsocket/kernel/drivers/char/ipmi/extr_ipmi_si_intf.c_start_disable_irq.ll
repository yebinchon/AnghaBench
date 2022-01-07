; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_start_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_start_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_BMC_GLOBAL_ENABLES_CMD = common dso_local global i8 0, align 1
@SI_DISABLE_INTERRUPTS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @start_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_disable_irq(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca [2 x i8], align 1
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %4 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %5 = shl i32 %4, 2
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %6, i8* %7, align 1
  %8 = load i8, i8* @IPMI_GET_BMC_GLOBAL_ENABLES_CMD, align 1
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 %8, i8* %9, align 1
  %10 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %13, align 8
  %15 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %16 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %19 = call i32 %14(i32 %17, i8* %18, i32 2)
  %20 = load i32, i32* @SI_DISABLE_INTERRUPTS1, align 4
  %21 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %22 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
