; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_find_device_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_find_device_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @find_device_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_device_iter(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aer_err_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.aer_err_info*
  store %struct.aer_err_info* %8, %struct.aer_err_info** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load %struct.aer_err_info*, %struct.aer_err_info** %6, align 8
  %11 = call i64 @is_error_source(%struct.pci_dev* %9, %struct.aer_err_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.aer_err_info*, %struct.aer_err_info** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @add_error_device(%struct.aer_err_info* %14, %struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %27

19:                                               ; preds = %13
  %20 = load %struct.aer_err_info*, %struct.aer_err_info** %6, align 8
  %21 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %27

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @is_error_source(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i64 @add_error_device(%struct.aer_err_info*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
