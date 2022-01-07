; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bridge.c_pci_conf1_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bridge.c_pci_conf1_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.bridge_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SGI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SGI_IOC3 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_conf1_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf1_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bridge_controller*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %23 = call %struct.bridge_controller* @BRIDGE_CONTROLLER(%struct.pci_bus* %22)
  store %struct.bridge_controller* %23, %struct.bridge_controller** %12, align 8
  %24 = load %struct.bridge_controller*, %struct.bridge_controller** %12, align 8
  %25 = getelementptr inbounds %struct.bridge_controller, %struct.bridge_controller* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %13, align 8
  %27 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %28 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PCI_SLOT(i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @PCI_FUNC(i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %15, align 4
  %37 = shl i32 %36, 11
  %38 = or i32 %35, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* @PCI_VENDOR_ID, align 4
  %48 = or i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  store i8* %50, i8** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = call i32 @get_dbe(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %57, i32* %6, align 4
  br label %175

58:                                               ; preds = %5
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @PCI_VENDOR_ID_SGI, align 4
  %61 = load i32, i32* @PCI_DEVICE_ID_SGI_IOC3, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %120

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %15, align 4
  %70 = shl i32 %69, 11
  %71 = or i32 %68, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 4, %81
  %83 = xor i32 %80, %82
  %84 = or i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %77, i64 %85
  store i8* %86, i8** %17, align 8
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %95

89:                                               ; preds = %66
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %17, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = call i32 @get_dbe(i32 %91, i32* %93)
  store i32 %94, i32* %21, align 4
  br label %111

95:                                               ; preds = %66
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %17, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = call i32 @get_dbe(i32 %100, i32* %102)
  store i32 %103, i32* %21, align 4
  br label %110

104:                                              ; preds = %95
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %17, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = call i32 @get_dbe(i32 %106, i32* %108)
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %89
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %6, align 4
  br label %175

120:                                              ; preds = %65
  %121 = load i32, i32* %9, align 4
  %122 = icmp sge i32 %121, 20
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 64
  br i1 %125, label %129, label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %9, align 4
  %128 = icmp sge i32 %127, 72
  br i1 %128, label %129, label %135

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @emulate_ioc3_cfg(i32 %130, i32 %131)
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %134, i32* %6, align 4
  br label %175

135:                                              ; preds = %126
  %136 = load i32, i32* %14, align 4
  %137 = shl i32 %136, 16
  %138 = load i32, i32* %15, align 4
  %139 = shl i32 %138, 11
  %140 = or i32 %137, %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = shl i32 %147, 8
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8* %152, i8** %17, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i8*, i8** %17, align 8
  %155 = bitcast i8* %154 to i32*
  %156 = call i32 @get_dbe(i32 %153, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %135
  %159 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %159, i32* %6, align 4
  br label %175

160:                                              ; preds = %135
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, 3
  %163 = shl i32 %162, 3
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 4, %164
  %166 = shl i32 %165, 3
  %167 = lshr i32 -1, %166
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %19, align 4
  %170 = ashr i32 %168, %169
  %171 = load i32, i32* %20, align 4
  %172 = and i32 %170, %171
  %173 = load i32*, i32** %11, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %160, %158, %129, %118, %56
  %176 = load i32, i32* %6, align 4
  ret i32 %176
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
