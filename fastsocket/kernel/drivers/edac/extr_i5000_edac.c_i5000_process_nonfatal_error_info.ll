; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_process_nonfatal_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_process_nonfatal_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5000_error_info = type { i32, i32, i32, i32, i32, i32 }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@FERR_NF_MASK = common dso_local global i32 0, align 4
@FERR_NF_UNCORRECTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09Uncorrected bits= 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\09\09CSROW= %d  Channels= %d,%d  (Branch= %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Non-Aliased Uncorrectable Patrol Data ECC\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Non-Aliased Uncorrectable Spare-Copy Data ECC\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Non-Aliased Uncorrectable Mirrored Demand Data ECC\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Non-Aliased Uncorrectable Non-Mirrored Demand Data ECC\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Aliased Uncorrectable Patrol Data ECC\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Aliased Uncorrectable Spare-Copy Data ECC\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Aliased Uncorrectable Mirrored Demand Data ECC\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Aliased Uncorrectable Non-Mirrored Demand Data ECC\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Uncorrectable Data ECC on Replay\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"(Branch=%d DRAM-Bank=%d RDWR=%s RAS=%d CAS=%d, UE Err=0x%x (%s))\00", align 1
@FERR_NF_CORRECTABLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"\09Corrected bits= 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [77 x i8] c"\09\09CSROW= %d Channel= %d  (Branch %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Correctable Non-Mirrored Demand Data ECC\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Correctable Mirrored Demand Data ECC\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Correctable Spare-Copy Data ECC\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Correctable Patrol Data ECC\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"(Branch=%d DRAM-Bank=%d RDWR=%s RAS=%d CAS=%d, CE Err=0x%x (%s))\00", align 1
@misc_messages = common dso_local global i32 0, align 4
@FERR_NF_NON_RETRY = common dso_local global i32 0, align 4
@FERR_NF_NORTH_CRC = common dso_local global i32 0, align 4
@FERR_NF_SPD_PROTOCOL = common dso_local global i32 0, align 4
@FERR_NF_DIMM_SPARE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [78 x i8] c"Non-Retry or Redundant Retry FBD Memory Alert or Redundant Fast Reset Timeout\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Non-Retry or Redundant Retry FBD Configuration Alert\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"Non-Retry or Redundant Retry FBD Northbound CRC error on read data\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"FBD Northbound CRC error on FBD Sync Status\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"SPD protocol error\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"DIMM-spare copy started\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"DIMM-spare copy completed\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"(Branch=%d Err=%#x (%s))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5000_error_info*, i32)* @i5000_process_nonfatal_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_process_nonfatal_error_info(%struct.mem_ctl_info* %0, %struct.i5000_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i5000_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i5000_error_info* %1, %struct.i5000_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = add nsw i32 %23, 170
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %28 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %29 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FERR_NF_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 1, i32* %21, align 4
  br label %232

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FERR_NF_UNCORRECTABLE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %115

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i8*, i32, ...) @debugf0(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %46 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 2
  store i32 %50, i32* %15, align 4
  %51 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %52 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NREC_BANK(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %56 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NREC_RANK(i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %60 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NREC_RDWR(i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %64 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @NREC_RAS(i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %68 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @NREC_CAS(i32 %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %14, align 4
  %76 = ashr i32 %75, 1
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 (i8*, i32, ...) @debugf0(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %74, i32 %76, i32 %77, i8* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  switch i32 %85, label %95 [
    i32 145, label %86
    i32 146, label %87
    i32 147, label %88
    i32 128, label %89
    i32 129, label %90
    i32 130, label %91
    i32 131, label %92
    i32 132, label %93
    i32 133, label %94
  ]

86:                                               ; preds = %42
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %95

87:                                               ; preds = %42
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %95

88:                                               ; preds = %42
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %95

89:                                               ; preds = %42
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %95

90:                                               ; preds = %42
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %95

91:                                               ; preds = %42
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %95

92:                                               ; preds = %42
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %95

93:                                               ; preds = %42
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %95

94:                                               ; preds = %42
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %95

95:                                               ; preds = %42, %94, %93, %92, %91, %90, %89, %88, %87, %86
  %96 = trunc i64 %25 to i32
  %97 = load i32, i32* %14, align 4
  %98 = ashr i32 %97, 1
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @snprintf(i8* %27, i32 %96, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32 %98, i32 %99, i8* %103, i32 %104, i32 %105, i32 %106, i8* %107)
  %109 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info* %109, i32 %110, i32 %111, i32 %113, i8* %27)
  br label %115

115:                                              ; preds = %95, %36
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @FERR_NF_CORRECTABLE, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %193

121:                                              ; preds = %115
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (i8*, i32, ...) @debugf0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %122)
  %124 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %125 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %126)
  store i32 %127, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %128 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %129 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @REC_ECC_LOCATOR_ODD(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  store i32 1, i32* %15, align 4
  br label %134

134:                                              ; preds = %133, %121
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %15, align 4
  %138 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %139 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @REC_BANK(i32 %140)
  store i32 %141, i32* %16, align 4
  %142 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %143 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @REC_RANK(i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %147 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @REC_RDWR(i32 %148)
  store i32 %149, i32* %18, align 4
  %150 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %151 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @REC_RAS(i32 %152)
  store i32 %153, i32* %19, align 4
  %154 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %155 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @REC_CAS(i32 %156)
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %14, align 4
  %161 = ashr i32 %160, 1
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %20, align 4
  %169 = call i32 (i8*, i32, ...) @debugf0(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.15, i64 0, i64 0), i32 %158, i32 %159, i32 %161, i32 %162, i8* %166, i32 %167, i32 %168)
  %170 = load i32, i32* %12, align 4
  switch i32 %170, label %175 [
    i32 141, label %171
    i32 140, label %172
    i32 139, label %173
    i32 138, label %174
  ]

171:                                              ; preds = %134
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %175

172:                                              ; preds = %134
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %175

173:                                              ; preds = %134
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %175

174:                                              ; preds = %134
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %175

175:                                              ; preds = %134, %174, %173, %172, %171
  %176 = trunc i64 %25 to i32
  %177 = load i32, i32* %14, align 4
  %178 = ashr i32 %177, 1
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i8*, i8** %9, align 8
  %188 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @snprintf(i8* %27, i32 %176, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i64 0, i64 0), i32 %178, i32 %179, i8* %183, i32 %184, i32 %185, i32 %186, i8* %187)
  %189 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info* %189, i32 %190, i32 %191, i8* %27)
  br label %193

193:                                              ; preds = %175, %115
  %194 = load i32, i32* @misc_messages, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i32 1, i32* %21, align 4
  br label %232

197:                                              ; preds = %193
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @FERR_NF_NON_RETRY, align 4
  %200 = load i32, i32* @FERR_NF_NORTH_CRC, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @FERR_NF_SPD_PROTOCOL, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @FERR_NF_DIMM_SPARE, align 4
  %205 = or i32 %203, %204
  %206 = and i32 %198, %205
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %197
  %210 = load i32, i32* %13, align 4
  switch i32 %210, label %218 [
    i32 144, label %211
    i32 143, label %212
    i32 142, label %213
    i32 137, label %214
    i32 136, label %215
    i32 135, label %216
    i32 134, label %217
  ]

211:                                              ; preds = %209
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %218

212:                                              ; preds = %209
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0), i8** %9, align 8
  br label %218

213:                                              ; preds = %209
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0), i8** %9, align 8
  br label %218

214:                                              ; preds = %209
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i8** %9, align 8
  br label %218

215:                                              ; preds = %209
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8** %9, align 8
  br label %218

216:                                              ; preds = %209
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8** %9, align 8
  br label %218

217:                                              ; preds = %209
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8** %9, align 8
  br label %218

218:                                              ; preds = %209, %217, %216, %215, %214, %213, %212, %211
  %219 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %220 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %221)
  store i32 %222, i32* %14, align 4
  %223 = trunc i64 %25 to i32
  %224 = load i32, i32* %14, align 4
  %225 = ashr i32 %224, 1
  %226 = load i32, i32* %13, align 4
  %227 = load i8*, i8** %9, align 8
  %228 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @snprintf(i8* %27, i32 %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %225, i32 %226, i8* %227)
  %229 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %230 = call i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info* %229, i32 0, i32 0, i8* %27)
  br label %231

231:                                              ; preds = %218, %197
  store i32 0, i32* %21, align 4
  br label %232

232:                                              ; preds = %231, %196, %35
  %233 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %21, align 4
  switch i32 %234, label %236 [
    i32 0, label %235
    i32 1, label %235
  ]

235:                                              ; preds = %232, %232
  ret void

236:                                              ; preds = %232
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @debugf0(i8*, i32, ...) #2

declare dso_local i32 @EXTRACT_FBDCHAN_INDX(i32) #2

declare dso_local i32 @NREC_BANK(i32) #2

declare dso_local i32 @NREC_RANK(i32) #2

declare dso_local i32 @NREC_RDWR(i32) #2

declare dso_local i32 @NREC_RAS(i32) #2

declare dso_local i32 @NREC_CAS(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, ...) #2

declare dso_local i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info*, i32, i32, i32, i8*) #2

declare dso_local i64 @REC_ECC_LOCATOR_ODD(i32) #2

declare dso_local i32 @REC_BANK(i32) #2

declare dso_local i32 @REC_RANK(i32) #2

declare dso_local i32 @REC_RDWR(i32) #2

declare dso_local i32 @REC_RAS(i32) #2

declare dso_local i32 @REC_CAS(i32) #2

declare dso_local i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
