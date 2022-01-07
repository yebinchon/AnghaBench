; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c___segment_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_extmem.c___segment_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i64, i64, i32, i64, i8*, i8*, i32, i32, %struct.dcss_segment*, i32, i32, i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@loadshr_scode = common dso_local global i64 0, align 8
@DCSS_LOADSHRX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" (DCSS)\00", align 1
@SEG_TYPE_SC = common dso_local global i32 0, align 4
@SEG_TYPE_SR = common dso_local global i32 0, align 4
@SEG_TYPE_ER = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4
@loadnsr_scode = common dso_local global i64 0, align 8
@purgeseg_scode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Loading DCSS %s failed with rc=%ld\0A\00", align 1
@dcss_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"DCSS %s of range %p to %p and type %s loaded as exclusive-writable\0A\00", align 1
@segtype_string = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"DCSS %s of range %p to %p and type %s loaded in shared access mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64*)* @__segment_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__segment_load(i8* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dcss_segment*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = call %struct.dcss_segment* @kmalloc(i32 80, i32 %15)
  store %struct.dcss_segment* %16, %struct.dcss_segment** %9, align 8
  %17 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %18 = icmp eq %struct.dcss_segment* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %281

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %25 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dcss_mkname(i8* %23, i32 %26)
  %28 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %29 = call i32 @query_segment_type(%struct.dcss_segment* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %278

33:                                               ; preds = %22
  %34 = load i64, i64* @loadshr_scode, align 8
  %35 = load i64, i64* @DCSS_LOADSHRX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %39 = call i64 @segment_overlaps_others(%struct.dcss_segment* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %278

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %47 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %50 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %53 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  %56 = add i64 %55, 1
  %57 = call i32 @vmem_add_mapping(i64 %48, i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %278

61:                                               ; preds = %45
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.dcss_segment* @kzalloc(i32 4, i32 %62)
  %64 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %65 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %64, i32 0, i32 8
  store %struct.dcss_segment* %63, %struct.dcss_segment** %65, align 8
  %66 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %67 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %66, i32 0, i32 8
  %68 = load %struct.dcss_segment*, %struct.dcss_segment** %67, align 8
  %69 = icmp eq %struct.dcss_segment* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %265

73:                                               ; preds = %61
  %74 = load i32, i32* @IORESOURCE_BUSY, align 4
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %78 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %77, i32 0, i32 8
  %79 = load %struct.dcss_segment*, %struct.dcss_segment** %78, align 8
  %80 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  %81 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %82 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %85 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %84, i32 0, i32 8
  %86 = load %struct.dcss_segment*, %struct.dcss_segment** %85, align 8
  %87 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %86, i32 0, i32 3
  store i64 %83, i64* %87, align 8
  %88 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %89 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %92 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %91, i32 0, i32 8
  %93 = load %struct.dcss_segment*, %struct.dcss_segment** %92, align 8
  %94 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %93, i32 0, i32 1
  store i64 %90, i64* %94, align 8
  %95 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %96 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %95, i32 0, i32 4
  %97 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %98 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @memcpy(i8** %96, i32 %99, i32 8)
  %101 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %102 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @EBCASC(i8* %103, i32 8)
  %105 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %106 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  store i8 0, i8* %108, align 1
  %109 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %110 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strncat(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %113 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %114 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %117 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %116, i32 0, i32 8
  %118 = load %struct.dcss_segment*, %struct.dcss_segment** %117, align 8
  %119 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %118, i32 0, i32 5
  store i8* %115, i8** %119, align 8
  %120 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %121 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @SEG_TYPE_SC, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %137, label %126

126:                                              ; preds = %73
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @SEG_TYPE_SR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @SEG_TYPE_ER, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134, %73
  %138 = load i32, i32* @IORESOURCE_READONLY, align 4
  %139 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %140 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %139, i32 0, i32 8
  %141 = load %struct.dcss_segment*, %struct.dcss_segment** %140, align 8
  %142 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %137, %134, %130
  %146 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %147 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %146, i32 0, i32 8
  %148 = load %struct.dcss_segment*, %struct.dcss_segment** %147, align 8
  %149 = call i64 @request_resource(i32* @iomem_resource, %struct.dcss_segment* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load i32, i32* @EBUSY, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %10, align 4
  %154 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %155 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %154, i32 0, i32 8
  %156 = load %struct.dcss_segment*, %struct.dcss_segment** %155, align 8
  %157 = call i32 @kfree(%struct.dcss_segment* %156)
  br label %265

158:                                              ; preds = %145
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %163 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dcss_diag(i64* @loadnsr_scode, i32 %164, i64* %12, i64* %13)
  store i32 %165, i32* %11, align 4
  br label %171

166:                                              ; preds = %158
  %167 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %168 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dcss_diag(i64* @loadshr_scode, i32 %169, i64* %12, i64* %13)
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %176 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dcss_diag(i64* @purgeseg_scode, i32 %177, i64* %14, i64* %14)
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %10, align 4
  br label %256

180:                                              ; preds = %171
  %181 = load i32, i32* %11, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i8*, i8** %5, align 8
  %185 = load i64, i64* %13, align 8
  %186 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %184, i64 %185)
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @dcss_diag_translate_rc(i64 %187)
  store i32 %188, i32* %10, align 4
  %189 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %190 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %189, i32 0, i32 11
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @dcss_diag(i64* @purgeseg_scode, i32 %191, i64* %14, i64* %14)
  br label %256

193:                                              ; preds = %180
  %194 = load i64, i64* %12, align 8
  %195 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %196 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %199 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %202 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 4
  %203 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %204 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %203, i32 0, i32 10
  %205 = call i32 @atomic_set(i32* %204, i32 1)
  %206 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %207 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %206, i32 0, i32 9
  %208 = call i32 @list_add(i32* %207, i32* @dcss_list)
  %209 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %210 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64*, i64** %7, align 8
  store i64 %211, i64* %212, align 8
  %213 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %214 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %8, align 8
  store i64 %215, i64* %216, align 8
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %193
  %220 = load i8*, i8** %5, align 8
  %221 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %222 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %226 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to i8*
  %229 = load i32*, i32** @segtype_string, align 8
  %230 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %231 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @pr_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %220, i8* %224, i8* %228, i32 %235)
  br label %255

237:                                              ; preds = %193
  %238 = load i8*, i8** %5, align 8
  %239 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %240 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %244 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to i8*
  %247 = load i32*, i32** @segtype_string, align 8
  %248 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %249 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @pr_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %238, i8* %242, i8* %246, i32 %253)
  br label %255

255:                                              ; preds = %237, %219
  br label %281

256:                                              ; preds = %183, %174
  %257 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %258 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %257, i32 0, i32 8
  %259 = load %struct.dcss_segment*, %struct.dcss_segment** %258, align 8
  %260 = call i32 @release_resource(%struct.dcss_segment* %259)
  %261 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %262 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %261, i32 0, i32 8
  %263 = load %struct.dcss_segment*, %struct.dcss_segment** %262, align 8
  %264 = call i32 @kfree(%struct.dcss_segment* %263)
  br label %265

265:                                              ; preds = %256, %151, %70
  %266 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %267 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %270 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %273 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = sub i64 %271, %274
  %276 = add i64 %275, 1
  %277 = call i32 @vmem_remove_mapping(i64 %268, i64 %276)
  br label %278

278:                                              ; preds = %265, %60, %41, %32
  %279 = load %struct.dcss_segment*, %struct.dcss_segment** %9, align 8
  %280 = call i32 @kfree(%struct.dcss_segment* %279)
  br label %281

281:                                              ; preds = %278, %255, %19
  %282 = load i32, i32* %10, align 4
  ret i32 %282
}

declare dso_local %struct.dcss_segment* @kmalloc(i32, i32) #1

declare dso_local i32 @dcss_mkname(i8*, i32) #1

declare dso_local i32 @query_segment_type(%struct.dcss_segment*) #1

declare dso_local i64 @segment_overlaps_others(%struct.dcss_segment*) #1

declare dso_local i32 @vmem_add_mapping(i64, i64) #1

declare dso_local %struct.dcss_segment* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i64 @request_resource(i32*, %struct.dcss_segment*) #1

declare dso_local i32 @kfree(%struct.dcss_segment*) #1

declare dso_local i32 @dcss_diag(i64*, i32, i64*, i64*) #1

declare dso_local i32 @pr_warning(i8*, i8*, i64) #1

declare dso_local i32 @dcss_diag_translate_rc(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @release_resource(%struct.dcss_segment*) #1

declare dso_local i32 @vmem_remove_mapping(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
