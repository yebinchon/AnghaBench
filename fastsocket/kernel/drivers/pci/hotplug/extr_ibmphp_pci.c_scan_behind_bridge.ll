; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_scan_behind_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_scan_behind_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.res_needed = type { i32*, i32, i64, i64, i64 }
%struct.pci_func = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_2 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_3 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_4 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_5 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ibmphp_pci_bus = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"the bus_no behind the bridge is %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"scanning devices behind the bridge...\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NOTVALID = common dso_local global i64 0, align 8
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"hdr_type behind the bridge is %x\0A\00", align 1
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"embedded bridges not supported for hot-plugging.\0A\00", align 1
@PCI_CLASS_NOT_DEFINED_VGA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [105 x i8] c"The device %x is VGA compatible and as is not supported for hot plugging. Please choose another device.\0A\00", align 1
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"The device %x is not supported for hot plugging. Please choose another device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"what is bar[count]? %x, count = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"count %d device %x function %x wants %x resources\0A\00", align 1
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@IOBRIDGE = common dso_local global i64 0, align 8
@MEMBRIDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.res_needed* (%struct.pci_func*, i32)* @scan_behind_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.res_needed* @scan_behind_bridge(%struct.pci_func* %0, i32 %1) #0 {
  %3 = alloca %struct.res_needed*, align 8
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca [7 x i32], align 16
  %17 = alloca %struct.res_needed*, align 8
  store %struct.pci_func* %0, %struct.pci_func** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %13, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  %19 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @PCI_BASE_ADDRESS_2, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @PCI_BASE_ADDRESS_3, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @PCI_BASE_ADDRESS_4, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @PCI_BASE_ADDRESS_5, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.res_needed* @kzalloc(i32 40, i32 %31)
  store %struct.res_needed* %32, %struct.res_needed** %17, align 8
  %33 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %34 = icmp eq %struct.res_needed* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store %struct.res_needed* null, %struct.res_needed** %3, align 8
  br label %352

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ibmphp_pci_bus, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %293, %36
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %296

46:                                               ; preds = %43
  %47 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %48 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 0, i32* %52, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %289, %46
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %292

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @PCI_DEVFN(i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ibmphp_pci_bus, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @PCI_VENDOR_ID, align 4
  %63 = call i32 @pci_bus_read_config_word(%struct.TYPE_6__* %60, i32 %61, i32 %62, i64* %8)
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @PCI_VENDOR_ID_NOTVALID, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %288

67:                                               ; preds = %56
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ibmphp_pci_bus, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %73 = call i32 @pci_bus_read_config_byte(%struct.TYPE_6__* %70, i32 %71, i32 %72, i32* %9)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ibmphp_pci_bus, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %77 = call i32 @pci_bus_read_config_dword(%struct.TYPE_6__* %74, i32 %75, i32 %76, i32* %15)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %87 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  store %struct.res_needed* %88, %struct.res_needed** %3, align 8
  br label %352

89:                                               ; preds = %67
  %90 = load i32, i32* %15, align 4
  %91 = ashr i32 %90, 8
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @PCI_CLASS_NOT_DEFINED_VGA, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %99 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  %100 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  store %struct.res_needed* %100, %struct.res_needed** %3, align 8
  br label %352

101:                                              ; preds = %89
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %109 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  %110 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  store %struct.res_needed* %110, %struct.res_needed** %3, align 8
  br label %352

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %114 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 1, i32* %118, align 4
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %284, %112
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %287

125:                                              ; preds = %119
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ibmphp_pci_bus, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @pci_bus_write_config_dword(%struct.TYPE_6__* %126, i32 %127, i32 %131, i32 -1)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ibmphp_pci_bus, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %140
  %142 = call i32 @pci_bus_read_config_dword(%struct.TYPE_6__* %133, i32 %134, i32 %138, i32* %141)
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %125
  br label %284

155:                                              ; preds = %125
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %156, i32 %157, i32 %158, i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %155
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, -4
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %178
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = xor i32 %183, -1
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %187
  store i32 %185, i32* %188, align 4
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %195 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %193
  store i64 %197, i64* %195, align 8
  br label %283

198:                                              ; preds = %155
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %244

206:                                              ; preds = %198
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, -16
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %213
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = xor i32 %218, -1
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %222
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %230 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, %228
  store i64 %232, i64* %230, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %206
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %240, %206
  br label %282

244:                                              ; preds = %198
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, -16
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %251
  store i32 %249, i32* %252, align 4
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %256, -1
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %260
  store i32 %258, i32* %261, align 4
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %268 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, %266
  store i64 %270, i64* %268, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %244
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %281

281:                                              ; preds = %278, %244
  br label %282

282:                                              ; preds = %281, %243
  br label %283

283:                                              ; preds = %282, %171
  br label %284

284:                                              ; preds = %283, %154
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %6, align 4
  br label %119

287:                                              ; preds = %119
  br label %288

288:                                              ; preds = %287, %56
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %53

292:                                              ; preds = %53
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %43

296:                                              ; preds = %43
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  %300 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %301 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %300, i32 0, i32 1
  store i32 1, i32* %301, align 8
  br label %305

302:                                              ; preds = %296
  %303 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %304 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %303, i32 0, i32 1
  store i32 0, i32* %304, align 8
  br label %305

305:                                              ; preds = %302, %299
  %306 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %307 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %305
  %311 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %312 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @IOBRIDGE, align 8
  %315 = icmp slt i64 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load i64, i64* @IOBRIDGE, align 8
  %318 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %319 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %318, i32 0, i32 2
  store i64 %317, i64* %319, align 8
  br label %320

320:                                              ; preds = %316, %310, %305
  %321 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %322 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %320
  %326 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %327 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @MEMBRIDGE, align 8
  %330 = icmp slt i64 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %325
  %332 = load i64, i64* @MEMBRIDGE, align 8
  %333 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %334 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %333, i32 0, i32 4
  store i64 %332, i64* %334, align 8
  br label %335

335:                                              ; preds = %331, %325, %320
  %336 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %337 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %335
  %341 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %342 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @MEMBRIDGE, align 8
  %345 = icmp slt i64 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %340
  %347 = load i64, i64* @MEMBRIDGE, align 8
  %348 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  %349 = getelementptr inbounds %struct.res_needed, %struct.res_needed* %348, i32 0, i32 3
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %346, %340, %335
  %351 = load %struct.res_needed*, %struct.res_needed** %17, align 8
  store %struct.res_needed* %351, %struct.res_needed** %3, align 8
  br label %352

352:                                              ; preds = %350, %105, %95, %84, %35
  %353 = load %struct.res_needed*, %struct.res_needed** %3, align 8
  ret %struct.res_needed* %353
}

declare dso_local %struct.res_needed* @kzalloc(i32, i32) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_bus_read_config_word(%struct.TYPE_6__*, i32, i32, i64*) #1

declare dso_local i32 @pci_bus_read_config_byte(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @pci_bus_read_config_dword(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @pci_bus_write_config_dword(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
