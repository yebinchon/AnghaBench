; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_proc.c_proc_bus_pci_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_proc.c_proc_bus_pci_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pci_filp_private*, %struct.TYPE_2__* }
%struct.pci_filp_private = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.proc_dir_entry = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pci_mmap_io = common dso_local global i32 0, align 4
@pci_mmap_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @proc_bus_pci_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proc_bus_pci_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.proc_dir_entry* @PDE(i32 %14)
  store %struct.proc_dir_entry* %15, %struct.proc_dir_entry** %7, align 8
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %17 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = call i32 (...) @lock_kernel()
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %26 [
    i32 131, label %21
  ]

21:                                               ; preds = %3
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_domain_nr(i32 %24)
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = call i32 (...) @unlock_kernel()
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  ret i64 %32
}

declare dso_local %struct.proc_dir_entry* @PDE(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
