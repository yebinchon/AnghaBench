; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_ph_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_ph_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i32, %struct.hfc_pci* }
%struct.hfc_pci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ISDN_P_NT_S0 = common dso_local global i64 0, align 8
@FLG_HFC_TIMER_T3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dchannel*)* @ph_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ph_state(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  %3 = alloca %struct.hfc_pci*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %4 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %5 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %4, i32 0, i32 1
  %6 = load %struct.hfc_pci*, %struct.hfc_pci** %5, align 8
  store %struct.hfc_pci* %6, %struct.hfc_pci** %3, align 8
  %7 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %8 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ISDN_P_NT_S0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @FLG_HFC_TIMER_T3, align 4
  %15 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %16 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.hfc_pci*, %struct.hfc_pci** %3, align 8
  %21 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %27 = call i32 @handle_nt_timer3(%struct.dchannel* %26)
  br label %31

28:                                               ; preds = %19, %13
  %29 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %30 = call i32 @ph_state_nt(%struct.dchannel* %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %34 = call i32 @ph_state_te(%struct.dchannel* %33)
  br label %35

35:                                               ; preds = %32, %31
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @handle_nt_timer3(%struct.dchannel*) #1

declare dso_local i32 @ph_state_nt(%struct.dchannel*) #1

declare dso_local i32 @ph_state_te(%struct.dchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
