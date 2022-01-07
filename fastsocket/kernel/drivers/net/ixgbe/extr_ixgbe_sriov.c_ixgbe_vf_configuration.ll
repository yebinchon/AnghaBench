; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"IOV: VF %d is enabled MAC %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_vf_configuration(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 63
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 268435456
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %21 = call i32 @random_ether_addr(i8* %20)
  %22 = load i32, i32* @probe, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %25 = call i32 @e_info(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %35 = call i32 @memcpy(i32 %33, i8* %34, i32 6)
  br label %36

36:                                               ; preds = %19, %2
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @random_ether_addr(i8*) #1

declare dso_local i32 @e_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
