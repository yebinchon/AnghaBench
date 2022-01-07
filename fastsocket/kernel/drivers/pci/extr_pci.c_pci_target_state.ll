; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_target_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }

@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_target_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_D3hot, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call i64 @platform_pci_power_manageable(%struct.pci_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @platform_pci_choose_state(%struct.pci_dev* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %20 [
    i32 129, label %13
    i32 128, label %13
    i32 131, label %14
    i32 130, label %14
  ]

13:                                               ; preds = %9, %9
  br label %22

14:                                               ; preds = %9, %9
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_no_d1d2(%struct.pci_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %22

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %9, %19
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18, %13
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @PCI_D0, align 4
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = call i64 @device_may_wakeup(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %44, %41
  %54 = phi i1 [ false, %41 ], [ %52, %44 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %3, align 4
  br label %41

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %35
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60, %28
  br label %62

62:                                               ; preds = %61, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @platform_pci_power_manageable(%struct.pci_dev*) #1

declare dso_local i32 @platform_pci_choose_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_no_d1d2(%struct.pci_dev*) #1

declare dso_local i64 @device_may_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
