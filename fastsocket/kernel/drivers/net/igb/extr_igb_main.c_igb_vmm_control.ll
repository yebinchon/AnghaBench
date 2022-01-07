; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vmm_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vmm_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_DTXCTL = common dso_local global i32 0, align 4
@E1000_DTXCTL_VLAN_ADDED = common dso_local global i32 0, align 4
@E1000_RPLOLR = common dso_local global i32 0, align 4
@E1000_RPLOLR_STRVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_vmm_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vmm_control(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 1
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 134, label %11
    i32 131, label %11
    i32 130, label %11
    i32 128, label %11
    i32 133, label %13
    i32 132, label %22
    i32 129, label %31
  ]

11:                                               ; preds = %1, %1, %1, %1
  br label %12

12:                                               ; preds = %1, %11
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_DTXCTL, align 4
  %15 = call i32 @rd32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @E1000_DTXCTL_VLAN_ADDED, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @E1000_DTXCTL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wr32(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %1, %13
  %23 = load i32, i32* @E1000_RPLOLR, align 4
  %24 = call i32 @rd32(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @E1000_RPLOLR_STRVLAN, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @E1000_RPLOLR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @wr32(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %1, %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i32 @igb_vmdq_set_loopback_pf(%struct.e1000_hw* %38, i32 1)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i32 @igb_vmdq_set_replication_pf(%struct.e1000_hw* %40, i32 1)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @igb_vmdq_set_anti_spoofing_pf(%struct.e1000_hw* %42, i32 1, i32 %45)
  br label %52

47:                                               ; preds = %32
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = call i32 @igb_vmdq_set_loopback_pf(%struct.e1000_hw* %48, i32 0)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = call i32 @igb_vmdq_set_replication_pf(%struct.e1000_hw* %50, i32 0)
  br label %52

52:                                               ; preds = %12, %47, %37
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_vmdq_set_loopback_pf(%struct.e1000_hw*, i32) #1

declare dso_local i32 @igb_vmdq_set_replication_pf(%struct.e1000_hw*, i32) #1

declare dso_local i32 @igb_vmdq_set_anti_spoofing_pf(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
