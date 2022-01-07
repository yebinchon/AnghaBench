; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"No device node for mac, not configuring\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"no mac address in device tree, not configuring\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%hhx:%hhx:%hhx:%hhx:%hhx:%hhx\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"can't parse mac address, not configuring\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pasemi_mac*)* @pasemi_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_get_mac_addr(%struct.pasemi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pasemi_mac*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [6 x i32], align 16
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %3, align 8
  %9 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %10 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %12)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32* @of_get_property(%struct.device_node* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %32 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @memcpy(i32 %33, i32* %34, i32 6)
  store i32 0, i32* %2, align 4
  br label %73

36:                                               ; preds = %27, %22
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i32* @of_get_property(%struct.device_node* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %42
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  %59 = call i32 @sscanf(i32* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 6
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %73

67:                                               ; preds = %51
  %68 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %69 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %72 = call i32 @memcpy(i32 %70, i32* %71, i32 6)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %61, %45, %30, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
