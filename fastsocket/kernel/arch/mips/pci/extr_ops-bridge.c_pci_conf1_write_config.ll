; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bridge.c_pci_conf1_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bridge.c_pci_conf1_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.bridge_controller = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SGI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SGI_IOC3 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_conf1_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf1_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bridge_controller*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %24 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus* %23)
  store %struct.bridge_controller* %24, %struct.bridge_controller** %12, align 8
  %25 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %26 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %13, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PCI_SLOT(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PCI_FUNC(i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %14, align 4
  %38 = shl i32 %37, 11
  %39 = or i32 %36, %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* @PCI_VENDOR_ID, align 4
  %49 = or i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8* %51, i8** %17, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i8*, i8** %17, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = call i64 @get_dbe(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %5
  %58 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %58, i32* %6, align 4
  br label %175

59:                                               ; preds = %5
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @PCI_VENDOR_ID_SGI, align 4
  %62 = load i32, i32* @PCI_DEVICE_ID_SGI_IOC3, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %61, %63
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %109

67:                                               ; preds = %59
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 4, %75
  %77 = xor i32 %74, %76
  %78 = or i32 %73, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %71, i64 %79
  store i8* %80, i8** %17, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %17, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = call i32 @put_dbe(i32 %84, i32* %86)
  store i32 %87, i32* %22, align 4
  br label %102

88:                                               ; preds = %67
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = load i8*, i8** %17, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = call i32 @put_dbe(i32 %92, i32* %94)
  store i32 %95, i32* %22, align 4
  br label %101

96:                                               ; preds = %88
  %97 = load i32, i32* %11, align 4
  %98 = load i8*, i8** %17, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = call i32 @put_dbe(i32 %97, i32* %99)
  store i32 %100, i32* %22, align 4
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %106, i32* %6, align 4
  br label %175

107:                                              ; preds = %102
  %108 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %108, i32* %6, align 4
  br label %175

109:                                              ; preds = %66
  %110 = load i32, i32* %9, align 4
  %111 = icmp sge i32 %110, 20
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 64
  br i1 %114, label %118, label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %9, align 4
  %117 = icmp sge i32 %116, 72
  br i1 %117, label %118, label %120

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %119, i32* %6, align 4
  br label %175

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = ashr i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8* %137, i8** %17, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i8*, i8** %17, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = call i64 @get_dbe(i32 %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %120
  %144 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %144, i32* %6, align 4
  br label %175

145:                                              ; preds = %120
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, 3
  %148 = shl i32 %147, 3
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 4, %149
  %151 = shl i32 %150, 3
  %152 = lshr i32 -1, %151
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %19, align 4
  %155 = shl i32 %153, %154
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %21, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %20, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* %19, align 4
  %164 = shl i32 %162, %163
  %165 = or i32 %159, %164
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i8*, i8** %17, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = call i32 @put_dbe(i32 %166, i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %145
  %172 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %172, i32* %6, align 4
  br label %175

173:                                              ; preds = %145
  %174 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %171, %143, %118, %107, %105, %57
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @get_dbe(i32, i32*) #1

declare dso_local i32 @put_dbe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
