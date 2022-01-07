; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vgaarb.c_vga_tryget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vgaarb.c_vga_tryget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vga_device = type { i32 }

@vga_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_tryget(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vga_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @vga_check_first_use()
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = icmp eq %struct.pci_dev* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call %struct.pci_dev* (...) @vga_default_device()
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = icmp eq %struct.pci_dev* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %41

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call %struct.vga_device* @vgadev_find(%struct.pci_dev* %21)
  store %struct.vga_device* %22, %struct.vga_device** %6, align 8
  %23 = load %struct.vga_device*, %struct.vga_device** %6, align 8
  %24 = icmp eq %struct.vga_device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.vga_device*, %struct.vga_device** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @__vga_tryget(%struct.vga_device* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @vga_check_first_use(...) #1

declare dso_local %struct.pci_dev* @vga_default_device(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vga_device* @vgadev_find(%struct.pci_dev*) #1

declare dso_local i64 @__vga_tryget(%struct.vga_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
