; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_get_active_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_get_active_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Couldn't find socket %d fn 3.0!!!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MC_STATUS = common dso_local global i32 0, align 4
@MC_CONTROL = common dso_local global i32 0, align 4
@NUM_CHANS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Couldn't find socket %d fn %d.%d!!!\0A\00", align 1
@MC_DOD_CH_DIMM0 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM1 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Number of active channels on socket %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @i7core_get_active_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7core_get_active_channels(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %8, align 8
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.pci_dev* @get_pdev_slot_func(i32 %16, i32 3, i32 0)
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %19 = icmp ne %struct.pci_dev* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, i32, ...) @i7core_printk(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = load i32, i32* @MC_STATUS, align 4
  %29 = call i32 @pci_read_config_dword(%struct.pci_dev* %27, i32 %28, i32* %11)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = load i32, i32* @MC_CONTROL, align 4
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %30, i32 %31, i32* %12)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %102, %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NUM_CHANS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 8, %39
  %41 = shl i32 1, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %102

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %102

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 4
  %56 = call %struct.pci_dev* @get_pdev_slot_func(i32 %53, i32 %55, i32 1)
  store %struct.pci_dev* %56, %struct.pci_dev** %8, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %58 = icmp ne %struct.pci_dev* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 4
  %64 = call i32 (i32, i8*, i32, ...) @i7core_printk(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63, i32 1)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %110

67:                                               ; preds = %52
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = load i32, i32* @MC_DOD_CH_DIMM0, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %71 = call i32 @pci_read_config_dword(%struct.pci_dev* %68, i32 %69, i32* %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %73 = load i32, i32* @MC_DOD_CH_DIMM1, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %75 = call i32 @pci_read_config_dword(%struct.pci_dev* %72, i32 %73, i32* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %77 = load i32, i32* @MC_DOD_CH_DIMM2, align 4
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %79 = call i32 @pci_read_config_dword(%struct.pci_dev* %76, i32 %77, i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 4
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %98, %67
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DIMM_PRESENT(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %98

94:                                               ; preds = %86
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %94, %93
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %83

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %51, %44
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %33

105:                                              ; preds = %33
  %106 = load i32, i32* %5, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @debugf0(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %59, %20
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.pci_dev* @get_pdev_slot_func(i32, i32, i32) #1

declare dso_local i32 @i7core_printk(i32, i8*, i32, ...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @DIMM_PRESENT(i32) #1

declare dso_local i32 @debugf0(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
