; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt37x_calibrate_dpll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt37x_calibrate_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @hpt37x_calibrate_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt37x_calibrate_dpll(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %12, %13
  %15 = or i32 %14, 256
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @pci_write_config_dword(%struct.pci_dev* %16, i32 92, i32 %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 20480
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = call i32 @udelay(i32 50)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %24, i32 91, i32* %9)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %19

34:                                               ; preds = %29, %19
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 4096
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %39, i32 91, i32* %9)
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %56

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i32 92, i32* %8)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, -257
  %55 = call i32 @pci_write_config_dword(%struct.pci_dev* %52, i32 92, i32 %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
