; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_get_bios_chim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_get_bios_chim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.asd_bios_chim_struct* }
%struct.asd_bios_chim_struct = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.asd_ocm_dir = type { i32 }

@OCM_BIOS_CHIM_DE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"couldn't find BIOS_CHIM dir ent\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"no memory for bios_chim struct\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"couldn't read ocm segment\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SOIB\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"IPSA\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"BIOS_CHIM entry has no valid sig(%c%c%c%c)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"BIOS_CHIM unsupported major version:0x%x\0A\00", align 1
@BC_BIOS_PRESENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"BIOS present (%d,%d), %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ue num:%d, ue size:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"couldn't read ue entries(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_ocm_dir*)* @asd_get_bios_chim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_get_bios_chim(%struct.asd_ha_struct* %0, %struct.asd_ocm_dir* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_ocm_dir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_bios_chim_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_ocm_dir* %1, %struct.asd_ocm_dir** %4, align 8
  %9 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %4, align 8
  %10 = load i32, i32* @OCM_BIOS_CHIM_DE, align 4
  %11 = call i32 @asd_find_dir_entry(%struct.asd_ocm_dir* %9, i32 %10, i32* %7, i32* %8)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %237

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 40, i32 %19)
  %21 = bitcast i8* %20 to %struct.asd_bios_chim_struct*
  store %struct.asd_bios_chim_struct* %21, %struct.asd_bios_chim_struct** %6, align 8
  %22 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %23 = icmp ne %struct.asd_bios_chim_struct* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %237

26:                                               ; preds = %16
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %28 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %29 = bitcast %struct.asd_bios_chim_struct* %28 to i8*
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @asd_read_ocm_seg(%struct.asd_ha_struct* %27, i8* %29, i32 %30, i32 40)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %234

36:                                               ; preds = %26
  %37 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %38 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @strncmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %44 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @strncmp(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %50 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %55 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %54, i32 0, i32 7
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %60 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %65 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %58, i32 %63, i32 %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %234

72:                                               ; preds = %42, %36
  %73 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %74 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %79 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %234

84:                                               ; preds = %72
  %85 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %86 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BC_BIOS_PRESENT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %84
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %93 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %97 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %100 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 4
  %103 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %104 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %107 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 8
  %110 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %111 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %115 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %119 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %124 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %129 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %127, i32 %132)
  br label %134

134:                                              ; preds = %91, %84
  %135 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %136 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le16_to_cpu(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %141 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %145 = getelementptr inbounds %struct.asd_bios_chim_struct, %struct.asd_bios_chim_struct* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @le16_to_cpu(i32 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %150 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 %148, i32* %152, align 4
  %153 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %154 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %159 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %157, i32 %162)
  %164 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %165 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %170 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %168, %173
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %233

177:                                              ; preds = %134
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @GFP_KERNEL, align 4
  %182 = call i8* @kmalloc(i32 %180, i32 %181)
  %183 = bitcast i8* %182 to %struct.asd_bios_chim_struct*
  %184 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %185 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store %struct.asd_bios_chim_struct* %183, %struct.asd_bios_chim_struct** %187, align 8
  %188 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %189 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %191, align 8
  %193 = icmp ne %struct.asd_bios_chim_struct* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %177
  br label %234

195:                                              ; preds = %177
  %196 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %197 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %198 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %200, align 8
  %202 = bitcast %struct.asd_bios_chim_struct* %201 to i8*
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = add i64 %204, 40
  %206 = trunc i64 %205 to i32
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @asd_read_ocm_seg(%struct.asd_ha_struct* %196, i8* %202, i32 %206, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %232

211:                                              ; preds = %195
  %212 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %213 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %215, align 8
  %217 = call i32 @kfree(%struct.asd_bios_chim_struct* %216)
  %218 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %219 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  store %struct.asd_bios_chim_struct* null, %struct.asd_bios_chim_struct** %221, align 8
  %222 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %223 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store i32 0, i32* %225, align 8
  %226 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %227 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  store i32 0, i32* %229, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %211, %195
  br label %233

233:                                              ; preds = %232, %134
  br label %234

234:                                              ; preds = %233, %194, %77, %48, %34
  %235 = load %struct.asd_bios_chim_struct*, %struct.asd_bios_chim_struct** %6, align 8
  %236 = call i32 @kfree(%struct.asd_bios_chim_struct* %235)
  br label %237

237:                                              ; preds = %234, %24, %14
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local i32 @asd_find_dir_entry(%struct.asd_ocm_dir*, i32, i32*, i32*) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @asd_printk(i8*, ...) #1

declare dso_local i32 @asd_read_ocm_seg(%struct.asd_ha_struct*, i8*, i32, i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.asd_bios_chim_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
