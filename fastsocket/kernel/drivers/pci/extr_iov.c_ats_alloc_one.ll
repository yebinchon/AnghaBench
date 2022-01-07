; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_ats_alloc_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_ats_alloc_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_ats* }
%struct.pci_ats = type { i32, i32, i64 }

@PCI_EXT_CAP_ID_ATS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_ATS_CAP = common dso_local global i64 0, align 8
@PCI_ATS_MAX_QDEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @ats_alloc_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ats_alloc_one(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_ats*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @PCI_EXT_CAP_ID_ATS, align 4
  %11 = call i32 @pci_find_ext_capability(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pci_ats* @kzalloc(i32 16, i32 %18)
  store %struct.pci_ats* %19, %struct.pci_ats** %8, align 8
  %20 = load %struct.pci_ats*, %struct.pci_ats** %8, align 8
  %21 = icmp ne %struct.pci_ats* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pci_ats*, %struct.pci_ats** %8, align 8
  %28 = getelementptr inbounds %struct.pci_ats, %struct.pci_ats* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.pci_ats*, %struct.pci_ats** %8, align 8
  %31 = getelementptr inbounds %struct.pci_ats, %struct.pci_ats* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCI_ATS_CAP, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i64 %36, i32* %7)
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @PCI_ATS_CAP_QDEP(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @PCI_ATS_CAP_QDEP(i32 %42)
  br label %46

44:                                               ; preds = %25
  %45 = load i64, i64* @PCI_ATS_MAX_QDEP, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i64 [ %43, %41 ], [ %45, %44 ]
  %48 = load %struct.pci_ats*, %struct.pci_ats** %8, align 8
  %49 = getelementptr inbounds %struct.pci_ats, %struct.pci_ats* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.pci_ats*, %struct.pci_ats** %8, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  store %struct.pci_ats* %50, %struct.pci_ats** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %22, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_ats* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @PCI_ATS_CAP_QDEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
