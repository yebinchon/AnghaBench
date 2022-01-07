; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_register_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_register_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_bridge = type { i32, %struct.acpiphp_slot*, %struct.pci_bus* }
%struct.acpiphp_slot = type { i32, i32, i32, i64, %struct.acpiphp_slot*, %struct.TYPE_2__, i32, i32, %struct.acpiphp_slot*, i32, %struct.acpiphp_bridge*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_bus = type { i32 }
%struct.acpiphp_func = type { i32, i32, i32, i64, %struct.acpiphp_func*, %struct.TYPE_2__, i32, i32, %struct.acpiphp_func*, i32, %struct.acpiphp_bridge*, i32 }
%struct.pci_dev = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@FUNC_HAS_EJ0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@FUNC_HAS_STA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_PS0\00", align 1
@FUNC_HAS_PS0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"_PS3\00", align 1
@FUNC_HAS_PS3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"_DCK\00", align 1
@FUNC_HAS_DCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"sibling found, but _SUN doesn't match!\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"found ACPI PCI Hotplug slot %llu at PCI %04x:%02x:%02x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"Slot %llu already registered by another hotplug driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"acpiphp_register_hotplug_slot failed (err code = 0x%x)\0A\00", align 1
@SLOT_ENABLED = common dso_local global i32 0, align 4
@SLOT_POWEREDON = common dso_local global i32 0, align 4
@acpiphp_dock_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to register dock device\0A\00", align 1
@post_dock_fixups = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to register a dock notifier\00", align 1
@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@handle_hotplug_event_func = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"failed to register interrupt notify handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @register_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_slot(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpiphp_bridge*, align 8
  %11 = alloca %struct.acpiphp_slot*, align 8
  %12 = alloca %struct.acpiphp_func*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pci_bus*, align 8
  %21 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.acpiphp_bridge*
  store %struct.acpiphp_bridge* %23, %struct.acpiphp_bridge** %10, align 8
  %24 = load i32, i32* @AE_OK, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %26 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %25, i32 0, i32 2
  %27 = load %struct.pci_bus*, %struct.pci_bus** %26, align 8
  store %struct.pci_bus* %27, %struct.pci_bus** %20, align 8
  %28 = load %struct.pci_bus*, %struct.pci_bus** %20, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @acpi_pci_check_ejectable(%struct.pci_bus* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @is_dock_device(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @AE_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %323

38:                                               ; preds = %32, %4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @acpi_evaluate_integer(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %15)
  %41 = load i64, i64* %15, align 8
  %42 = lshr i64 %41, 16
  %43 = and i64 %42, 65535
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = load i64, i64* %15, align 8
  %46 = and i64 %45, 65535
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.acpiphp_slot* @kzalloc(i32 80, i32 %48)
  %50 = bitcast %struct.acpiphp_slot* %49 to %struct.acpiphp_func*
  store %struct.acpiphp_func* %50, %struct.acpiphp_func** %12, align 8
  %51 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %52 = icmp ne %struct.acpiphp_func* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %54, i32* %5, align 4
  br label %323

55:                                               ; preds = %38
  %56 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %57 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %56, i32 0, i32 7
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %61 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %64 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @acpi_get_handle(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %67 = call i64 @ACPI_SUCCESS(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i32, i32* @FUNC_HAS_EJ0, align 4
  %71 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %72 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %55
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @acpi_get_handle(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %76 = call i64 @ACPI_SUCCESS(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @FUNC_HAS_STA, align 4
  %80 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %81 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @acpi_get_handle(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  %87 = call i64 @ACPI_SUCCESS(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @FUNC_HAS_PS0, align 4
  %91 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %92 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @acpi_get_handle(i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %13)
  %98 = call i64 @ACPI_SUCCESS(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @FUNC_HAS_PS3, align 4
  %102 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %103 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @acpi_get_handle(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %13)
  %109 = call i64 @ACPI_SUCCESS(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @FUNC_HAS_DCK, align 4
  %113 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %114 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %106
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @acpi_evaluate_integer(i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* null, i64* %16)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i64 @ACPI_FAILURE(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %125 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %16, align 8
  br label %129

129:                                              ; preds = %123, %117
  %130 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %131 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %130, i32 0, i32 1
  %132 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %131, align 8
  store %struct.acpiphp_slot* %132, %struct.acpiphp_slot** %11, align 8
  br label %133

133:                                              ; preds = %152, %129
  %134 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %135 = icmp ne %struct.acpiphp_slot* %134, null
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %138 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %17, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %144 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %142
  br label %156

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %154 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %153, i32 0, i32 4
  %155 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %154, align 8
  store %struct.acpiphp_slot* %155, %struct.acpiphp_slot** %11, align 8
  br label %133

156:                                              ; preds = %150, %133
  %157 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %158 = icmp ne %struct.acpiphp_slot* %157, null
  br i1 %158, label %226, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call %struct.acpiphp_slot* @kzalloc(i32 80, i32 %160)
  store %struct.acpiphp_slot* %161, %struct.acpiphp_slot** %11, align 8
  %162 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %163 = icmp ne %struct.acpiphp_slot* %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %166 = bitcast %struct.acpiphp_func* %165 to %struct.acpiphp_slot*
  %167 = call i32 @kfree(%struct.acpiphp_slot* %166)
  %168 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %168, i32* %5, align 4
  br label %323

169:                                              ; preds = %159
  %170 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %171 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %172 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %171, i32 0, i32 10
  store %struct.acpiphp_bridge* %170, %struct.acpiphp_bridge** %172, align 8
  %173 = load i32, i32* %17, align 4
  %174 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %175 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i64, i64* %16, align 8
  %177 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %178 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  %179 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %180 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %179, i32 0, i32 6
  %181 = call i32 @INIT_LIST_HEAD(i32* %180)
  %182 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %183 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %182, i32 0, i32 9
  %184 = call i32 @mutex_init(i32* %183)
  %185 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %186 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %185, i32 0, i32 1
  %187 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %186, align 8
  %188 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %189 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %188, i32 0, i32 4
  store %struct.acpiphp_slot* %187, %struct.acpiphp_slot** %189, align 8
  %190 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %191 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %192 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %191, i32 0, i32 1
  store %struct.acpiphp_slot* %190, %struct.acpiphp_slot** %192, align 8
  %193 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %194 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %198 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.pci_bus*, %struct.pci_bus** %20, align 8
  %201 = call i32 @pci_domain_nr(%struct.pci_bus* %200)
  %202 = load %struct.pci_bus*, %struct.pci_bus** %20, align 8
  %203 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %17, align 4
  %206 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %199, i32 %201, i32 %204, i32 %205)
  %207 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %208 = call i32 @acpiphp_register_hotplug_slot(%struct.acpiphp_slot* %207)
  store i32 %208, i32* %19, align 4
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %169
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* @EBUSY, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %218 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i64 %219)
  br label %224

221:                                              ; preds = %211
  %222 = load i32, i32* %19, align 4
  %223 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %221, %216
  br label %307

225:                                              ; preds = %169
  br label %226

226:                                              ; preds = %225, %156
  %227 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %228 = bitcast %struct.acpiphp_slot* %227 to %struct.acpiphp_func*
  %229 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %230 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %229, i32 0, i32 8
  store %struct.acpiphp_func* %228, %struct.acpiphp_func** %230, align 8
  %231 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %232 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %231, i32 0, i32 7
  %233 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %234 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %233, i32 0, i32 6
  %235 = call i32 @list_add_tail(i32* %232, i32* %234)
  %236 = load %struct.pci_bus*, %struct.pci_bus** %20, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %18, align 4
  %239 = call i32 @PCI_DEVFN(i32 %237, i32 %238)
  %240 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %236, i32 %239)
  store %struct.pci_dev* %240, %struct.pci_dev** %21, align 8
  %241 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %242 = icmp ne %struct.pci_dev* %241, null
  br i1 %242, label %243, label %253

243:                                              ; preds = %226
  %244 = load i32, i32* @SLOT_ENABLED, align 4
  %245 = load i32, i32* @SLOT_POWEREDON, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %248 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %252 = call i32 @pci_dev_put(%struct.pci_dev* %251)
  br label %253

253:                                              ; preds = %243, %226
  %254 = load i32, i32* %6, align 4
  %255 = call i64 @is_dock_device(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %283

257:                                              ; preds = %253
  %258 = load i32, i32* @FUNC_HAS_EJ0, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %261 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %259
  store i32 %263, i32* %261, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %266 = bitcast %struct.acpiphp_func* %265 to %struct.acpiphp_slot*
  %267 = call i64 @register_hotplug_dock_device(i32 %264, i32* @acpiphp_dock_ops, %struct.acpiphp_slot* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %257
  %270 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %257
  %272 = load i32, i32* @post_dock_fixups, align 4
  %273 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %274 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %277 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %276, i32 0, i32 5
  %278 = call i64 @register_dock_notifier(%struct.TYPE_2__* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %271
  %281 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %271
  br label %283

283:                                              ; preds = %282, %253
  %284 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %285 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @FUNC_HAS_DCK, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %303, label %290

290:                                              ; preds = %283
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %293 = load i32, i32* @handle_hotplug_event_func, align 4
  %294 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %295 = bitcast %struct.acpiphp_func* %294 to %struct.acpiphp_slot*
  %296 = call i32 @acpi_install_notify_handler(i32 %291, i32 %292, i32 %293, %struct.acpiphp_slot* %295)
  store i32 %296, i32* %14, align 4
  %297 = load i32, i32* %14, align 4
  %298 = call i64 @ACPI_FAILURE(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %290
  %301 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %290
  br label %305

303:                                              ; preds = %283
  %304 = load i32, i32* @AE_OK, align 4
  store i32 %304, i32* %14, align 4
  br label %305

305:                                              ; preds = %303, %302
  %306 = load i32, i32* %14, align 4
  store i32 %306, i32* %5, align 4
  br label %323

307:                                              ; preds = %224
  %308 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %309 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, -1
  store i32 %311, i32* %309, align 8
  %312 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %313 = getelementptr inbounds %struct.acpiphp_slot, %struct.acpiphp_slot* %312, i32 0, i32 4
  %314 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %313, align 8
  %315 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %10, align 8
  %316 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %315, i32 0, i32 1
  store %struct.acpiphp_slot* %314, %struct.acpiphp_slot** %316, align 8
  %317 = load %struct.acpiphp_slot*, %struct.acpiphp_slot** %11, align 8
  %318 = call i32 @kfree(%struct.acpiphp_slot* %317)
  %319 = load %struct.acpiphp_func*, %struct.acpiphp_func** %12, align 8
  %320 = bitcast %struct.acpiphp_func* %319 to %struct.acpiphp_slot*
  %321 = call i32 @kfree(%struct.acpiphp_slot* %320)
  %322 = load i32, i32* @AE_OK, align 4
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %307, %305, %164, %53, %36
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @acpi_pci_check_ejectable(%struct.pci_bus*, i32) #1

declare dso_local i64 @is_dock_device(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local %struct.acpiphp_slot* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @kfree(%struct.acpiphp_slot*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @acpiphp_register_hotplug_slot(%struct.acpiphp_slot*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @register_hotplug_dock_device(i32, i32*, %struct.acpiphp_slot*) #1

declare dso_local i64 @register_dock_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.acpiphp_slot*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
