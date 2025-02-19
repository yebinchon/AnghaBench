; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-tx3927.c_check_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-tx3927.c_check_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@tx3927_pcicptr = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_abort() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = call i32 (...) @iob()
  %20 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %20, i32* %1, align 4
  br label %23

21:                                               ; preds = %0
  %22 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %8
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @iob(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
