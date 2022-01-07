; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vgaarb.c_vga_arbiter_del_pci_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vgaarb.c_vga_arbiter_del_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vga_device = type { i32, i32 }

@vga_lock = common dso_local global i32 0, align 4
@vga_default = common dso_local global %struct.pci_dev* null, align 8
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@vga_decode_count = common dso_local global i32 0, align 4
@vga_count = common dso_local global i32 0, align 4
@vga_wait_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @vga_arbiter_del_pci_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_arbiter_del_pci_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vga_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %6)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.vga_device* @vgadev_find(%struct.pci_dev* %8)
  store %struct.vga_device* %9, %struct.vga_device** %3, align 8
  %10 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %11 = icmp eq %struct.vga_device* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** @vga_default, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = icmp eq %struct.pci_dev* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** @vga_default, align 8
  %19 = call i32 @pci_dev_put(%struct.pci_dev* %18)
  store %struct.pci_dev* null, %struct.pci_dev** @vga_default, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %22 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %25 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @vga_decode_count, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @vga_decode_count, align 4
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %34 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %33, i32 0, i32 1
  %35 = call i32 @list_del(i32* %34)
  %36 = load i32, i32* @vga_count, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @vga_count, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @vga_arb_device_card_gone(%struct.pci_dev* %38)
  %40 = call i32 @wake_up_all(i32* @vga_wait_queue)
  br label %41

41:                                               ; preds = %32, %12
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %42)
  %44 = load %struct.vga_device*, %struct.vga_device** %3, align 8
  %45 = call i32 @kfree(%struct.vga_device* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vga_device* @vgadev_find(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vga_arb_device_card_gone(%struct.pci_dev*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.vga_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
