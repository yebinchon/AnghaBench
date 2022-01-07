; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_enable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.msix_entry = type { i32, i32 }

@PCIE_PORT_DEVICE_MAXSERVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCIE_PORT_MAX_MSIX_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS_IRQ = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_PME_SHIFT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_HP_SHIFT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_AER_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32)* @pcie_port_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_port_enable_msix(%struct.pci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msix_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call i32 @pci_msix_table_size(%struct.pci_dev* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %215

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @PCIE_PORT_MAX_MSIX_ENTRIES, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PCIE_PORT_MAX_MSIX_ENTRIES, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.msix_entry* @kzalloc(i32 %42, i32 %43)
  store %struct.msix_entry* %44, %struct.msix_entry** %8, align 8
  %45 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %46 = icmp ne %struct.msix_entry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %215

50:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %57, i64 %59
  %61 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %51

65:                                               ; preds = %51
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @pci_enable_msix(%struct.pci_dev* %66, %struct.msix_entry* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %208

73:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %82, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %24, i64 %80
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %74

85:                                               ; preds = %74
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %90 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %85
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = load i32, i32* @PCI_EXP_FLAGS, align 4
  %97 = call i32 @pcie_capability_read_word(%struct.pci_dev* %95, i32 %96, i32* %16)
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @PCI_EXP_FLAGS_IRQ, align 4
  %100 = and i32 %98, %99
  %101 = ashr i32 %100, 9
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %212

106:                                              ; preds = %94
  %107 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @pcie_port_msix_add_entry(%struct.msix_entry* %107, i32 %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %114, %106
  %118 = load i32, i32* %14, align 4
  %119 = load i64, i64* @PCIE_PORT_SERVICE_PME_SHIFT, align 8
  %120 = getelementptr inbounds i32, i32* %24, i64 %119
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i64, i64* @PCIE_PORT_SERVICE_HP_SHIFT, align 8
  %123 = getelementptr inbounds i32, i32* %24, i64 %122
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %85
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %124
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %132 = call i32 @pci_find_ext_capability(%struct.pci_dev* %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @pci_read_config_dword(%struct.pci_dev* %133, i64 %137, i32* %17)
  %139 = load i32, i32* %17, align 4
  %140 = ashr i32 %139, 27
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %212

145:                                              ; preds = %129
  %146 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @pcie_port_msix_add_entry(%struct.msix_entry* %146, i32 %147, i32 %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %153, %145
  %157 = load i32, i32* %14, align 4
  %158 = load i64, i64* @PCIE_PORT_SERVICE_AER_SHIFT, align 8
  %159 = getelementptr inbounds i32, i32* %24, i64 %158
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %124
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 0, i32* %12, align 4
  br label %176

165:                                              ; preds = %160
  %166 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %167 = call i32 @pci_disable_msix(%struct.pci_dev* %166)
  %168 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %169 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @pci_enable_msix(%struct.pci_dev* %168, %struct.msix_entry* %169, i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %208

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %164
  store i32 0, i32* %14, align 4
  br label %177

177:                                              ; preds = %204, %176
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %24, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %24, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %188, i64 %193
  %195 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  br label %198

197:                                              ; preds = %181
  br label %198

198:                                              ; preds = %197, %187
  %199 = phi i32 [ %196, %187 ], [ -1, %197 ]
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %198
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %177

207:                                              ; preds = %177
  br label %208

208:                                              ; preds = %212, %207, %174, %72
  %209 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %210 = call i32 @kfree(%struct.msix_entry* %209)
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %215

212:                                              ; preds = %144, %105
  %213 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %214 = call i32 @pci_disable_msix(%struct.pci_dev* %213)
  br label %208

215:                                              ; preds = %208, %47, %29
  %216 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_msix_table_size(%struct.pci_dev*) #2

declare dso_local %struct.msix_entry* @kzalloc(i32, i32) #2

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.msix_entry*, i32) #2

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #2

declare dso_local i32 @pcie_port_msix_add_entry(%struct.msix_entry*, i32, i32) #2

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #2

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #2

declare dso_local i32 @kfree(%struct.msix_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
