; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_enable_ecrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_enable_ecrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device, %struct.TYPE_4__* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pci_dev* }

@myri10ge_ecrc_enable = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to find root port to force ECRC\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Forcing ECRC on non-root port %s (enabling on root port %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Not enabling ECRC on non-root port %s\0A\00", align 1
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"failed reading ext-conf-space of %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"\09 pci=nommconf in use? or buggy/incomplete/absent ACPI MCFG attr?\0A\00", align 1
@PCI_ERR_CAP_ECRC_GENC = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_GENE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Enabled ECRC on upstream bridge %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_enable_ecrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_enable_ecrc(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %10 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %11 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %3, align 8
  %17 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %18 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load i32, i32* @myri10ge_ecrc_enable, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %1
  br label %116

27:                                               ; preds = %23
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = call i64 @pci_pcie_type(%struct.pci_dev* %28)
  %30 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %27
  %33 = load i32, i32* @myri10ge_ecrc_enable, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %36, %struct.pci_dev** %9, align 8
  br label %37

37:                                               ; preds = %54, %35
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %38, %struct.pci_dev** %8, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.pci_dev*, %struct.pci_dev** %42, align 8
  store %struct.pci_dev* %43, %struct.pci_dev** %3, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = icmp ne %struct.pci_dev* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = icmp eq %struct.pci_dev* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %37
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %116

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i64 @pci_pcie_type(%struct.pci_dev* %55)
  %57 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %37, label %59

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %62 = call i32 @pci_name(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pci_name(%struct.pci_dev* %63)
  %65 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  br label %71

66:                                               ; preds = %32
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = call i32 @pci_name(%struct.pci_dev* %68)
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %116

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %27
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %75 = call i32 @pci_find_ext_capability(%struct.pci_dev* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %116

79:                                               ; preds = %72
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @PCI_ERR_CAP, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i64 %84, i32* %6)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = call i32 @pci_name(%struct.pci_dev* %90)
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  br label %116

95:                                               ; preds = %79
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @PCI_ERR_CAP_ECRC_GENC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %116

101:                                              ; preds = %95
  %102 = load i32, i32* @PCI_ERR_CAP_ECRC_GENE, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @PCI_ERR_CAP, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @pci_write_config_dword(%struct.pci_dev* %105, i64 %109, i32 %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = call i32 @pci_name(%struct.pci_dev* %113)
  %115 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %101, %100, %88, %78, %66, %50, %26
  ret void
}

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
