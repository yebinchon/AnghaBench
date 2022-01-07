; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bridge.c_pci_conf0_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bridge.c_pci_conf0_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.bridge_controller = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@PCI_VENDOR_ID = common dso_local global i64 0, align 8
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SGI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SGI_IOC3 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_conf0_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf0_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bridge_controller*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus* %21)
  store %struct.bridge_controller* %22, %struct.bridge_controller** %12, align 8
  %23 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %24 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PCI_SLOT(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PCI_FUNC(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* @PCI_VENDOR_ID, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %16, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = call i32 @get_dbe(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %5
  %51 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %51, i32* %6, align 4
  br label %168

52:                                               ; preds = %5
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @PCI_VENDOR_ID_SGI, align 4
  %55 = load i32, i32* @PCI_DEVICE_ID_SGI_IOC3, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %54, %56
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %113

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 4, %75
  %77 = xor i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %73, i64 %78
  store i8* %79, i8** %16, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %60
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %16, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = call i32 @get_dbe(i32 %84, i32* %86)
  store i32 %87, i32* %20, align 4
  br label %104

88:                                               ; preds = %60
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = call i32 @get_dbe(i32 %93, i32* %95)
  store i32 %96, i32* %20, align 4
  br label %103

97:                                               ; preds = %88
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %16, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = call i32 @get_dbe(i32 %99, i32* %101)
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %82
  %105 = load i32, i32* %20, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %6, align 4
  br label %168

113:                                              ; preds = %59
  %114 = load i32, i32* %9, align 4
  %115 = icmp sge i32 %114, 20
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 64
  br i1 %118, label %122, label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %9, align 4
  %121 = icmp sge i32 %120, 72
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @emulate_ioc3_cfg(i32 %123, i32 %124)
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %127, i32* %6, align 4
  br label %168

128:                                              ; preds = %119
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = ashr i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8* %145, i8** %16, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i8*, i8** %16, align 8
  %148 = bitcast i8* %147 to i32*
  %149 = call i32 @get_dbe(i32 %146, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %128
  %152 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %152, i32* %6, align 4
  br label %168

153:                                              ; preds = %128
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, 3
  %156 = shl i32 %155, 3
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 4, %157
  %159 = shl i32 %158, 3
  %160 = lshr i32 -1, %159
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = ashr i32 %161, %162
  %164 = load i32, i32* %19, align 4
  %165 = and i32 %163, %164
  %166 = load i32*, i32** %11, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %153, %151, %122, %111, %50
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @get_dbe(i32, i32*) #1

declare dso_local i32 @emulate_ioc3_cfg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
