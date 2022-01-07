; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_coretemp.c_adjust_tjmax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_coretemp.c_adjust_tjmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i64, i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unable to access MSR 0x17, assuming desktop CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Unable to access MSR 0xEE, for Tjmax, left at default\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Using relative temperature scale!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_x86*, i32, %struct.device*)* @adjust_tjmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_tjmax(%struct.cpuinfo_x86* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca %struct.cpuinfo_x86*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.device* %2, %struct.device** %6, align 8
  store i32 100000, i32* %7, align 4
  store i32 85000, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %15 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %16 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %19, %3
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %31 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %32 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %13, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %34 = icmp ne %struct.pci_dev* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 40960
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 40976
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  store i32 100000, i32* %7, align 4
  br label %53

52:                                               ; preds = %46, %35, %30
  store i32 90000, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %55 = call i32 @pci_dev_put(%struct.pci_dev* %54)
  br label %56

56:                                               ; preds = %53, %25
  %57 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 14
  br i1 %60, label %61, label %100

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @rdmsr_safe_on_cpu(i32 %65, i32 23, i32* %11, i32* %12)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @dev_warn(%struct.device* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %99

72:                                               ; preds = %64
  %73 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %74 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 23
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 268435456
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %98

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %12, align 4
  %84 = ashr i32 %83, 18
  %85 = and i32 %84, 7
  store i32 %85, i32* %14, align 4
  %86 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %87 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 23
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 5
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 7
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  store i32 90000, i32* %8, align 4
  store i32 105000, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %93, %82
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98, %69
  br label %100

100:                                              ; preds = %99, %61, %56
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @rdmsr_safe_on_cpu(i32 %104, i32 238, i32* %11, i32* %12)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i32 @dev_warn(%struct.device* %109, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %118

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, 1073741824
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %111
  br label %118

118:                                              ; preds = %117, %108
  br label %126

119:                                              ; preds = %100
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 100000
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 @dev_warn(%struct.device* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %118
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @rdmsr_safe_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
