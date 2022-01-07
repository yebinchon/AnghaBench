; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_read_slot_reset_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_read_slot_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ibm_read_slot_reset_state2 = common dso_local global i32 0, align 4
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@ibm_read_slot_reset_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32*)* @read_slot_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_slot_reset_state(%struct.pci_dn* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @ibm_read_slot_reset_state2, align 4
  %9 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ibm_read_slot_reset_state2, align 4
  store i32 %12, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @ibm_read_slot_reset_state, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 0, i32* %16, align 4
  store i32 3, i32* %6, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BUID_HI(i32 %38)
  %40 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BUID_LO(i32 %44)
  %46 = call i32 @rtas_call(i32 %30, i32 3, i32 %31, i32* %32, i32 %33, i32 %39, i32 %45)
  ret i32 %46
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i32) #1

declare dso_local i32 @BUID_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
