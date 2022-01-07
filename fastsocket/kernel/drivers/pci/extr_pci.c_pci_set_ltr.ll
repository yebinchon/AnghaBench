; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_set_ltr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_set_ltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@PCI_LTR_VALUE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_LTR_SCALE_MASK = common dso_local global i32 0, align 4
@PCI_LTR_SCALE_SHIFT = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_LTR = common dso_local global i32 0, align 4
@PCI_LTR_MAX_SNOOP_LAT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PCI_LTR_MAX_NOSNOOP_LAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_set_ltr(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = call i32 @pci_ltr_supported(%struct.pci_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %93

19:                                               ; preds = %3
  %20 = call i32 @__pci_ltr_scale(i32* %6)
  store i32 %20, i32* %10, align 4
  %21 = call i32 @__pci_ltr_scale(i32* %7)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCI_LTR_VALUE_MASK, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCI_LTR_VALUE_MASK, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %93

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PCI_LTR_SCALE_MASK, align 4
  %35 = load i32, i32* @PCI_LTR_SCALE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @PCI_LTR_SCALE_MASK, align 4
  %41 = load i32, i32* @PCI_LTR_SCALE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %93

47:                                               ; preds = %38
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = load i32, i32* @PCI_EXT_CAP_ID_LTR, align 4
  %50 = call i32 @pci_find_ext_capability(%struct.pci_dev* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %93

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @PCI_LTR_SCALE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @PCI_LTR_MAX_SNOOP_LAT, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @pci_write_config_word(%struct.pci_dev* %62, i64 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %93

74:                                               ; preds = %56
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @PCI_LTR_SCALE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @PCI_LTR_MAX_NOSNOOP_LAT, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @pci_write_config_word(%struct.pci_dev* %80, i64 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 4
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %89, %71, %53, %44, %29, %16
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @pci_ltr_supported(%struct.pci_dev*) #1

declare dso_local i32 @__pci_ltr_scale(i32*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
