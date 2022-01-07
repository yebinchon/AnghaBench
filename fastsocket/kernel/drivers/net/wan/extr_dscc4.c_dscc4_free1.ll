; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_free1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_free1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dscc4_pci_priv = type { i32, %struct.dscc4_pci_priv* }
%struct.dscc4_dev_priv = type { i32, %struct.dscc4_dev_priv* }

@dev_per_card = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @dscc4_free1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dscc4_free1(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.dscc4_pci_priv*, align 8
  %4 = alloca %struct.dscc4_dev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.dscc4_pci_priv* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.dscc4_pci_priv* %7, %struct.dscc4_pci_priv** %3, align 8
  %8 = load %struct.dscc4_pci_priv*, %struct.dscc4_pci_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dscc4_pci_priv, %struct.dscc4_pci_priv* %8, i32 0, i32 1
  %10 = load %struct.dscc4_pci_priv*, %struct.dscc4_pci_priv** %9, align 8
  %11 = bitcast %struct.dscc4_pci_priv* %10 to %struct.dscc4_dev_priv*
  store %struct.dscc4_dev_priv* %11, %struct.dscc4_dev_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @dev_per_card, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %17, i64 %19
  %21 = bitcast %struct.dscc4_dev_priv* %20 to %struct.dscc4_pci_priv*
  %22 = call i32 @dscc4_to_dev(%struct.dscc4_pci_priv* %21)
  %23 = call i32 @unregister_hdlc_device(i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_set_drvdata(%struct.pci_dev* %28, i32* null)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %42, %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @dev_per_card, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %35, i64 %37
  %39 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @free_netdev(i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %4, align 8
  %47 = bitcast %struct.dscc4_dev_priv* %46 to %struct.dscc4_pci_priv*
  %48 = call i32 @kfree(%struct.dscc4_pci_priv* %47)
  %49 = load %struct.dscc4_pci_priv*, %struct.dscc4_pci_priv** %3, align 8
  %50 = call i32 @kfree(%struct.dscc4_pci_priv* %49)
  ret void
}

declare dso_local %struct.dscc4_pci_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_hdlc_device(i32) #1

declare dso_local i32 @dscc4_to_dev(%struct.dscc4_pci_priv*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @kfree(%struct.dscc4_pci_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
