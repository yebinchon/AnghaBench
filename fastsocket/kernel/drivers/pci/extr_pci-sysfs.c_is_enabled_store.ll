; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-sysfs.c_is_enabled_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-sysfs.c_is_enabled_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @is_enabled_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @is_enabled_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(%struct.device* %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strict_strtoul(i8* %15, i32 0, i64* %11)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %12, align 8
  store i64 %20, i64* %5, align 8
  br label %54

21:                                               ; preds = %4
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @EPERM, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %54

28:                                               ; preds = %21
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %33 = call i64 @pci_is_enabled(%struct.pci_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %37 = call i32 @pci_disable_device(%struct.pci_dev* %36)
  br label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @EIO, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %45

42:                                               ; preds = %28
  %43 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %44 = call i64 @pci_enable_device(%struct.pci_dev* %43)
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i64, i64* %12, align 8
  %47 = icmp ult i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i64, i64* %12, align 8
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %52, %25, %19
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
