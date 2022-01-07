; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_prepare_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_prepare_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, %struct.sym_tcb*, i32 }
%struct.sym_tcb = type { i32, i32, i32, i32 }
%struct.sym_nvram = type { i64 }
%struct.sym_data = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i32 }

@FE_WIDE = common dso_local global i32 0, align 4
@FE_ULTRA3 = common dso_local global i32 0, align 4
@FE_ULTRA2 = common dso_local global i32 0, align 4
@FE_ULTRA = common dso_local global i32 0, align 4
@FE_QUAD = common dso_local global i32 0, align 4
@FE_DBLR = common dso_local global i32 0, align 4
@FE_VARCLK = common dso_local global i32 0, align 4
@SYM_CONF_MIN_ASYNC = common dso_local global i64 0, align 8
@div_10M = common dso_local global i64* null, align 8
@FE_C10 = common dso_local global i32 0, align 4
@FE_DAC = common dso_local global i32 0, align 4
@DDAC = common dso_local global i32 0, align 4
@SYM_CONF_DMA_ADDRESSING_MODE = common dso_local global i32 0, align 4
@XTIMOD = common dso_local global i32 0, align 4
@EXTIBMV = common dso_local global i32 0, align 4
@FE_NOPM = common dso_local global i32 0, align 4
@ENPMJ = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_53C1010_33 = common dso_local global i64 0, align 8
@DILS = common dso_local global i32 0, align 4
@SYM_SETUP_BURST_ORDER = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NCR_53C810 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NCR_53C860 = common dso_local global i64 0, align 8
@FE_WRIE = common dso_local global i32 0, align 4
@FE_ERL = common dso_local global i32 0, align 4
@FE_ERMP = common dso_local global i32 0, align 4
@ERL = common dso_local global i32 0, align 4
@FE_BOF = common dso_local global i32 0, align 4
@BOF = common dso_local global i32 0, align 4
@ERMP = common dso_local global i32 0, align 4
@FE_PFEN = common dso_local global i32 0, align 4
@PFEN = common dso_local global i32 0, align 4
@FE_CLSE = common dso_local global i32 0, align 4
@CLSE = common dso_local global i32 0, align 4
@WRIE = common dso_local global i32 0, align 4
@FE_DFS = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@MPEE = common dso_local global i32 0, align 4
@nc_scid = common dso_local global i32 0, align 4
@SYM_SETUP_HOST_ID = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_LED = common dso_local global i64 0, align 8
@SYM_SYMBIOS_NVRAM = common dso_local global i64 0, align 8
@SYM_TEKRAM_NVRAM = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NCR_53C895 = common dso_local global i64 0, align 8
@FE_LEDC = common dso_local global i32 0, align 4
@FE_LED0 = common dso_local global i32 0, align 4
@SYM_SETUP_IRQ_MODE = common dso_local global i32 0, align 4
@IRQM = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i32 0, align 4
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@SYM_TAGS_ENABLED = common dso_local global i32 0, align 4
@SYM_SETUP_MAX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: %s, ID %d, Fast-%d, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"parity checking\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"NO parity\00", align 1
@sym_verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: %s IRQ line driver%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"totem pole\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c", using on-chip SRAM\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: using %s firmware.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: handling phase mismatch from SCRIPTS.\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"%s: initial SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"%s: final   SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.sym_hcb*, %struct.sym_nvram*)* @sym_prepare_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_prepare_setting(%struct.Scsi_Host* %0, %struct.sym_hcb* %1, %struct.sym_nvram* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.sym_nvram*, align 8
  %7 = alloca %struct.sym_data*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sym_tcb*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.sym_hcb* %1, %struct.sym_hcb** %5, align 8
  store %struct.sym_nvram* %2, %struct.sym_nvram** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call %struct.sym_data* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.sym_data* %14, %struct.sym_data** %7, align 8
  %15 = load %struct.sym_data*, %struct.sym_data** %7, align 8
  %16 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %19 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FE_WIDE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %27 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %29 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FE_ULTRA3, align 4
  %32 = load i32, i32* @FE_ULTRA2, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %38 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %37, i32 0, i32 2
  store i32 160000, i32* %38, align 8
  br label %53

39:                                               ; preds = %3
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %41 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FE_ULTRA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %48 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %47, i32 0, i32 2
  store i32 80000, i32* %48, align 8
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %51 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %50, i32 0, i32 2
  store i32 40000, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %55 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FE_QUAD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %62 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %61, i32 0, i32 3
  store i32 4, i32* %62, align 4
  br label %77

63:                                               ; preds = %53
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %65 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FE_DBLR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %72 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %71, i32 0, i32 3
  store i32 2, i32* %72, align 4
  br label %76

73:                                               ; preds = %63
  %74 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %75 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %79 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FE_VARCLK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %86 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %87 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sym_getclock(%struct.sym_hcb* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %77
  %91 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %92 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %116, %90
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load i64, i64* @SYM_CONF_MIN_ASYNC, align 8
  %101 = mul i64 10, %100
  %102 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %103 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 %101, %105
  %107 = load i64*, i64** @div_10M, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %106, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %117

116:                                              ; preds = %99
  br label %95

117:                                              ; preds = %113, %95
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  %120 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %121 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %123 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @FE_C10, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %130 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %129, i32 0, i32 5
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %117
  %132 = load i64*, i64** @div_10M, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = mul i64 4, %134
  %136 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %137 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %135, %139
  %141 = sub i64 %140, 1
  %142 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %143 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = udiv i64 %141, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp sle i32 %148, 250
  br i1 %149, label %150, label %153

150:                                              ; preds = %131
  %151 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %152 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %151, i32 0, i32 6
  store i32 10, i32* %152, align 8
  br label %174

153:                                              ; preds = %131
  %154 = load i32, i32* %10, align 4
  %155 = icmp sle i32 %154, 303
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %158 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %157, i32 0, i32 6
  store i32 11, i32* %158, align 8
  br label %173

159:                                              ; preds = %153
  %160 = load i32, i32* %10, align 4
  %161 = icmp sle i32 %160, 500
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %164 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %163, i32 0, i32 6
  store i32 12, i32* %164, align 8
  br label %172

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 40
  %168 = sub nsw i32 %167, 1
  %169 = sdiv i32 %168, 40
  %170 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %171 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %165, %162
  br label %173

173:                                              ; preds = %172, %156
  br label %174

174:                                              ; preds = %173, %150
  %175 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %176 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %177, 25
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %181 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @FE_ULTRA, align 4
  %184 = load i32, i32* @FE_ULTRA2, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @FE_ULTRA3, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %182, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %179
  %191 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %192 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %191, i32 0, i32 6
  store i32 25, i32* %192, align 8
  br label %211

193:                                              ; preds = %179, %174
  %194 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %195 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %196, 12
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %200 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @FE_ULTRA2, align 4
  %203 = load i32, i32* @FE_ULTRA3, align 4
  %204 = or i32 %202, %203
  %205 = and i32 %201, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %198
  %208 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %209 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %208, i32 0, i32 6
  store i32 12, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %198, %193
  br label %211

211:                                              ; preds = %210, %190
  %212 = load i64*, i64** @div_10M, align 8
  %213 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %214 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %212, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = mul i64 11, %219
  %221 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %222 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 4, %223
  %225 = sext i32 %224 to i64
  %226 = udiv i64 %220, %225
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp sgt i32 %228, 2540
  br i1 %229, label %230, label %231

230:                                              ; preds = %211
  br label %234

231:                                              ; preds = %211
  %232 = load i32, i32* %10, align 4
  %233 = sdiv i32 %232, 10
  br label %234

234:                                              ; preds = %231, %230
  %235 = phi i32 [ 254, %230 ], [ %233, %231 ]
  %236 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %237 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 4
  %238 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %239 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @FE_C10, align 4
  %242 = load i32, i32* @FE_ULTRA3, align 4
  %243 = or i32 %241, %242
  %244 = and i32 %240, %243
  %245 = load i32, i32* @FE_C10, align 4
  %246 = load i32, i32* @FE_ULTRA3, align 4
  %247 = or i32 %245, %246
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %268

249:                                              ; preds = %234
  %250 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %251 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 160000
  br i1 %253, label %254, label %267

254:                                              ; preds = %249
  %255 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %256 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %255, i32 0, i32 8
  store i32 9, i32* %256, align 8
  %257 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %258 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %257, i32 0, i32 9
  store i32 50, i32* %258, align 4
  %259 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %260 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 62, i32 31
  %265 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %266 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %265, i32 0, i32 10
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %254, %249
  br label %268

268:                                              ; preds = %267, %234
  %269 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %270 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @FE_DAC, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %309

275:                                              ; preds = %268
  %276 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %277 = call i32 @use_dac(%struct.sym_hcb* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = load i32, i32* @DDAC, align 4
  %281 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %282 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %281, i32 0, i32 11
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  br label %308

285:                                              ; preds = %275
  %286 = load i32, i32* @SYM_CONF_DMA_ADDRESSING_MODE, align 4
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %296

288:                                              ; preds = %285
  %289 = load i32, i32* @XTIMOD, align 4
  %290 = load i32, i32* @EXTIBMV, align 4
  %291 = or i32 %289, %290
  %292 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %293 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  br label %307

296:                                              ; preds = %285
  %297 = load i32, i32* @SYM_CONF_DMA_ADDRESSING_MODE, align 4
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = load i32, i32* @EXTIBMV, align 4
  %301 = or i32 0, %300
  %302 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %303 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %302, i32 0, i32 11
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %299, %296
  br label %307

307:                                              ; preds = %306, %288
  br label %308

308:                                              ; preds = %307, %279
  br label %309

309:                                              ; preds = %308, %268
  %310 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %311 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @FE_NOPM, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %309
  %317 = load i32, i32* @ENPMJ, align 4
  %318 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %319 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %318, i32 0, i32 31
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %322

322:                                              ; preds = %316, %309
  %323 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %324 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @PCI_DEVICE_ID_LSI_53C1010_33, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %322
  %329 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %330 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %331, 1
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = load i32, i32* @DILS, align 4
  %335 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %336 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %335, i32 0, i32 31
  %337 = load i32, i32* %336, align 8
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 8
  br label %339

339:                                              ; preds = %333, %328, %322
  %340 = load i32, i32* @SYM_SETUP_BURST_ORDER, align 4
  store i32 %340, i32* %9, align 4
  %341 = load i32, i32* %9, align 4
  %342 = icmp eq i32 %341, 255
  br i1 %342, label %343, label %354

343:                                              ; preds = %339
  %344 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %345 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %344, i32 0, i32 12
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %348 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %347, i32 0, i32 13
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %351 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %350, i32 0, i32 14
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @burst_code(i32 %346, i32 %349, i32 %352)
  store i32 %353, i32* %9, align 4
  br label %354

354:                                              ; preds = %343, %339
  %355 = load i32, i32* %9, align 4
  %356 = icmp sgt i32 %355, 7
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  store i32 7, i32* %9, align 4
  br label %358

358:                                              ; preds = %357, %354
  %359 = load i32, i32* %9, align 4
  %360 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %361 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %360, i32 0, i32 15
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %359, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %358
  %365 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %366 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %365, i32 0, i32 15
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %9, align 4
  br label %368

368:                                              ; preds = %364, %358
  %369 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %370 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @PCI_DEVICE_ID_NCR_53C810, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %384

374:                                              ; preds = %368
  %375 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %376 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = icmp sge i32 %377, 16
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %381 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = icmp sle i32 %382, 17
  br i1 %383, label %395, label %384

384:                                              ; preds = %379, %374, %368
  %385 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %386 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @PCI_DEVICE_ID_NCR_53C860, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %406

390:                                              ; preds = %384
  %391 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %392 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = icmp sle i32 %393, 1
  br i1 %394, label %395, label %406

395:                                              ; preds = %390, %379
  %396 = load i32, i32* @FE_WRIE, align 4
  %397 = load i32, i32* @FE_ERL, align 4
  %398 = or i32 %396, %397
  %399 = load i32, i32* @FE_ERMP, align 4
  %400 = or i32 %398, %399
  %401 = xor i32 %400, -1
  %402 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %403 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = and i32 %404, %401
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %395, %390, %384
  %407 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %408 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @FE_ERL, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %406
  %414 = load i32, i32* @ERL, align 4
  %415 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %416 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %415, i32 0, i32 16
  %417 = load i32, i32* %416, align 8
  %418 = or i32 %417, %414
  store i32 %418, i32* %416, align 8
  br label %419

419:                                              ; preds = %413, %406
  %420 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %421 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @FE_BOF, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %432

426:                                              ; preds = %419
  %427 = load i32, i32* @BOF, align 4
  %428 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %429 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %428, i32 0, i32 16
  %430 = load i32, i32* %429, align 8
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 8
  br label %432

432:                                              ; preds = %426, %419
  %433 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %434 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @FE_ERMP, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %432
  %440 = load i32, i32* @ERMP, align 4
  %441 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %442 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %441, i32 0, i32 16
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %440
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %439, %432
  %446 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %447 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @FE_PFEN, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %445
  %453 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %454 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %453, i32 0, i32 28
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %463, label %457

457:                                              ; preds = %452
  %458 = load i32, i32* @PFEN, align 4
  %459 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %460 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %459, i32 0, i32 17
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %461, %458
  store i32 %462, i32* %460, align 4
  br label %463

463:                                              ; preds = %457, %452, %445
  %464 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %465 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @FE_CLSE, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %463
  %471 = load i32, i32* @CLSE, align 4
  %472 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %473 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %472, i32 0, i32 17
  %474 = load i32, i32* %473, align 4
  %475 = or i32 %474, %471
  store i32 %475, i32* %473, align 4
  br label %476

476:                                              ; preds = %470, %463
  %477 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %478 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @FE_WRIE, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %489

483:                                              ; preds = %476
  %484 = load i32, i32* @WRIE, align 4
  %485 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %486 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %485, i32 0, i32 18
  %487 = load i32, i32* %486, align 8
  %488 = or i32 %487, %484
  store i32 %488, i32* %486, align 8
  br label %489

489:                                              ; preds = %483, %476
  %490 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %491 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @FE_DFS, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %502

496:                                              ; preds = %489
  %497 = load i32, i32* @DFS, align 4
  %498 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %499 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %498, i32 0, i32 19
  %500 = load i32, i32* %499, align 4
  %501 = or i32 %500, %497
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %496, %489
  %503 = load i32, i32* @MPEE, align 4
  %504 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %505 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %504, i32 0, i32 20
  %506 = load i32, i32* %505, align 8
  %507 = or i32 %506, %503
  store i32 %507, i32* %505, align 8
  %508 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %509 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %508, i32 0, i32 21
  %510 = load i32, i32* %509, align 4
  %511 = or i32 %510, 10
  store i32 %511, i32* %509, align 4
  %512 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %513 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %512, i32 0, i32 22
  store i32 255, i32* %513, align 8
  %514 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %515 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %514, i32 0, i32 29
  store i64 0, i64* %515, align 8
  %516 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %517 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %518 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %519 = call i32 @sym_nvram_setup_host(%struct.Scsi_Host* %516, %struct.sym_hcb* %517, %struct.sym_nvram* %518)
  %520 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %521 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %520, i32 0, i32 22
  %522 = load i32, i32* %521, align 8
  %523 = icmp eq i32 %522, 255
  br i1 %523, label %524, label %540

524:                                              ; preds = %502
  %525 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %526 = load i32, i32* @nc_scid, align 4
  %527 = call i32 @INB(%struct.sym_hcb* %525, i32 %526)
  %528 = and i32 %527, 7
  %529 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %530 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %529, i32 0, i32 22
  store i32 %528, i32* %530, align 8
  %531 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %532 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %531, i32 0, i32 22
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %539, label %535

535:                                              ; preds = %524
  %536 = load i32, i32* @SYM_SETUP_HOST_ID, align 4
  %537 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %538 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %537, i32 0, i32 22
  store i32 %536, i32* %538, align 8
  br label %539

539:                                              ; preds = %535, %524
  br label %540

540:                                              ; preds = %539, %502
  %541 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %542 = load i32, i32* %9, align 4
  %543 = call i32 @sym_init_burst(%struct.sym_hcb* %541, i32 %542)
  %544 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %545 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %546 = call i32 @sym_set_bus_mode(%struct.sym_hcb* %544, %struct.sym_nvram* %545)
  %547 = load i64, i64* @SYM_SETUP_SCSI_LED, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %567, label %549

549:                                              ; preds = %540
  %550 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %551 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = load i64, i64* @SYM_SYMBIOS_NVRAM, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %567, label %555

555:                                              ; preds = %549
  %556 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %557 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* @SYM_TEKRAM_NVRAM, align 8
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %561, label %586

561:                                              ; preds = %555
  %562 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %563 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* @PCI_DEVICE_ID_NCR_53C895, align 8
  %566 = icmp eq i64 %564, %565
  br i1 %566, label %567, label %586

567:                                              ; preds = %561, %549, %540
  %568 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %569 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load i32, i32* @FE_LEDC, align 4
  %572 = and i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %586, label %574

574:                                              ; preds = %567
  %575 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %576 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %575, i32 0, i32 23
  %577 = load i32, i32* %576, align 4
  %578 = and i32 %577, 1
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %586, label %580

580:                                              ; preds = %574
  %581 = load i32, i32* @FE_LED0, align 4
  %582 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %583 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = or i32 %584, %581
  store i32 %585, i32* %583, align 4
  br label %586

586:                                              ; preds = %580, %574, %567, %561, %555
  %587 = load i32, i32* @SYM_SETUP_IRQ_MODE, align 4
  %588 = and i32 %587, 3
  switch i32 %588, label %605 [
    i32 2, label %589
    i32 1, label %595
  ]

589:                                              ; preds = %586
  %590 = load i32, i32* @IRQM, align 4
  %591 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %592 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %591, i32 0, i32 17
  %593 = load i32, i32* %592, align 4
  %594 = or i32 %593, %590
  store i32 %594, i32* %592, align 4
  br label %606

595:                                              ; preds = %586
  %596 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %597 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %596, i32 0, i32 24
  %598 = load i32, i32* %597, align 8
  %599 = load i32, i32* @IRQM, align 4
  %600 = and i32 %598, %599
  %601 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %602 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %601, i32 0, i32 17
  %603 = load i32, i32* %602, align 4
  %604 = or i32 %603, %600
  store i32 %604, i32* %602, align 4
  br label %606

605:                                              ; preds = %586
  br label %606

606:                                              ; preds = %605, %595, %589
  store i32 0, i32* %11, align 4
  br label %607

607:                                              ; preds = %651, %606
  %608 = load i32, i32* %11, align 4
  %609 = load i32, i32* @SYM_CONF_MAX_TARGET, align 4
  %610 = icmp slt i32 %608, %609
  br i1 %610, label %611, label %654

611:                                              ; preds = %607
  %612 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %613 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %612, i32 0, i32 30
  %614 = load %struct.sym_tcb*, %struct.sym_tcb** %613, align 8
  %615 = load i32, i32* %11, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %614, i64 %616
  store %struct.sym_tcb* %617, %struct.sym_tcb** %12, align 8
  %618 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %619 = load i32, i32* @SYM_TAGS_ENABLED, align 4
  %620 = or i32 %618, %619
  %621 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %622 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = or i32 %623, %620
  store i32 %624, i32* %622, align 4
  %625 = load i32, i32* @SYM_SETUP_MAX_TAG, align 4
  %626 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %627 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %626, i32 0, i32 3
  store i32 %625, i32* %627, align 4
  %628 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %629 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 8
  %631 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %632 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %631, i32 0, i32 1
  store i32 %630, i32* %632, align 4
  %633 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %634 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %633, i32 0, i32 2
  store i32 9, i32* %634, align 4
  %635 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %636 = load i32, i32* %11, align 4
  %637 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %638 = call i32 @sym_nvram_setup_target(%struct.sym_tcb* %635, i32 %636, %struct.sym_nvram* %637)
  %639 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %640 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %650, label %643

643:                                              ; preds = %611
  %644 = load i32, i32* @SYM_TAGS_ENABLED, align 4
  %645 = xor i32 %644, -1
  %646 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %647 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 4
  %649 = and i32 %648, %645
  store i32 %649, i32* %647, align 4
  br label %650

650:                                              ; preds = %643, %611
  br label %651

651:                                              ; preds = %650
  %652 = load i32, i32* %11, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %11, align 4
  br label %607

654:                                              ; preds = %607
  %655 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %656 = call i8* @sym_name(%struct.sym_hcb* %655)
  %657 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %658 = call i8* @sym_nvram_type(%struct.sym_nvram* %657)
  %659 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %660 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %659, i32 0, i32 22
  %661 = load i32, i32* %660, align 8
  %662 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %663 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* @FE_ULTRA3, align 4
  %666 = and i32 %664, %665
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %654
  br label %688

669:                                              ; preds = %654
  %670 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %671 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = load i32, i32* @FE_ULTRA2, align 4
  %674 = and i32 %672, %673
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %677

676:                                              ; preds = %669
  br label %686

677:                                              ; preds = %669
  %678 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %679 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %678, i32 0, i32 1
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* @FE_ULTRA, align 4
  %682 = and i32 %680, %681
  %683 = icmp ne i32 %682, 0
  %684 = zext i1 %683 to i64
  %685 = select i1 %683, i32 20, i32 10
  br label %686

686:                                              ; preds = %677, %676
  %687 = phi i32 [ 40, %676 ], [ %685, %677 ]
  br label %688

688:                                              ; preds = %686, %668
  %689 = phi i32 [ 80, %668 ], [ %687, %686 ]
  %690 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %691 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %690, i32 0, i32 29
  %692 = load i64, i64* %691, align 8
  %693 = call i8* @sym_scsi_bus_mode(i64 %692)
  %694 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %695 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %694, i32 0, i32 21
  %696 = load i32, i32* %695, align 4
  %697 = and i32 %696, 10
  %698 = icmp ne i32 %697, 0
  %699 = zext i1 %698 to i64
  %700 = select i1 %698, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %701 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %656, i8* %658, i32 %661, i32 %689, i8* %693, i8* %700)
  %702 = load i32, i32* @sym_verbose, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %739

704:                                              ; preds = %688
  %705 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %706 = call i8* @sym_name(%struct.sym_hcb* %705)
  %707 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %708 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %707, i32 0, i32 17
  %709 = load i32, i32* %708, align 4
  %710 = load i32, i32* @IRQM, align 4
  %711 = and i32 %709, %710
  %712 = icmp ne i32 %711, 0
  %713 = zext i1 %712 to i64
  %714 = select i1 %712, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %715 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %716 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %715, i32 0, i32 28
  %717 = load i64, i64* %716, align 8
  %718 = icmp ne i64 %717, 0
  %719 = zext i1 %718 to i64
  %720 = select i1 %718, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %721 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %706, i8* %714, i8* %720)
  %722 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %723 = call i8* @sym_name(%struct.sym_hcb* %722)
  %724 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %725 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %724, i32 0, i32 25
  %726 = load i8*, i8** %725, align 8
  %727 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %723, i8* %726)
  %728 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %729 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* @FE_NOPM, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %704
  %735 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %736 = call i8* @sym_name(%struct.sym_hcb* %735)
  %737 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %736)
  br label %738

738:                                              ; preds = %734, %704
  br label %739

739:                                              ; preds = %738, %688
  %740 = load i32, i32* @sym_verbose, align 4
  %741 = icmp sge i32 %740, 2
  br i1 %741, label %742, label %785

742:                                              ; preds = %739
  %743 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %744 = call i8* @sym_name(%struct.sym_hcb* %743)
  %745 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %746 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %745, i32 0, i32 26
  %747 = load i32, i32* %746, align 8
  %748 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %749 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %748, i32 0, i32 12
  %750 = load i32, i32* %749, align 8
  %751 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %752 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %751, i32 0, i32 24
  %753 = load i32, i32* %752, align 8
  %754 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %755 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %754, i32 0, i32 27
  %756 = load i32, i32* %755, align 4
  %757 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %758 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %757, i32 0, i32 13
  %759 = load i32, i32* %758, align 4
  %760 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %761 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %760, i32 0, i32 14
  %762 = load i32, i32* %761, align 8
  %763 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0), i8* %744, i32 %747, i32 %750, i32 %753, i32 %756, i32 %759, i32 %762)
  %764 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %765 = call i8* @sym_name(%struct.sym_hcb* %764)
  %766 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %767 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %766, i32 0, i32 5
  %768 = load i32, i32* %767, align 4
  %769 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %770 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %769, i32 0, i32 16
  %771 = load i32, i32* %770, align 8
  %772 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %773 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %772, i32 0, i32 17
  %774 = load i32, i32* %773, align 4
  %775 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %776 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %775, i32 0, i32 18
  %777 = load i32, i32* %776, align 8
  %778 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %779 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %778, i32 0, i32 20
  %780 = load i32, i32* %779, align 8
  %781 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %782 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %781, i32 0, i32 19
  %783 = load i32, i32* %782, align 4
  %784 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0), i8* %765, i32 %768, i32 %771, i32 %774, i32 %777, i32 %780, i32 %783)
  br label %785

785:                                              ; preds = %742, %739
  ret i32 0
}

declare dso_local %struct.sym_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sym_getclock(%struct.sym_hcb*, i32) #1

declare dso_local i32 @use_dac(%struct.sym_hcb*) #1

declare dso_local i32 @burst_code(i32, i32, i32) #1

declare dso_local i32 @sym_nvram_setup_host(%struct.Scsi_Host*, %struct.sym_hcb*, %struct.sym_nvram*) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_init_burst(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_set_bus_mode(%struct.sym_hcb*, %struct.sym_nvram*) #1

declare dso_local i32 @sym_nvram_setup_target(%struct.sym_tcb*, i32, %struct.sym_nvram*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i8* @sym_nvram_type(%struct.sym_nvram*) #1

declare dso_local i8* @sym_scsi_bus_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
