; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_p3_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_p3_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRB_MAC_BLOCK_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_p3_get_mac_addr(%struct.netxen_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @CRB_MAC_BLOCK_START, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sdiv i32 %14, 2
  %16 = mul nsw i32 %15, 3
  %17 = mul nsw i32 4, %16
  %18 = add nsw i32 %13, %17
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 1
  %21 = mul nsw i32 4, %20
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @NXRD32(%struct.netxen_adapter* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 4
  %29 = call i32 @NXRD32(%struct.netxen_adapter* %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 16
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 32
  %45 = or i32 %42, %44
  %46 = call i32 @le64_to_cpu(i32 %45)
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %33
  ret i32 0
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
