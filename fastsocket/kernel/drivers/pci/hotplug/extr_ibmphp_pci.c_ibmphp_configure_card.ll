; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_ibmphp_configure_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_ibmphp_configure_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_func = type { i32, i32, i32, i32, i32**, i32**, i32**, %struct.pci_func*, i32*, i32* }

@.str = private unnamed_addr constant [41 x i8] c"inside configure_card, func->busno = %x\0A\00", align 1
@ibmphp_pci_bus = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"inside the loop, cur_func->busno = %x, cur_func->device = %x, cur_func->funcion = %x\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"vendor_id is %x\0A\00", align 1
@PCI_VENDOR_ID_NOTVALID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"found valid device, vendor_id = %x\0A\00", align 1
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"hrd_type = %x, class = %x, class_code %x\0A\00", align 1
@PCI_CLASS_NOT_DEFINED_VGA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [105 x i8] c"The device %x is VGA compatible and as is not supported for hot plugging. Please choose another device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [80 x i8] c"The device %x is not supported for hot plugging. Please choose another device.\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"single device case.... vendor id = %x, hdr_type = %x, class = %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"was not able to configure devfunc %x on bus %x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"was not able to configure devfunc %x on bus %x...bailing out\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"out of system memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [105 x i8] c"This %x is not PCI-to-PCI bridge, and as is not supported for hot-plugging. Please insert another card.\0A\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"You chose to insert Single Bridge, or nested bridges, this is not supported...\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Bus %x, devfunc %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"was not able to hot-add PPB properly.\0A\00", align 1
@PCI_SECONDARY_BUS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"class now is %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"cur_func->busno b4 configure_bridge is %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"cur_func->busno = %x, device = %x, function = %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"after configuring bridge..., sec_number = %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"inside for loop, device is %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c" out of system memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"MAJOR PROBLEM!!!!, header type not supported? %x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [74 x i8] c"Cannot find any valid devices on the card.  Or unable to read from card.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmphp_configure_card(%struct.pci_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_func*, align 8
  %14 = alloca %struct.pci_func*, align 8
  %15 = alloca %struct.pci_func*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.pci_func* %0, %struct.pci_func** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %21, align 4
  %23 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %24 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %28 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  store %struct.pci_func* %30, %struct.pci_func** %14, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %532, %2
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %535

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @PCI_DEVFN(i32 %35, i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %45 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %47 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %50 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %53 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* @PCI_VENDOR_ID, align 4
  %59 = call i32 @pci_bus_read_config_word(%struct.TYPE_5__* %56, i32 %57, i32 %58, i64* %6)
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @PCI_VENDOR_ID_NOTVALID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %531

66:                                               ; preds = %34
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %21, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %75 = call i32 @pci_bus_read_config_byte(%struct.TYPE_5__* %72, i32 %73, i32 %74, i32* %9)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %79 = call i32 @pci_bus_read_config_dword(%struct.TYPE_5__* %76, i32 %77, i32 %78, i32* %7)
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %80, 24
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 8
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PCI_CLASS_NOT_DEFINED_VGA, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %66
  %92 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %93 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %628

98:                                               ; preds = %66
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %104 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %628

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  switch i32 %111, label %525 [
    i32 128, label %112
    i32 129, label %135
    i32 130, label %193
    i32 131, label %378
  ]

112:                                              ; preds = %110
  %113 = load i64, i64* %6, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  %118 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @assign_alt_irq(%struct.pci_func* %118, i32 %119)
  %121 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %122 = call i32 @configure_device(%struct.pci_func* %121)
  store i32 %122, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %112
  %125 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %126 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %129 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %127, i32 %130)
  store i32 6, i32* %19, align 4
  br label %543

132:                                              ; preds = %112
  %133 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %134 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %133, i32 0, i32 7
  store %struct.pci_func* null, %struct.pci_func** %134, align 8
  store i32 8, i32* %12, align 4
  br label %530

135:                                              ; preds = %110
  %136 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @assign_alt_irq(%struct.pci_func* %136, i32 %137)
  %139 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %140 = call i32 @configure_device(%struct.pci_func* %139)
  store i32 %140, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %144 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %147 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %145, i32 %148)
  store i32 6, i32* %19, align 4
  br label %543

150:                                              ; preds = %135
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.pci_func* @kzalloc(i32 64, i32 %151)
  store %struct.pci_func* %152, %struct.pci_func** %13, align 8
  %153 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %154 = icmp ne %struct.pci_func* %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %628

159:                                              ; preds = %150
  %160 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %161 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %164 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %167 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %169 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %170 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %169, i32 0, i32 7
  store %struct.pci_func* %168, %struct.pci_func** %170, align 8
  %171 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  store %struct.pci_func* %171, %struct.pci_func** %14, align 8
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %189, %159
  %173 = load i32, i32* %18, align 4
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %192

175:                                              ; preds = %172
  %176 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %177 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %176, i32 0, i32 8
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %184 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %183, i32 0, i32 8
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  br label %189

189:                                              ; preds = %175
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %172

192:                                              ; preds = %172
  br label %530

193:                                              ; preds = %110
  %194 = load i32, i32* %7, align 4
  %195 = ashr i32 %194, 8
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %201 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.11, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %628

206:                                              ; preds = %193
  %207 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @assign_alt_irq(%struct.pci_func* %207, i32 %208)
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @configure_bridge(%struct.pci_func** %14, i32 %210)
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @ENODEV, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %206
  %217 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0))
  %218 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %219 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %222 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %220, i32 %223)
  %225 = load i32, i32* %16, align 4
  store i32 %225, i32* %3, align 4
  br label %628

226:                                              ; preds = %206
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %231 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %232 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %231, i32 0, i32 3
  store i32 1, i32* %232, align 4
  store i32 2, i32* %19, align 4
  br label %543

233:                                              ; preds = %226
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %237 = call i32 @pci_bus_read_config_byte(%struct.TYPE_5__* %234, i32 %235, i32 %236, i32* %11)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %238

238:                                              ; preds = %320, %233
  %239 = load i32, i32* %17, align 4
  %240 = icmp slt i32 %239, 32
  br i1 %240, label %241, label %323

241:                                              ; preds = %238
  %242 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %243 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %319

250:                                              ; preds = %241
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call %struct.pci_func* @kzalloc(i32 64, i32 %251)
  store %struct.pci_func* %252, %struct.pci_func** %13, align 8
  %253 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %254 = icmp ne %struct.pci_func* %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %250
  %256 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %628

259:                                              ; preds = %250
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %262 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %265 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  store i32 0, i32* %18, align 4
  br label %266

266:                                              ; preds = %283, %259
  %267 = load i32, i32* %18, align 4
  %268 = icmp slt i32 %267, 4
  br i1 %268, label %269, label %286

269:                                              ; preds = %266
  %270 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %271 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %270, i32 0, i32 8
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %278 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %277, i32 0, i32 8
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %18, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %269
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %18, align 4
  br label %266

286:                                              ; preds = %266
  %287 = load i32, i32* %20, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %286
  %290 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  store %struct.pci_func* %290, %struct.pci_func** %15, align 8
  br label %291

291:                                              ; preds = %297, %289
  %292 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %293 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %292, i32 0, i32 7
  %294 = load %struct.pci_func*, %struct.pci_func** %293, align 8
  %295 = icmp ne %struct.pci_func* %294, null
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %299 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %298, i32 0, i32 7
  %300 = load %struct.pci_func*, %struct.pci_func** %299, align 8
  store %struct.pci_func* %300, %struct.pci_func** %15, align 8
  br label %291

301:                                              ; preds = %291
  %302 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %303 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %304 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %303, i32 0, i32 7
  store %struct.pci_func* %302, %struct.pci_func** %304, align 8
  br label %309

305:                                              ; preds = %286
  %306 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %307 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %308 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %307, i32 0, i32 7
  store %struct.pci_func* %306, %struct.pci_func** %308, align 8
  br label %309

309:                                              ; preds = %305, %301
  %310 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %311 = load i32, i32* %5, align 4
  %312 = call i32 @ibmphp_configure_card(%struct.pci_func* %310, i32 %311)
  store i32 %312, i32* %16, align 4
  %313 = load i32, i32* %16, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %317 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %316, i32 0, i32 3
  store i32 1, i32* %317, align 4
  store i32 2, i32* %19, align 4
  br label %543

318:                                              ; preds = %309
  store i32 1, i32* %20, align 4
  br label %319

319:                                              ; preds = %318, %241
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %17, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %17, align 4
  br label %238

323:                                              ; preds = %238
  %324 = load i32, i32* @GFP_KERNEL, align 4
  %325 = call %struct.pci_func* @kzalloc(i32 64, i32 %324)
  store %struct.pci_func* %325, %struct.pci_func** %13, align 8
  %326 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %327 = icmp ne %struct.pci_func* %326, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %323
  %329 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %3, align 4
  br label %628

332:                                              ; preds = %323
  %333 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %334 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %337 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 8
  %338 = load i32, i32* %10, align 4
  %339 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %340 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  store i32 0, i32* %18, align 4
  br label %341

341:                                              ; preds = %358, %332
  %342 = load i32, i32* %18, align 4
  %343 = icmp slt i32 %342, 4
  br i1 %343, label %344, label %361

344:                                              ; preds = %341
  %345 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %346 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %345, i32 0, i32 8
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %18, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %353 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %352, i32 0, i32 8
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %18, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %351, i32* %357, align 4
  br label %358

358:                                              ; preds = %344
  %359 = load i32, i32* %18, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %18, align 4
  br label %341

361:                                              ; preds = %341
  %362 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  store %struct.pci_func* %362, %struct.pci_func** %15, align 8
  br label %363

363:                                              ; preds = %369, %361
  %364 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %365 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %364, i32 0, i32 7
  %366 = load %struct.pci_func*, %struct.pci_func** %365, align 8
  %367 = icmp ne %struct.pci_func* %366, null
  br i1 %367, label %368, label %373

368:                                              ; preds = %363
  br label %369

369:                                              ; preds = %368
  %370 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %371 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %370, i32 0, i32 7
  %372 = load %struct.pci_func*, %struct.pci_func** %371, align 8
  store %struct.pci_func* %372, %struct.pci_func** %15, align 8
  br label %363

373:                                              ; preds = %363
  %374 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %375 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %376 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %375, i32 0, i32 7
  store %struct.pci_func* %374, %struct.pci_func** %376, align 8
  %377 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  store %struct.pci_func* %377, %struct.pci_func** %14, align 8
  br label %530

378:                                              ; preds = %110
  %379 = load i32, i32* %7, align 4
  %380 = ashr i32 %379, 8
  store i32 %380, i32* %7, align 4
  %381 = load i32, i32* %7, align 4
  %382 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %381)
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %393

386:                                              ; preds = %378
  %387 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %388 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.11, i64 0, i64 0), i32 %389)
  %391 = load i32, i32* @ENODEV, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %3, align 4
  br label %628

393:                                              ; preds = %378
  %394 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %395 = load i32, i32* %8, align 4
  %396 = call i32 @assign_alt_irq(%struct.pci_func* %394, i32 %395)
  %397 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %398 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %399)
  %401 = load i32, i32* %5, align 4
  %402 = call i32 @configure_bridge(%struct.pci_func** %14, i32 %401)
  store i32 %402, i32* %16, align 4
  %403 = load i32, i32* %16, align 4
  %404 = load i32, i32* @ENODEV, align 4
  %405 = sub nsw i32 0, %404
  %406 = icmp eq i32 %403, %405
  br i1 %406, label %407, label %417

407:                                              ; preds = %393
  %408 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0))
  %409 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %410 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %413 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %411, i32 %414)
  %416 = load i32, i32* %16, align 4
  store i32 %416, i32* %3, align 4
  br label %628

417:                                              ; preds = %393
  %418 = load i32, i32* %16, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %417
  %421 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %422 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %421, i32 0, i32 3
  store i32 1, i32* %422, align 4
  %423 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  store i32 2, i32* %19, align 4
  br label %543

424:                                              ; preds = %417
  %425 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %426 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* %10, align 4
  %429 = load i32, i32* %12, align 4
  %430 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %427, i32 %428, i32 %429)
  %431 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %432 = load i32, i32* %22, align 4
  %433 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %434 = call i32 @pci_bus_read_config_byte(%struct.TYPE_5__* %431, i32 %432, i32 %433, i32* %11)
  %435 = load i32, i32* %11, align 4
  %436 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %435)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %437

437:                                              ; preds = %521, %424
  %438 = load i32, i32* %17, align 4
  %439 = icmp slt i32 %438, 32
  br i1 %439, label %440, label %524

440:                                              ; preds = %437
  %441 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %442 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %441, i32 0, i32 9
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %17, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %520

449:                                              ; preds = %440
  %450 = load i32, i32* %17, align 4
  %451 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* @GFP_KERNEL, align 4
  %453 = call %struct.pci_func* @kzalloc(i32 64, i32 %452)
  store %struct.pci_func* %453, %struct.pci_func** %13, align 8
  %454 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %455 = icmp ne %struct.pci_func* %454, null
  br i1 %455, label %460, label %456

456:                                              ; preds = %449
  %457 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %458 = load i32, i32* @ENOMEM, align 4
  %459 = sub nsw i32 0, %458
  store i32 %459, i32* %3, align 4
  br label %628

460:                                              ; preds = %449
  %461 = load i32, i32* %11, align 4
  %462 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %463 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %462, i32 0, i32 0
  store i32 %461, i32* %463, align 8
  %464 = load i32, i32* %17, align 4
  %465 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %466 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %465, i32 0, i32 1
  store i32 %464, i32* %466, align 4
  store i32 0, i32* %18, align 4
  br label %467

467:                                              ; preds = %484, %460
  %468 = load i32, i32* %18, align 4
  %469 = icmp slt i32 %468, 4
  br i1 %469, label %470, label %487

470:                                              ; preds = %467
  %471 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %472 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %471, i32 0, i32 8
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %18, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %479 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %478, i32 0, i32 8
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %18, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  store i32 %477, i32* %483, align 4
  br label %484

484:                                              ; preds = %470
  %485 = load i32, i32* %18, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %18, align 4
  br label %467

487:                                              ; preds = %467
  %488 = load i32, i32* %20, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %506

490:                                              ; preds = %487
  %491 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  store %struct.pci_func* %491, %struct.pci_func** %15, align 8
  br label %492

492:                                              ; preds = %498, %490
  %493 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %494 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %493, i32 0, i32 7
  %495 = load %struct.pci_func*, %struct.pci_func** %494, align 8
  %496 = icmp ne %struct.pci_func* %495, null
  br i1 %496, label %497, label %502

497:                                              ; preds = %492
  br label %498

498:                                              ; preds = %497
  %499 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %500 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %499, i32 0, i32 7
  %501 = load %struct.pci_func*, %struct.pci_func** %500, align 8
  store %struct.pci_func* %501, %struct.pci_func** %15, align 8
  br label %492

502:                                              ; preds = %492
  %503 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %504 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %505 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %504, i32 0, i32 7
  store %struct.pci_func* %503, %struct.pci_func** %505, align 8
  br label %510

506:                                              ; preds = %487
  %507 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %508 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %509 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %508, i32 0, i32 7
  store %struct.pci_func* %507, %struct.pci_func** %509, align 8
  br label %510

510:                                              ; preds = %506, %502
  %511 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %512 = load i32, i32* %5, align 4
  %513 = call i32 @ibmphp_configure_card(%struct.pci_func* %511, i32 %512)
  store i32 %513, i32* %16, align 4
  %514 = load i32, i32* %16, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %510
  %517 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %518 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %517, i32 0, i32 3
  store i32 1, i32* %518, align 4
  store i32 2, i32* %19, align 4
  br label %543

519:                                              ; preds = %510
  store i32 1, i32* %20, align 4
  br label %520

520:                                              ; preds = %519, %440
  br label %521

521:                                              ; preds = %520
  %522 = load i32, i32* %17, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %17, align 4
  br label %437

524:                                              ; preds = %437
  store i32 8, i32* %12, align 4
  br label %530

525:                                              ; preds = %110
  %526 = load i32, i32* %9, align 4
  %527 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 %526)
  %528 = load i32, i32* @ENXIO, align 4
  %529 = sub nsw i32 0, %528
  store i32 %529, i32* %3, align 4
  br label %628

530:                                              ; preds = %524, %373, %192, %132
  br label %531

531:                                              ; preds = %530, %34
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %12, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %12, align 4
  br label %31

535:                                              ; preds = %31
  %536 = load i32, i32* %21, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %542, label %538

538:                                              ; preds = %535
  %539 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.22, i64 0, i64 0))
  %540 = load i32, i32* @ENODEV, align 4
  %541 = sub nsw i32 0, %540
  store i32 %541, i32* %3, align 4
  br label %628

542:                                              ; preds = %535
  store i32 0, i32* %3, align 4
  br label %628

543:                                              ; preds = %516, %420, %315, %229, %142, %124
  store i32 0, i32* %17, align 4
  br label %544

544:                                              ; preds = %623, %543
  %545 = load i32, i32* %17, align 4
  %546 = load i32, i32* %19, align 4
  %547 = icmp slt i32 %545, %546
  br i1 %547, label %548, label %626

548:                                              ; preds = %544
  %549 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %550 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %549, i32 0, i32 6
  %551 = load i32**, i32*** %550, align 8
  %552 = load i32, i32* %17, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32*, i32** %551, i64 %553
  %555 = load i32*, i32** %554, align 8
  %556 = icmp ne i32* %555, null
  br i1 %556, label %557, label %572

557:                                              ; preds = %548
  %558 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %559 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %558, i32 0, i32 6
  %560 = load i32**, i32*** %559, align 8
  %561 = load i32, i32* %17, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32*, i32** %560, i64 %562
  %564 = load i32*, i32** %563, align 8
  %565 = call i32 @ibmphp_remove_resource(i32* %564)
  %566 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %567 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %566, i32 0, i32 6
  %568 = load i32**, i32*** %567, align 8
  %569 = load i32, i32* %17, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32*, i32** %568, i64 %570
  store i32* null, i32** %571, align 8
  br label %622

572:                                              ; preds = %548
  %573 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %574 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %573, i32 0, i32 5
  %575 = load i32**, i32*** %574, align 8
  %576 = load i32, i32* %17, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32*, i32** %575, i64 %577
  %579 = load i32*, i32** %578, align 8
  %580 = icmp ne i32* %579, null
  br i1 %580, label %581, label %596

581:                                              ; preds = %572
  %582 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %583 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %582, i32 0, i32 5
  %584 = load i32**, i32*** %583, align 8
  %585 = load i32, i32* %17, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32*, i32** %584, i64 %586
  %588 = load i32*, i32** %587, align 8
  %589 = call i32 @ibmphp_remove_resource(i32* %588)
  %590 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %591 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %590, i32 0, i32 5
  %592 = load i32**, i32*** %591, align 8
  %593 = load i32, i32* %17, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32*, i32** %592, i64 %594
  store i32* null, i32** %595, align 8
  br label %621

596:                                              ; preds = %572
  %597 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %598 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %597, i32 0, i32 4
  %599 = load i32**, i32*** %598, align 8
  %600 = load i32, i32* %17, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32*, i32** %599, i64 %601
  %603 = load i32*, i32** %602, align 8
  %604 = icmp ne i32* %603, null
  br i1 %604, label %605, label %620

605:                                              ; preds = %596
  %606 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %607 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %606, i32 0, i32 4
  %608 = load i32**, i32*** %607, align 8
  %609 = load i32, i32* %17, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32*, i32** %608, i64 %610
  %612 = load i32*, i32** %611, align 8
  %613 = call i32 @ibmphp_remove_resource(i32* %612)
  %614 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %615 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %614, i32 0, i32 4
  %616 = load i32**, i32*** %615, align 8
  %617 = load i32, i32* %17, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32*, i32** %616, i64 %618
  store i32* null, i32** %619, align 8
  br label %620

620:                                              ; preds = %605, %596
  br label %621

621:                                              ; preds = %620, %581
  br label %622

622:                                              ; preds = %621, %557
  br label %623

623:                                              ; preds = %622
  %624 = load i32, i32* %17, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %17, align 4
  br label %544

626:                                              ; preds = %544
  %627 = load i32, i32* %16, align 4
  store i32 %627, i32* %3, align 4
  br label %628

628:                                              ; preds = %626, %542, %538, %525, %456, %407, %386, %328, %255, %216, %199, %155, %102, %91
  %629 = load i32, i32* %3, align 4
  ret i32 %629
}

declare dso_local i32 @debug(i8*, i32, ...) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_bus_read_config_word(%struct.TYPE_5__*, i32, i32, i64*) #1

declare dso_local i32 @pci_bus_read_config_byte(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @pci_bus_read_config_dword(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @assign_alt_irq(%struct.pci_func*, i32) #1

declare dso_local i32 @configure_device(%struct.pci_func*) #1

declare dso_local %struct.pci_func* @kzalloc(i32, i32) #1

declare dso_local i32 @configure_bridge(%struct.pci_func**, i32) #1

declare dso_local i32 @ibmphp_remove_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
