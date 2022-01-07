; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.csrow_info*, %struct.i7core_pvt* }
%struct.csrow_info = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.i7core_pvt = type { i32**, %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.pci_dev***, %struct.pci_dev** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MC_CONTROL = common dso_local global i32 0, align 4
@MC_STATUS = common dso_local global i32 0, align 4
@MC_MAX_DOD = common dso_local global i32 0, align 4
@MC_CHANNEL_MAPPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"QPI %d control=0x%08x status=0x%08x dod=0x%08x map=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ECC enabled with x%d SDCC\0A\00", align 1
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@EDAC_S4ECD4ED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ECC disabled\0A\00", align 1
@EDAC_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"DOD Max limits: DIMMS: %d, %d-ranked, %d-banked x%x x 0x%x\0A\00", align 1
@NUM_CHANS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Channel %i is not active\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Channel %i is disabled\0A\00", align 1
@MC_CHANNEL_DIMM_INIT_PARAMS = common dso_local global i32 0, align 4
@QUAD_RANK_PRESENT = common dso_local global i32 0, align 4
@REGISTERED_DIMM = common dso_local global i32 0, align 4
@MEM_RDDR3 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM0 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM1 = common dso_local global i32 0, align 4
@MC_DOD_CH_DIMM2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Ch%d phy rd%d, wr%d (0x%08x): %d ranks, %cDIMMs\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\09dimm %d %d Mb offset: %x, bank: %d, rank: %d, row: %#x, col: %#x\0A\00", align 1
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"CPU#%uChannel#%u_DIMM#%u\00", align 1
@MC_SAG_CH_0 = common dso_local global i32 0, align 4
@MC_SAG_CH_1 = common dso_local global i32 0, align 4
@MC_SAG_CH_2 = common dso_local global i32 0, align 4
@MC_SAG_CH_3 = common dso_local global i32 0, align 4
@MC_SAG_CH_4 = common dso_local global i32 0, align 4
@MC_SAG_CH_5 = common dso_local global i32 0, align 4
@MC_SAG_CH_6 = common dso_local global i32 0, align 4
@MC_SAG_CH_7 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"\09[%i] DIVBY3\09REMOVED\09OFFSET\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\09\09%#x\09%#x\09%#x\0A\00", align 1
@SINGLE_QUAD_RANK_PRESENT = common dso_local global i32 0, align 4
@THREE_DIMMS_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7core_pvt*, align 8
  %5 = alloca %struct.csrow_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 1
  %24 = load %struct.i7core_pvt*, %struct.i7core_pvt** %23, align 8
  store %struct.i7core_pvt* %24, %struct.i7core_pvt** %4, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %25 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %26 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %25, i32 0, i32 5
  %27 = load %struct.pci_dev**, %struct.pci_dev*** %26, align 8
  %28 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %27, i64 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %6, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = icmp ne %struct.pci_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %495

35:                                               ; preds = %1
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = load i32, i32* @MC_CONTROL, align 4
  %38 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %39 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %36, i32 %37, i32* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = load i32, i32* @MC_STATUS, align 4
  %44 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %45 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = call i32 @pci_read_config_dword(%struct.pci_dev* %42, i32 %43, i32* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = load i32, i32* @MC_MAX_DOD, align 4
  %50 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %51 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = call i32 @pci_read_config_dword(%struct.pci_dev* %48, i32 %49, i32* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = load i32, i32* @MC_CHANNEL_MAPPER, align 4
  %56 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %57 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = call i32 @pci_read_config_dword(%struct.pci_dev* %54, i32 %55, i32* %58)
  %60 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %61 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %66 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %70 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %74 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %78 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68, i32 %72, i32 %76, i32 %80)
  %82 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %83 = call i64 @ECC_ENABLED(%struct.i7core_pvt* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %35
  %86 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %87 = call i64 @ECCx8(%struct.i7core_pvt* %86)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 8, i32 4
  %91 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %93 = call i64 @ECCx8(%struct.i7core_pvt* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @EDAC_S8ECD8ED, align 4
  store i32 %96, i32* %11, align 4
  br label %99

97:                                               ; preds = %85
  %98 = load i32, i32* @EDAC_S4ECD4ED, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %97, %95
  br label %103

100:                                              ; preds = %35
  %101 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EDAC_NONE, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %105 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @numdimms(i32 %107)
  %109 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %110 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %112, 2
  %114 = call i32 @numrank(i32 %113)
  %115 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %116 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = ashr i32 %118, 4
  %120 = call i32 @numbank(i32 %119)
  %121 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %122 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 6
  %126 = call i32 @numrow(i32 %125)
  %127 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %128 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = ashr i32 %130, 9
  %132 = call i32 @numcol(i32 %131)
  %133 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %114, i32 %120, i32 %126, i32 %132)
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %491, %103
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @NUM_CHANS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %494

138:                                              ; preds = %134
  %139 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %140 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %139, i32 0, i32 4
  %141 = load %struct.pci_dev***, %struct.pci_dev**** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %141, i64 %143
  %145 = load %struct.pci_dev**, %struct.pci_dev*** %144, align 8
  %146 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %145, i64 0
  %147 = load %struct.pci_dev*, %struct.pci_dev** %146, align 8
  %148 = icmp ne %struct.pci_dev* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  br label %491

150:                                              ; preds = %138
  %151 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @CH_ACTIVE(%struct.i7core_pvt* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  br label %491

158:                                              ; preds = %150
  %159 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i64 @CH_DISABLED(%struct.i7core_pvt* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %491

166:                                              ; preds = %158
  %167 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %168 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %167, i32 0, i32 4
  %169 = load %struct.pci_dev***, %struct.pci_dev**** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %169, i64 %171
  %173 = load %struct.pci_dev**, %struct.pci_dev*** %172, align 8
  %174 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %173, i64 0
  %175 = load %struct.pci_dev*, %struct.pci_dev** %174, align 8
  %176 = load i32, i32* @MC_CHANNEL_DIMM_INIT_PARAMS, align 4
  %177 = call i32 @pci_read_config_dword(%struct.pci_dev* %175, i32 %176, i32* %13)
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @QUAD_RANK_PRESENT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 4, i32 2
  %184 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %185 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %184, i32 0, i32 2
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i32 %183, i32* %190, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @REGISTERED_DIMM, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %166
  %196 = load i32, i32* @MEM_RDDR3, align 4
  store i32 %196, i32* %12, align 4
  br label %199

197:                                              ; preds = %166
  %198 = load i32, i32* @MEM_DDR3, align 4
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %201 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %200, i32 0, i32 4
  %202 = load %struct.pci_dev***, %struct.pci_dev**** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %202, i64 %204
  %206 = load %struct.pci_dev**, %struct.pci_dev*** %205, align 8
  %207 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %206, i64 1
  %208 = load %struct.pci_dev*, %struct.pci_dev** %207, align 8
  %209 = load i32, i32* @MC_DOD_CH_DIMM0, align 4
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %211 = call i32 @pci_read_config_dword(%struct.pci_dev* %208, i32 %209, i32* %210)
  %212 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %213 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %212, i32 0, i32 4
  %214 = load %struct.pci_dev***, %struct.pci_dev**** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %214, i64 %216
  %218 = load %struct.pci_dev**, %struct.pci_dev*** %217, align 8
  %219 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %218, i64 1
  %220 = load %struct.pci_dev*, %struct.pci_dev** %219, align 8
  %221 = load i32, i32* @MC_DOD_CH_DIMM1, align 4
  %222 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %223 = call i32 @pci_read_config_dword(%struct.pci_dev* %220, i32 %221, i32* %222)
  %224 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %225 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %224, i32 0, i32 4
  %226 = load %struct.pci_dev***, %struct.pci_dev**** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.pci_dev**, %struct.pci_dev*** %226, i64 %228
  %230 = load %struct.pci_dev**, %struct.pci_dev*** %229, align 8
  %231 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %230, i64 1
  %232 = load %struct.pci_dev*, %struct.pci_dev** %231, align 8
  %233 = load i32, i32* @MC_DOD_CH_DIMM2, align 4
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %235 = call i32 @pci_read_config_dword(%struct.pci_dev* %232, i32 %233, i32* %234)
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %238 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @RDLCH(i32 %240, i32 %241)
  %243 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %244 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @WRLCH(i32 %246, i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %251 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %250, i32 0, i32 2
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* @REGISTERED_DIMM, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 82, i32 85
  %264 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %236, i32 %242, i32 %248, i32 %249, i32 %257, i32 %263)
  store i32 0, i32* %8, align 4
  br label %265

265:                                              ; preds = %423, %199
  %266 = load i32, i32* %8, align 4
  %267 = icmp slt i32 %266, 3
  br i1 %267, label %268, label %426

268:                                              ; preds = %265
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @DIMM_PRESENT(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  br label %423

276:                                              ; preds = %268
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @MC_DOD_NUMBANK(i32 %280)
  %282 = call i32 @numbank(i32 %281)
  store i32 %282, i32* %16, align 4
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @MC_DOD_NUMRANK(i32 %286)
  %288 = call i32 @numrank(i32 %287)
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @MC_DOD_NUMROW(i32 %292)
  %294 = call i32 @numrow(i32 %293)
  store i32 %294, i32* %18, align 4
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @MC_DOD_NUMCOL(i32 %298)
  %300 = call i32 @numcol(i32 %299)
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* %19, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %16, align 4
  %305 = mul nsw i32 %303, %304
  %306 = load i32, i32* %17, align 4
  %307 = mul nsw i32 %305, %306
  %308 = ashr i32 %307, 17
  store i32 %308, i32* %20, align 4
  %309 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %310 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %309, i32 0, i32 2
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @RANKOFFSET(i32 %323)
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %17, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %19, align 4
  %329 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %318, i32 %319, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328)
  %330 = load i32, i32* %20, align 4
  %331 = call i32 @MiB_TO_PAGES(i32 %330)
  store i32 %331, i32* %21, align 4
  %332 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %333 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %332, i32 0, i32 0
  %334 = load %struct.csrow_info*, %struct.csrow_info** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %334, i64 %336
  store %struct.csrow_info* %337, %struct.csrow_info** %5, align 8
  %338 = load i64, i64* %10, align 8
  %339 = add i64 %338, 1
  %340 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %341 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %340, i32 0, i32 0
  store i64 %339, i64* %341, align 8
  %342 = load i32, i32* %21, align 4
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* %10, align 8
  %345 = add i64 %344, %343
  store i64 %345, i64* %10, align 8
  %346 = load i64, i64* %10, align 8
  %347 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %348 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %347, i32 0, i32 1
  store i64 %346, i64* %348, align 8
  %349 = load i32, i32* %21, align 4
  %350 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %351 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %350, i32 0, i32 2
  store i32 %349, i32* %351, align 8
  %352 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %353 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %352, i32 0, i32 10
  store i64 0, i64* %353, align 8
  %354 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %355 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %354, i32 0, i32 3
  store i32 8, i32* %355, align 4
  %356 = load i32, i32* %9, align 4
  %357 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %358 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %357, i32 0, i32 4
  store i32 %356, i32* %358, align 8
  %359 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %360 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %359, i32 0, i32 5
  store i32 1, i32* %360, align 4
  %361 = load i32, i32* %7, align 4
  %362 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %363 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %362, i32 0, i32 8
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i64 0
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  store i32 %361, i32* %366, align 8
  %367 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %368 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %367, i32 0, i32 8
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i64 0
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 2
  store i64 0, i64* %371, align 8
  %372 = load i32, i32* %9, align 4
  %373 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %374 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %373, i32 0, i32 0
  %375 = load i32**, i32*** %374, align 8
  %376 = load i32, i32* %7, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32*, i32** %375, i64 %377
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %372, i32* %382, align 4
  %383 = load i32, i32* %16, align 4
  switch i32 %383, label %396 [
    i32 4, label %384
    i32 8, label %388
    i32 16, label %392
  ]

384:                                              ; preds = %276
  %385 = load i32, i32* @DEV_X4, align 4
  %386 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %387 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %386, i32 0, i32 9
  store i32 %385, i32* %387, align 8
  br label %400

388:                                              ; preds = %276
  %389 = load i32, i32* @DEV_X8, align 4
  %390 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %391 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %390, i32 0, i32 9
  store i32 %389, i32* %391, align 8
  br label %400

392:                                              ; preds = %276
  %393 = load i32, i32* @DEV_X16, align 4
  %394 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %395 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %394, i32 0, i32 9
  store i32 %393, i32* %395, align 8
  br label %400

396:                                              ; preds = %276
  %397 = load i32, i32* @DEV_UNKNOWN, align 4
  %398 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %399 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %398, i32 0, i32 9
  store i32 %397, i32* %399, align 8
  br label %400

400:                                              ; preds = %396, %392, %388, %384
  %401 = load i32, i32* %11, align 4
  %402 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %403 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %402, i32 0, i32 6
  store i32 %401, i32* %403, align 8
  %404 = load i32, i32* %12, align 4
  %405 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %406 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %405, i32 0, i32 7
  store i32 %404, i32* %406, align 4
  %407 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %408 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %407, i32 0, i32 8
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i64 0
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %414 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %413, i32 0, i32 1
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %7, align 4
  %419 = load i32, i32* %8, align 4
  %420 = call i32 @snprintf(i32 %412, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %417, i32 %418, i32 %419)
  %421 = load i32, i32* %9, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %9, align 4
  br label %423

423:                                              ; preds = %400, %275
  %424 = load i32, i32* %8, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %8, align 4
  br label %265

426:                                              ; preds = %265
  %427 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %428 = load i32, i32* @MC_SAG_CH_0, align 4
  %429 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %430 = call i32 @pci_read_config_dword(%struct.pci_dev* %427, i32 %428, i32* %429)
  %431 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %432 = load i32, i32* @MC_SAG_CH_1, align 4
  %433 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  %434 = call i32 @pci_read_config_dword(%struct.pci_dev* %431, i32 %432, i32* %433)
  %435 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %436 = load i32, i32* @MC_SAG_CH_2, align 4
  %437 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  %438 = call i32 @pci_read_config_dword(%struct.pci_dev* %435, i32 %436, i32* %437)
  %439 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %440 = load i32, i32* @MC_SAG_CH_3, align 4
  %441 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  %442 = call i32 @pci_read_config_dword(%struct.pci_dev* %439, i32 %440, i32* %441)
  %443 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %444 = load i32, i32* @MC_SAG_CH_4, align 4
  %445 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  %446 = call i32 @pci_read_config_dword(%struct.pci_dev* %443, i32 %444, i32* %445)
  %447 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %448 = load i32, i32* @MC_SAG_CH_5, align 4
  %449 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 5
  %450 = call i32 @pci_read_config_dword(%struct.pci_dev* %447, i32 %448, i32* %449)
  %451 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %452 = load i32, i32* @MC_SAG_CH_6, align 4
  %453 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 6
  %454 = call i32 @pci_read_config_dword(%struct.pci_dev* %451, i32 %452, i32* %453)
  %455 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %456 = load i32, i32* @MC_SAG_CH_7, align 4
  %457 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 7
  %458 = call i32 @pci_read_config_dword(%struct.pci_dev* %455, i32 %456, i32* %457)
  %459 = load i32, i32* %7, align 4
  %460 = call i32 (i8*, i32, ...) @debugf1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %459)
  store i32 0, i32* %8, align 4
  br label %461

461:                                              ; preds = %487, %426
  %462 = load i32, i32* %8, align 4
  %463 = icmp slt i32 %462, 8
  br i1 %463, label %464, label %490

464:                                              ; preds = %461
  %465 = load i32, i32* %8, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = ashr i32 %468, 27
  %470 = and i32 %469, 1
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = ashr i32 %474, 24
  %476 = and i32 %475, 7
  %477 = load i32, i32* %8, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %464
  br label %483

483:                                              ; preds = %482, %464
  %484 = phi i1 [ false, %464 ], [ true, %482 ]
  %485 = zext i1 %484 to i32
  %486 = call i32 (i8*, i32, ...) @debugf1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %470, i32 %476, i32 %485)
  br label %487

487:                                              ; preds = %483
  %488 = load i32, i32* %8, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %8, align 4
  br label %461

490:                                              ; preds = %461
  br label %491

491:                                              ; preds = %490, %163, %155, %149
  %492 = load i32, i32* %7, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %7, align 4
  br label %134

494:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %495

495:                                              ; preds = %494, %32
  %496 = load i32, i32* %2, align 4
  ret i32 %496
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @debugf0(i8*, ...) #1

declare dso_local i64 @ECC_ENABLED(%struct.i7core_pvt*) #1

declare dso_local i64 @ECCx8(%struct.i7core_pvt*) #1

declare dso_local i32 @numdimms(i32) #1

declare dso_local i32 @numrank(i32) #1

declare dso_local i32 @numbank(i32) #1

declare dso_local i32 @numrow(i32) #1

declare dso_local i32 @numcol(i32) #1

declare dso_local i32 @CH_ACTIVE(%struct.i7core_pvt*, i32) #1

declare dso_local i64 @CH_DISABLED(%struct.i7core_pvt*, i32) #1

declare dso_local i32 @RDLCH(i32, i32) #1

declare dso_local i32 @WRLCH(i32, i32) #1

declare dso_local i32 @DIMM_PRESENT(i32) #1

declare dso_local i32 @MC_DOD_NUMBANK(i32) #1

declare dso_local i32 @MC_DOD_NUMRANK(i32) #1

declare dso_local i32 @MC_DOD_NUMROW(i32) #1

declare dso_local i32 @MC_DOD_NUMCOL(i32) #1

declare dso_local i32 @RANKOFFSET(i32) #1

declare dso_local i32 @MiB_TO_PAGES(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @debugf1(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
