; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_enable_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_enable_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_wake(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = call i32 @device_may_wakeup(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %70

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @pci_pme_capable(%struct.pci_dev* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = call i32 @pci_pme_active(%struct.pci_dev* %44, i32 1)
  br label %47

46:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = call i32 @platform_pci_sleep_wake(%struct.pci_dev* %48, i32 1)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %68

61:                                               ; preds = %35
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = call i32 @platform_pci_sleep_wake(%struct.pci_dev* %62, i32 0)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = call i32 @pci_pme_active(%struct.pci_dev* %64, i32 0)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %34, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @device_may_wakeup(i32*) #1

declare dso_local i64 @pci_pme_capable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_pme_active(%struct.pci_dev*, i32) #1

declare dso_local i32 @platform_pci_sleep_wake(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
