; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_reserve_mc_sibling_devs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_reserve_mc_sibling_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"error address map device not found: vendor %x device 0x%x (broken BIOS?)\0A\00", align 1
@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"error F3 device not found: vendor %x device 0x%x (broken BIOS?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"F1: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"F2: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"F3: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32)* @reserve_mc_sibling_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_mc_sibling_devs(%struct.amd64_pvt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_pvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %9 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %15 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i8* @pci_get_related_function(i32 %12, i32 %13, %struct.TYPE_4__* %16)
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 2
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %22 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @amd64_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %77

31:                                               ; preds = %3
  %32 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %33 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %39 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i8* @pci_get_related_function(i32 %36, i32 %37, %struct.TYPE_4__* %40)
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  %43 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %44 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %43, i32 0, i32 0
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %46 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %31
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %51 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @pci_dev_put(%struct.TYPE_4__* %52)
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %55 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %54, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %55, align 8
  %56 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @amd64_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %31
  %62 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %63 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = call i32 @pci_name(%struct.TYPE_4__* %64)
  %66 = call i32 @debugf1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %68 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @pci_name(%struct.TYPE_4__* %69)
  %71 = call i32 @debugf1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %73 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @pci_name(%struct.TYPE_4__* %74)
  %76 = call i32 @debugf1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %61, %49, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i8* @pci_get_related_function(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @amd64_err(i8*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_4__*) #1

declare dso_local i32 @debugf1(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
