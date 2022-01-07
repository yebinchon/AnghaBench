; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_early.c_early_dump_pci_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_early.c_early_dump_pci_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @early_dump_pci_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @early_pci_allowed()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %60

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %57, %9
  %11 = load i32, i32* %1, align 4
  %12 = icmp ult i32 %11, 256
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %19, 8
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %26 = call i32 @read_pci_config(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %49

30:                                               ; preds = %21
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @early_dump_pci_device(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %42 = call i32 @read_pci_config_byte(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %52

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %18

52:                                               ; preds = %46, %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %14

56:                                               ; preds = %14
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %1, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %10

60:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @early_pci_allowed(...) #1

declare dso_local i32 @read_pci_config(i32, i32, i32, i32) #1

declare dso_local i32 @early_dump_pci_device(i32, i32, i32) #1

declare dso_local i32 @read_pci_config_byte(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
