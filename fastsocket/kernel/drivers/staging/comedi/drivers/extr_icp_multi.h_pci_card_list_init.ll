; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_list_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i16, i32, i32*, i32, i32, i32, i32, %struct.pcilst_struct*, i32 }
%struct.pci_dev = type { i16, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@inova_devices = common dso_local global %struct.pcilst_struct* null, align 8
@PCI_ANY_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"icp_multi: pci_card_list_init: allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8)* @pci_card_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_card_list_init(i16 zeroext %0, i8 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pcilst_struct*, align 8
  %7 = alloca %struct.pcilst_struct*, align 8
  %8 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  store %struct.pcilst_struct* null, %struct.pcilst_struct** @inova_devices, align 8
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %7, align 8
  %9 = load i32, i32* @PCI_ANY_ID, align 4
  %10 = load i32, i32* @PCI_ANY_ID, align 4
  %11 = call %struct.pci_dev* @pci_get_device(i32 %9, i32 %10, %struct.pci_dev* null)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  br label %12

12:                                               ; preds = %101, %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %106

15:                                               ; preds = %12
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %15
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.pcilst_struct* @kmalloc(i32 48, i32 %24)
  store %struct.pcilst_struct* %25, %struct.pcilst_struct** %6, align 8
  %26 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %27 = icmp ne %struct.pcilst_struct* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = call i32 @pci_dev_put(%struct.pci_dev* %30)
  br label %106

32:                                               ; preds = %23
  %33 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %34 = call i32 @memset(%struct.pcilst_struct* %33, i32 0, i32 48)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = call i32 @pci_dev_get(%struct.pci_dev* %35)
  %37 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %38 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pcilst_struct*, %struct.pcilst_struct** %7, align 8
  %40 = icmp ne %struct.pcilst_struct* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %43 = load %struct.pcilst_struct*, %struct.pcilst_struct** %7, align 8
  %44 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %43, i32 0, i32 7
  store %struct.pcilst_struct* %42, %struct.pcilst_struct** %44, align 8
  br label %47

45:                                               ; preds = %32
  %46 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  store %struct.pcilst_struct* %46, %struct.pcilst_struct** @inova_devices, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  store %struct.pcilst_struct* %48, %struct.pcilst_struct** %7, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i16, i16* %50, align 8
  %52 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %53 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %52, i32 0, i32 0
  store i16 %51, i16* %53, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %58 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %65 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PCI_SLOT(i32 %68)
  %70 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %71 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PCI_FUNC(i32 %74)
  %76 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %77 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %91, %47
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 5
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @pci_resource_start(%struct.pci_dev* %82, i32 %83)
  %85 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %86 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %99 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %15
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @PCI_ANY_ID, align 4
  %103 = load i32, i32* @PCI_ANY_ID, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %105 = call %struct.pci_dev* @pci_get_device(i32 %102, i32 %103, %struct.pci_dev* %104)
  store %struct.pci_dev* %105, %struct.pci_dev** %5, align 8
  br label %12

106:                                              ; preds = %28, %12
  %107 = load i8, i8* %4, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (...) @pci_card_list_display()
  br label %111

111:                                              ; preds = %109, %106
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local %struct.pcilst_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @memset(%struct.pcilst_struct*, i32, i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_card_list_display(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
