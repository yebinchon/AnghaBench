; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_check_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i64, i64, i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32, i8*, %struct.pci_dev*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i32* }

@NETXEN_MAX_SHORT_NAME = common dso_local global i32 0, align 4
@NX_FW_SERIAL_NUM_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error reading board info\0A\00", align 1
@NETXEN_FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_MINOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_SUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to setup minidump rcode = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: %s Board S/N %s  Chip rev 0x%x\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"firmware version %d.%d.%d unsupported\0A\00", align 1
@NETXEN_SRE_MISC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"firmware v%d.%d.%d [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cut-through\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@CRB_FW_CAPABILITIES_1 = common dso_local global i32 0, align 4
@NETXEN_NIC_XGBE = common dso_local global i64 0, align 8
@DEFAULT_RCV_DESCRIPTORS_10G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_10G = common dso_local global i32 0, align 4
@NETXEN_NIC_GBE = common dso_local global i64 0, align 8
@DEFAULT_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@use_msi_x = common dso_local global i32 0, align 4
@NX_FW_VERSION_OFFSET = common dso_local global i32 0, align 4
@MAX_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@MAX_LRO_RCV_DESCRIPTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_check_options(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %18 = load i32, i32* @NETXEN_MAX_SHORT_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 12
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %15, align 8
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = bitcast [32 x i8]* %9 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load i32, i32* @NX_FW_SERIAL_NUM_OFFSET, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %54, %1
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %33, i32 %34, i32* %12)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  store i32 1, i32* %16, align 4
  br label %309

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %59 = load i32, i32* @NETXEN_FW_VERSION_MAJOR, align 4
  %60 = call i8* @NXRD32(%struct.netxen_adapter* %58, i32 %59)
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %3, align 8
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %63 = load i32, i32* @NETXEN_FW_VERSION_MINOR, align 4
  %64 = call i8* @NXRD32(%struct.netxen_adapter* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %4, align 8
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %67 = load i32, i32* @NETXEN_FW_VERSION_SUB, align 4
  %68 = call i8* @NXRD32(%struct.netxen_adapter* %66, i32 %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* %5, align 8
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %3, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %4, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @NETXEN_VERSION_CODE(i32 %74, i32 %76, i32 %78)
  %80 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @NX_IS_REVISION_P3(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %57
  %89 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %89, i32 0, i32 13
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %94, %88
  %101 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %101, i32 0, i32 13
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %106, i32 0, i32 13
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %110 = call i32 @netxen_setup_minidump(%struct.netxen_adapter* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %100
  %114 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %114, i32 0, i32 12
  %116 = load %struct.pci_dev*, %struct.pci_dev** %115, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %113, %100
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %57
  %123 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @get_brd_name_by_type(i32 %131, i8* %21)
  %133 = load i32, i32* @THIS_MODULE, align 4
  %134 = call i32 @module_name(i32 %133)
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %136 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %137 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %134, i8* %21, i8* %135, i32 %139)
  br label %141

141:                                              ; preds = %127, %122
  %142 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @NETXEN_VERSION_CODE(i32 3, i32 4, i32 216)
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %149 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @dev_warn(i32* %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %152, i64 %153, i64 %154)
  store i32 1, i32* %16, align 4
  br label %309

156:                                              ; preds = %141
  %157 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %158 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @NX_IS_REVISION_P3(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %156
  %164 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %165 = load i32, i32* @NETXEN_SRE_MISC, align 4
  %166 = call i8* @NXRD32(%struct.netxen_adapter* %164, i32 %165)
  %167 = ptrtoint i8* %166 to i32
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 32768
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 1, i32 0
  %173 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %174 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %163, %156
  %177 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = load i64, i64* %3, align 8
  %180 = load i64, i64* %4, align 8
  %181 = load i64, i64* %5, align 8
  %182 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %183 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %189 = call i32 @dev_info(i32* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %179, i64 %180, i64 %181, i8* %188)
  %190 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %191 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @NETXEN_VERSION_CODE(i32 4, i32 0, i32 222)
  %194 = icmp sge i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %176
  %196 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %197 = load i32, i32* @CRB_FW_CAPABILITIES_1, align 4
  %198 = call i8* @NXRD32(%struct.netxen_adapter* %196, i32 %197)
  %199 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %200 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %199, i32 0, i32 11
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %195, %176
  %202 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %203 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NETXEN_NIC_XGBE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %201
  %209 = load i32, i32* @DEFAULT_RCV_DESCRIPTORS_10G, align 4
  %210 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %211 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %210, i32 0, i32 10
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 4
  %213 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %214 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %213, i32 0, i32 9
  store i32 %212, i32* %214, align 4
  br label %230

215:                                              ; preds = %201
  %216 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %217 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @NETXEN_NIC_GBE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load i32, i32* @DEFAULT_RCV_DESCRIPTORS_1G, align 4
  %224 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %225 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %224, i32 0, i32 10
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @MAX_JUMBO_RCV_DESCRIPTORS_1G, align 4
  %227 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %228 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %222, %215
  br label %230

230:                                              ; preds = %229, %208
  %231 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %232 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %231, i32 0, i32 3
  store i32 0, i32* %232, align 8
  %233 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %234 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @NX_IS_REVISION_P3(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %254

239:                                              ; preds = %230
  %240 = load i32, i32* @use_msi_x, align 4
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %246 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* @use_msi_x, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %253 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  br label %287

254:                                              ; preds = %230
  store i64 0, i64* %17, align 8
  %255 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %256 = load i32, i32* @NX_FW_VERSION_OFFSET, align 4
  %257 = bitcast i64* %17 to i32*
  %258 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %255, i32 %256, i32* %257)
  %259 = load i64, i64* %17, align 8
  %260 = call i64 @NETXEN_DECODE_VERSION(i64 %259)
  store i64 %260, i64* %17, align 8
  %261 = load i64, i64* %17, align 8
  %262 = call i64 @NETXEN_VERSION_CODE(i32 3, i32 4, i32 336)
  %263 = icmp sge i64 %261, %262
  br i1 %263, label %264, label %286

264:                                              ; preds = %254
  %265 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %266 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %265, i32 0, i32 7
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  switch i32 %268, label %284 [
    i32 129, label %269
    i32 128, label %269
  ]

269:                                              ; preds = %264, %264
  %270 = load i32, i32* @use_msi_x, align 4
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %276 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %275, i32 0, i32 3
  store i32 %274, i32* %276, align 8
  %277 = load i32, i32* @use_msi_x, align 4
  %278 = icmp ne i32 %277, 0
  %279 = xor i1 %278, true
  %280 = xor i1 %279, true
  %281 = zext i1 %280 to i32
  %282 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %283 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 4
  br label %285

284:                                              ; preds = %264
  br label %285

285:                                              ; preds = %284, %269
  br label %286

286:                                              ; preds = %285, %254
  br label %287

287:                                              ; preds = %286, %239
  %288 = load i32, i32* @MAX_CMD_DESCRIPTORS, align 4
  %289 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %290 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 8
  %291 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %292 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = call i64 @NX_IS_REVISION_P2(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %287
  %298 = load i64, i64* @MAX_LRO_RCV_DESCRIPTORS, align 8
  %299 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %300 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %299, i32 0, i32 6
  store i64 %298, i64* %300, align 8
  %301 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %302 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %301, i32 0, i32 5
  store i32 3, i32* %302, align 8
  br label %308

303:                                              ; preds = %287
  %304 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %305 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %304, i32 0, i32 6
  store i64 0, i64* %305, align 8
  %306 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %307 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %306, i32 0, i32 5
  store i32 2, i32* %307, align 8
  br label %308

308:                                              ; preds = %303, %297
  store i32 0, i32* %16, align 4
  br label %309

309:                                              ; preds = %308, %147, %37
  %310 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %310)
  %311 = load i32, i32* %16, align 4
  switch i32 %311, label %313 [
    i32 0, label %312
    i32 1, label %312
  ]

312:                                              ; preds = %309, %309
  ret void

313:                                              ; preds = %309
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netxen_rom_fast_read(%struct.netxen_adapter*, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @NXRD32(%struct.netxen_adapter*, i32) #2

declare dso_local i64 @NETXEN_VERSION_CODE(i32, i32, i32) #2

declare dso_local i64 @NX_IS_REVISION_P3(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @netxen_setup_minidump(%struct.netxen_adapter*) #2

declare dso_local i32 @get_brd_name_by_type(i32, i8*) #2

declare dso_local i32 @pr_info(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @module_name(i32) #2

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, i64) #2

declare dso_local i32 @dev_info(i32*, i8*, i64, i64, i64, i8*) #2

declare dso_local i64 @NETXEN_DECODE_VERSION(i64) #2

declare dso_local i64 @NX_IS_REVISION_P2(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
