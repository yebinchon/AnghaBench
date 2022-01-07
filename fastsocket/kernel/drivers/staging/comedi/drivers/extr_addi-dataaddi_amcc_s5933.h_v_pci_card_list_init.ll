; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_amcc_s5933.h_v_pci_card_list_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_amcc_s5933.h_v_pci_card_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i16, i32, i32*, i32, i32, i32, i32, %struct.pcilst_struct*, %struct.pci_dev* }
%struct.pci_dev = type { i16, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@amcc_devices = common dso_local global %struct.pcilst_struct* null, align 8
@PCI_ANY_ID = common dso_local global i32 0, align 4
@i_ADDIDATADeviceID = common dso_local global i16* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_pci_card_list_init(i16 zeroext %0, i8 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pcilst_struct*, align 8
  %7 = alloca %struct.pcilst_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %9, align 4
  store %struct.pcilst_struct* null, %struct.pcilst_struct** @amcc_devices, align 8
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %7, align 8
  %10 = load i32, i32* @PCI_ANY_ID, align 4
  %11 = load i32, i32* @PCI_ANY_ID, align 4
  %12 = call %struct.pci_dev* @pci_get_device(i32 %10, i32 %11, %struct.pci_dev* null)
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  br label %13

13:                                               ; preds = %111, %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %16, label %116

16:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %107, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %110

20:                                               ; preds = %17
  %21 = load i16*, i16** @i_ADDIDATADeviceID, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %3, align 2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %106

33:                                               ; preds = %20
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.pcilst_struct* @kmalloc(i32 48, i32 %34)
  store %struct.pcilst_struct* %35, %struct.pcilst_struct** %6, align 8
  %36 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %37 = icmp eq %struct.pcilst_struct* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %107

39:                                               ; preds = %33
  %40 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %41 = call i32 @memset(%struct.pcilst_struct* %40, i32 0, i32 48)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %44 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %43, i32 0, i32 8
  store %struct.pci_dev* %42, %struct.pci_dev** %44, align 8
  %45 = load %struct.pcilst_struct*, %struct.pcilst_struct** %7, align 8
  %46 = icmp ne %struct.pcilst_struct* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %49 = load %struct.pcilst_struct*, %struct.pcilst_struct** %7, align 8
  %50 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %49, i32 0, i32 7
  store %struct.pcilst_struct* %48, %struct.pcilst_struct** %50, align 8
  br label %53

51:                                               ; preds = %39
  %52 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  store %struct.pcilst_struct* %52, %struct.pcilst_struct** @amcc_devices, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  store %struct.pcilst_struct* %54, %struct.pcilst_struct** %7, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 8
  %58 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %59 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %58, i32 0, i32 0
  store i16 %57, i16* %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %64 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %71 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PCI_SLOT(i32 %74)
  %76 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %77 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PCI_FUNC(i32 %80)
  %82 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %83 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %97, %53
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 5
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @pci_resource_start(%struct.pci_dev* %88, i32 %89)
  %91 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %92 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %105 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %20
  br label %107

107:                                              ; preds = %106, %38
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %17

110:                                              ; preds = %17
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* @PCI_ANY_ID, align 4
  %113 = load i32, i32* @PCI_ANY_ID, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %115 = call %struct.pci_dev* @pci_get_device(i32 %112, i32 %113, %struct.pci_dev* %114)
  store %struct.pci_dev* %115, %struct.pci_dev** %5, align 8
  br label %13

116:                                              ; preds = %13
  %117 = load i8, i8* %4, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (...) @v_pci_card_list_display()
  br label %121

121:                                              ; preds = %119, %116
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local %struct.pcilst_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.pcilst_struct*, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @v_pci_card_list_display(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
