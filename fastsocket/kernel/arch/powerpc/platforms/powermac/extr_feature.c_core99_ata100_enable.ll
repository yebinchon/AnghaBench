; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_ata100_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_ata100_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pci_dev = type { i32 }

@uninorth_rev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@UNI_N_CLOCK_CNTL = common dso_local global i32 0, align 4
@UNI_N_CLOCK_CNTL_ATA100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64)* @core99_ata100_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_ata100_enable(%struct.device_node* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %11 = load i32, i32* @uninorth_rev, align 4
  %12 = icmp slt i32 %11, 36
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* @ENODEV, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %3, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @LOCK(i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @UNI_N_CLOCK_CNTL, align 4
  %23 = load i32, i32* @UNI_N_CLOCK_CNTL_ATA100, align 4
  %24 = call i32 @UN_BIS(i32 %22, i32 %23)
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @UNI_N_CLOCK_CNTL, align 4
  %27 = load i32, i32* @UNI_N_CLOCK_CNTL_ATA100, align 4
  %28 = call i32 @UN_BIC(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @UNI_N_CLOCK_CNTL, align 4
  %31 = call i32 @UN_IN(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @UNLOCK(i64 %32)
  %34 = call i32 @udelay(i32 20)
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i64 @pci_device_from_OF_node(%struct.device_node* %38, i32* %8, i32* %9)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 %42, i32 %43)
  store %struct.pci_dev* %44, %struct.pci_dev** %7, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = icmp eq %struct.pci_dev* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i64 0, i64* %3, align 8
  br label %67

49:                                               ; preds = %45
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = call i32 @pci_enable_device(%struct.pci_dev* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = call i32 @pci_set_master(%struct.pci_dev* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = call i32 @pci_dev_put(%struct.pci_dev* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %3, align 8
  br label %67

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %29
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %66, %62, %48, %13
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @UN_BIS(i32, i32) #1

declare dso_local i32 @UN_BIC(i32, i32) #1

declare dso_local i32 @UN_IN(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @pci_device_from_OF_node(%struct.device_node*, i32*, i32*) #1

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
