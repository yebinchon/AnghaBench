; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_get_mc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_get_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5000_pvt* }
%struct.i5000_pvt = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@AMBASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"AMBASE= 0x%lx  MAXCH= %d  MAX-DIMM-Per-CH= %d\0A\00", align 1
@TOLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\0ATOLM (number of 256M regions) =%u (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Actual TOLM byte addr=%u (0x%x)\0A\00", align 1
@MIR0 = common dso_local global i32 0, align 4
@MIR1 = common dso_local global i32 0, align 4
@MIR2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"MIR0: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"MIR1: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"MIR2: limit= 0x%x  WAY1= %u  WAY0= %x\0A\00", align 1
@NUM_MTRS = common dso_local global i32 0, align 4
@MTR0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B0 value=0x%x\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"MTR%d where=0x%x B1 value=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\0AMemory Technology Registers:\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   Branch 0:\0A\00", align 1
@AMB_PRESENT_0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present0 0x%x:\0A\00", align 1
@AMB_PRESENT_1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 0-present1 0x%x:\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"   Branch 1:\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present0 0x%x:\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\09\09AMB-Branch 1-present1 0x%x:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5000_get_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_get_mc_regs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5000_pvt*, align 8
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
  %14 = load %struct.i5000_pvt*, %struct.i5000_pvt** %13, align 8
  store %struct.i5000_pvt* %14, %struct.i5000_pvt** %3, align 8
  %15 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %15, i32 0, i32 16
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @AMBASE, align 8
  %19 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %19, i32 0, i32 15
  %21 = bitcast i64* %20 to i32*
  %22 = call i32 @pci_read_config_dword(i32 %17, i64 %18, i32* %21)
  %23 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %24 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @AMBASE, align 8
  %27 = add i64 %26, 4
  %28 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %29 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %28, i32 0, i32 15
  %30 = bitcast i64* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = call i32 @pci_read_config_dword(i32 %25, i64 %27, i32* %31)
  %33 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %34 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %37 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %40 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %39, i32 0, i32 15
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %43 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %46 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44, i32 %47)
  %49 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %50 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TOLM, align 4
  %53 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %54 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %53, i32 0, i32 2
  %55 = call i32 @pci_read_config_word(i32 %51, i32 %52, i32* %54)
  %56 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %57 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 12
  store i32 %59, i32* %57, align 8
  %60 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %61 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %64 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %68 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %69, 28
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %75 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %74, i32 0, i32 14
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MIR0, align 4
  %78 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %79 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %78, i32 0, i32 3
  %80 = call i32 @pci_read_config_word(i32 %76, i32 %77, i32* %79)
  %81 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %82 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MIR1, align 4
  %85 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %86 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %85, i32 0, i32 4
  %87 = call i32 @pci_read_config_word(i32 %83, i32 %84, i32* %86)
  %88 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %89 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MIR2, align 4
  %92 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %93 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %92, i32 0, i32 5
  %94 = call i32 @pci_read_config_word(i32 %90, i32 %91, i32* %93)
  %95 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %96 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 4
  %99 = and i32 %98, 4095
  store i32 %99, i32* %5, align 4
  %100 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %101 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %105 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 2
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109, i32 %110)
  %112 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %113 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 4095
  store i32 %116, i32* %5, align 4
  %117 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %118 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %122 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 2
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %126, i32 %127)
  %129 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %130 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 4
  %133 = and i32 %132, 4095
  store i32 %133, i32* %5, align 4
  %134 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %135 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 1
  store i32 %137, i32* %9, align 4
  %138 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %139 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 2
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %142, i32 %143, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %214, %1
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @NUM_MTRS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %217

150:                                              ; preds = %146
  %151 = load i32, i32* @MTR0, align 4
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = add i64 %152, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %11, align 4
  %158 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %159 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %163 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i32 @pci_read_config_word(i32 %160, i32 %161, i32* %167)
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %172 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %170, i32 %177)
  %179 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %180 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @CHANNELS_PER_BRANCH, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %150
  %185 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %186 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %190 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = call i32 @pci_read_config_word(i32 %187, i32 %188, i32* %194)
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %199 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %196, i32 %197, i32 %204)
  br label %213

206:                                              ; preds = %150
  %207 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %208 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %207, i32 0, i32 7
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %206, %184
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %146

217:                                              ; preds = %146
  %218 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %219 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %234, %217
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @NUM_MTRS, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %227 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @decode_mtr(i32 %225, i32 %232)
  br label %234

234:                                              ; preds = %224
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %220

237:                                              ; preds = %220
  %238 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %239 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %238, i32 0, i32 13
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AMB_PRESENT_0, align 4
  %242 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %243 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %242, i32 0, i32 8
  %244 = call i32 @pci_read_config_word(i32 %240, i32 %241, i32* %243)
  %245 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %246 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %247)
  %249 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %250 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %249, i32 0, i32 13
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @AMB_PRESENT_1, align 4
  %253 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %254 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %253, i32 0, i32 9
  %255 = call i32 @pci_read_config_word(i32 %251, i32 %252, i32* %254)
  %256 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %257 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %258)
  %260 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %261 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @CHANNELS_PER_BRANCH, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %237
  %266 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %267 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %266, i32 0, i32 10
  store i32 0, i32* %267, align 8
  %268 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %269 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %268, i32 0, i32 11
  store i32 0, i32* %269, align 4
  br label %312

270:                                              ; preds = %237
  %271 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %272

272:                                              ; preds = %286, %270
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @NUM_MTRS, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %279 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %278, i32 0, i32 7
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @decode_mtr(i32 %277, i32 %284)
  br label %286

286:                                              ; preds = %276
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %272

289:                                              ; preds = %272
  %290 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %291 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @AMB_PRESENT_0, align 4
  %294 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %295 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %294, i32 0, i32 10
  %296 = call i32 @pci_read_config_word(i32 %292, i32 %293, i32* %295)
  %297 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %298 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %297, i32 0, i32 10
  %299 = load i32, i32* %298, align 8
  %300 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %299)
  %301 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %302 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %301, i32 0, i32 12
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @AMB_PRESENT_1, align 4
  %305 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %306 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %305, i32 0, i32 11
  %307 = call i32 @pci_read_config_word(i32 %303, i32 %304, i32* %306)
  %308 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %309 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %308, i32 0, i32 11
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %289, %265
  %313 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %314 = call i32 @calculate_dimm_size(%struct.i5000_pvt* %313)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @debugf2(i8*, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @decode_mtr(i32, i32) #1

declare dso_local i32 @calculate_dimm_size(%struct.i5000_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
