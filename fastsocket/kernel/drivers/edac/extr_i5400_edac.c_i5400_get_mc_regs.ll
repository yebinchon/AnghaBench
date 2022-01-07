; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_i5400_get_mc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_i5400_get_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5400_pvt* }
%struct.i5400_pvt = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@AMBASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"AMBASE= 0x%lx  MAXCH= %d  MAX-DIMM-Per-CH= %d\0A\00", align 1
@TOLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\0ATOLM (number of 256M regions) =%u (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Actual TOLM byte addr=%u.%03u GB (0x%x)\0A\00", align 1
@MIR0 = common dso_local global i32 0, align 4
@MIR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"MIR0: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"MIR1: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@NUM_MTRS_PER_BRANCH = common dso_local global i32 0, align 4
@MTR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B0 value=0x%x\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B1 value=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\0AMemory Technology Registers:\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"   Branch 0:\0A\00", align 1
@AMBPRESENT_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present0 0x%x:\0A\00", align 1
@AMBPRESENT_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present1 0x%x:\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"   Branch 1:\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present0 0x%x:\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present1 0x%x:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5400_get_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5400_get_mc_regs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5400_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.i5400_pvt*, %struct.i5400_pvt** %13, align 8
  store %struct.i5400_pvt* %14, %struct.i5400_pvt** %3, align 8
  %15 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %15, i32 0, i32 15
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @AMBASE, align 8
  %19 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %19, i32 0, i32 14
  %21 = bitcast i64* %20 to i32*
  %22 = call i32 @pci_read_config_dword(i32 %17, i64 %18, i32* %21)
  %23 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %24 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %23, i32 0, i32 15
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @AMBASE, align 8
  %27 = add i64 %26, 4
  %28 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %29 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %28, i32 0, i32 14
  %30 = bitcast i64* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = call i32 @pci_read_config_dword(i32 %25, i64 %27, i32* %31)
  %33 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %34 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %37 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %40 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %39, i32 0, i32 14
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %43 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %46 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44, i32 %47)
  %49 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %50 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TOLM, align 4
  %53 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %54 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %53, i32 0, i32 2
  %55 = call i32 @pci_read_config_word(i32 %51, i32 %52, i32* %54)
  %56 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %57 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 12
  store i32 %59, i32* %57, align 8
  %60 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %61 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %64 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %68 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 1000, %70
  %72 = ashr i64 %71, 2
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sdiv i32 %74, 1000
  %76 = load i32, i32* %4, align 4
  %77 = srem i32 %76, 1000
  %78 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %79 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 28
  %82 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %77, i32 %81)
  %83 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %84 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MIR0, align 4
  %87 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %88 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %87, i32 0, i32 3
  %89 = call i32 @pci_read_config_word(i32 %85, i32 %86, i32* %88)
  %90 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %91 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %90, i32 0, i32 13
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MIR1, align 4
  %94 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %95 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %94, i32 0, i32 4
  %96 = call i32 @pci_read_config_word(i32 %92, i32 %93, i32* %95)
  %97 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %98 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 4095
  store i32 %101, i32* %5, align 4
  %102 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %103 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 1
  store i32 %105, i32* %9, align 4
  %106 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %107 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 2
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %115 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 4
  %118 = and i32 %117, 4095
  store i32 %118, i32* %5, align 4
  %119 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %120 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %124 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 2
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %198, %1
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @NUM_MTRS_PER_BRANCH, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %201

135:                                              ; preds = %131
  %136 = load i32, i32* @MTR0, align 4
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = add i64 %137, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %11, align 4
  %143 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %144 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %148 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @pci_read_config_word(i32 %145, i32 %146, i32* %152)
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %157 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %154, i32 %155, i32 %162)
  %164 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %165 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CHANNELS_PER_BRANCH, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %135
  %170 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %171 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 0, i32* %175, align 4
  br label %198

176:                                              ; preds = %135
  %177 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %178 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %182 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = call i32 @pci_read_config_word(i32 %179, i32 %180, i32* %186)
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %191 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %188, i32 %189, i32 %196)
  br label %198

198:                                              ; preds = %176, %169
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %131

201:                                              ; preds = %131
  %202 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %203 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %218, %201
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @NUM_MTRS_PER_BRANCH, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %211 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @decode_mtr(i32 %209, i32 %216)
  br label %218

218:                                              ; preds = %208
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %6, align 4
  br label %204

221:                                              ; preds = %204
  %222 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %223 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @AMBPRESENT_0, align 4
  %226 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %227 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %226, i32 0, i32 7
  %228 = call i32 @pci_read_config_word(i32 %224, i32 %225, i32* %227)
  %229 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %230 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %231)
  %233 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %234 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %233, i32 0, i32 12
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @AMBPRESENT_1, align 4
  %237 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %238 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %237, i32 0, i32 8
  %239 = call i32 @pci_read_config_word(i32 %235, i32 %236, i32* %238)
  %240 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %241 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %242)
  %244 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %245 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CHANNELS_PER_BRANCH, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %221
  %250 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %251 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %250, i32 0, i32 9
  store i32 0, i32* %251, align 8
  %252 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %253 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %252, i32 0, i32 10
  store i32 0, i32* %253, align 4
  br label %296

254:                                              ; preds = %221
  %255 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %270, %254
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @NUM_MTRS_PER_BRANCH, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %273

260:                                              ; preds = %256
  %261 = load i32, i32* %6, align 4
  %262 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %263 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @decode_mtr(i32 %261, i32 %268)
  br label %270

270:                                              ; preds = %260
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %6, align 4
  br label %256

273:                                              ; preds = %256
  %274 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %275 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %274, i32 0, i32 11
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @AMBPRESENT_0, align 4
  %278 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %279 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %278, i32 0, i32 9
  %280 = call i32 @pci_read_config_word(i32 %276, i32 %277, i32* %279)
  %281 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %282 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %283)
  %285 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %286 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @AMBPRESENT_1, align 4
  %289 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %290 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %289, i32 0, i32 10
  %291 = call i32 @pci_read_config_word(i32 %287, i32 %288, i32* %290)
  %292 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %293 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %273, %249
  %297 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %298 = call i32 @calculate_dimm_size(%struct.i5400_pvt* %297)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @debugf2(i8*, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @decode_mtr(i32, i32) #1

declare dso_local i32 @calculate_dimm_size(%struct.i5400_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
