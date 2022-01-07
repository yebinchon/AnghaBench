; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c24xx_nand_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c24xx_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, %struct.resource* }
%struct.resource = type { i32, i32 }
%struct.s3c2410_platform_nand = type { i32, %struct.s3c2410_nand_set* }
%struct.s3c2410_nand_set = type { i32 }
%struct.s3c2410_nand_info = type { i32, i32, i64, i32, i32, %struct.s3c2410_nand_info*, i32*, %struct.s3c2410_platform_nand*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.s3c2410_nand_mtd = type { i32, i32, i64, i32, i32, %struct.s3c2410_nand_mtd*, i32*, %struct.s3c2410_platform_nand*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"s3c2410_nand_probe(%p)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no memory for flash info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot reserve register region\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"mapped registers at %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to allocate mtd storage\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"initialising set %d (%p, info %p)\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to init cpufreq support\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"clock idle support enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"initialised ok\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c2410_platform_nand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c2410_nand_info*, align 8
  %7 = alloca %struct.s3c2410_nand_mtd*, align 8
  %8 = alloca %struct.s3c2410_nand_set*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call %struct.s3c2410_platform_nand* @to_nand_plat(%struct.platform_device* %14)
  store %struct.s3c2410_platform_nand* %15, %struct.s3c2410_platform_nand** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.platform_device* %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 72, i32 %22)
  %24 = bitcast i8* %23 to %struct.s3c2410_nand_info*
  store %struct.s3c2410_nand_info* %24, %struct.s3c2410_nand_info** %6, align 8
  %25 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %26 = icmp eq %struct.s3c2410_nand_info* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %277

33:                                               ; preds = %1
  %34 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %35 = bitcast %struct.s3c2410_nand_info* %34 to %struct.s3c2410_nand_mtd*
  %36 = call i32 @memset(%struct.s3c2410_nand_mtd* %35, i32 0, i32 72)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %39 = bitcast %struct.s3c2410_nand_info* %38 to %struct.s3c2410_nand_mtd*
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.s3c2410_nand_mtd* %39)
  %41 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %42 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %46 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @clk_get(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %53 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %55 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %33
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %277

65:                                               ; preds = %33
  %66 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %67 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clk_enable(i32 %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 2
  %72 = load %struct.resource*, %struct.resource** %71, align 8
  store %struct.resource* %72, %struct.resource** %9, align 8
  %73 = load %struct.resource*, %struct.resource** %9, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %9, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load %struct.resource*, %struct.resource** %9, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @request_mem_region(i32 %83, i32 %84, i32 %87)
  %89 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %90 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %89, i32 0, i32 9
  store i32* %88, i32** %90, align 8
  %91 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %92 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %91, i32 0, i32 9
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %65
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %277

101:                                              ; preds = %65
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %105 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %104, i32 0, i32 8
  store i32* %103, i32** %105, align 8
  %106 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %107 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %108 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %107, i32 0, i32 7
  store %struct.s3c2410_platform_nand* %106, %struct.s3c2410_platform_nand** %108, align 8
  %109 = load %struct.resource*, %struct.resource** %9, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32* @ioremap(i32 %111, i32 %112)
  %114 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %115 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %114, i32 0, i32 6
  store i32* %113, i32** %115, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %118 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %120 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %101
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %277

129:                                              ; preds = %101
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %133 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @dev_dbg(i32* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %134)
  %136 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %137 = bitcast %struct.s3c2410_nand_info* %136 to %struct.s3c2410_nand_mtd*
  %138 = call i32 @s3c2410_nand_inithw(%struct.s3c2410_nand_mtd* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %277

142:                                              ; preds = %129
  %143 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %144 = icmp ne %struct.s3c2410_platform_nand* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %147 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %146, i32 0, i32 1
  %148 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %147, align 8
  br label %150

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi %struct.s3c2410_nand_set* [ %148, %145 ], [ null, %149 ]
  store %struct.s3c2410_nand_set* %151, %struct.s3c2410_nand_set** %8, align 8
  %152 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %153 = icmp ne %struct.s3c2410_platform_nand* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %4, align 8
  %156 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  br label %159

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i32 [ %157, %154 ], [ 1, %158 ]
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %163 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 72
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call i8* @kmalloc(i32 %168, i32 %169)
  %171 = bitcast i8* %170 to %struct.s3c2410_nand_info*
  %172 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %173 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %172, i32 0, i32 5
  store %struct.s3c2410_nand_info* %171, %struct.s3c2410_nand_info** %173, align 8
  %174 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %175 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %174, i32 0, i32 5
  %176 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %175, align 8
  %177 = icmp eq %struct.s3c2410_nand_info* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %159
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @dev_err(i32* %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %10, align 4
  br label %277

184:                                              ; preds = %159
  %185 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %186 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %185, i32 0, i32 5
  %187 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %186, align 8
  %188 = bitcast %struct.s3c2410_nand_info* %187 to %struct.s3c2410_nand_mtd*
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @memset(%struct.s3c2410_nand_mtd* %188, i32 0, i32 %189)
  %191 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %192 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %191, i32 0, i32 5
  %193 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %192, align 8
  %194 = bitcast %struct.s3c2410_nand_info* %193 to %struct.s3c2410_nand_mtd*
  store %struct.s3c2410_nand_mtd* %194, %struct.s3c2410_nand_mtd** %7, align 8
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %247, %184
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %252

199:                                              ; preds = %195
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %202 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %203 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %200, %struct.s3c2410_nand_mtd* %201, %struct.s3c2410_nand_info* %202)
  %204 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %205 = bitcast %struct.s3c2410_nand_info* %204 to %struct.s3c2410_nand_mtd*
  %206 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %207 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %8, align 8
  %208 = call i32 @s3c2410_nand_init_chip(%struct.s3c2410_nand_mtd* %205, %struct.s3c2410_nand_mtd* %206, %struct.s3c2410_nand_set* %207)
  %209 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %210 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %209, i32 0, i32 4
  %211 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %8, align 8
  %212 = icmp ne %struct.s3c2410_nand_set* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %199
  %214 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %8, align 8
  %215 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  br label %218

217:                                              ; preds = %199
  br label %218

218:                                              ; preds = %217, %213
  %219 = phi i32 [ %216, %213 ], [ 1, %217 ]
  %220 = call i64 @nand_scan_ident(i32* %210, i32 %219)
  %221 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %222 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %221, i32 0, i32 2
  store i64 %220, i64* %222, align 8
  %223 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %224 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %218
  %228 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %229 = bitcast %struct.s3c2410_nand_info* %228 to %struct.s3c2410_nand_mtd*
  %230 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %231 = call i32 @s3c2410_nand_update_chip(%struct.s3c2410_nand_mtd* %229, %struct.s3c2410_nand_mtd* %230)
  %232 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %233 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %232, i32 0, i32 4
  %234 = call i32 @nand_scan_tail(i32* %233)
  %235 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %236 = bitcast %struct.s3c2410_nand_info* %235 to %struct.s3c2410_nand_mtd*
  %237 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %238 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %8, align 8
  %239 = call i32 @s3c2410_nand_add_partition(%struct.s3c2410_nand_mtd* %236, %struct.s3c2410_nand_mtd* %237, %struct.s3c2410_nand_set* %238)
  br label %240

240:                                              ; preds = %227, %218
  %241 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %8, align 8
  %242 = icmp ne %struct.s3c2410_nand_set* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %8, align 8
  %245 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %244, i32 1
  store %struct.s3c2410_nand_set* %245, %struct.s3c2410_nand_set** %8, align 8
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %13, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %13, align 4
  %250 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %7, align 8
  %251 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %250, i32 1
  store %struct.s3c2410_nand_mtd* %251, %struct.s3c2410_nand_mtd** %7, align 8
  br label %195

252:                                              ; preds = %195
  %253 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %254 = bitcast %struct.s3c2410_nand_info* %253 to %struct.s3c2410_nand_mtd*
  %255 = call i32 @s3c2410_nand_cpufreq_register(%struct.s3c2410_nand_mtd* %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = call i32 @dev_err(i32* %260, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %277

262:                                              ; preds = %252
  %263 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %264 = bitcast %struct.s3c2410_nand_info* %263 to %struct.s3c2410_nand_mtd*
  %265 = call i64 @allow_clk_stop(%struct.s3c2410_nand_mtd* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %268, i32 0, i32 0
  %270 = call i32 @dev_info(i32* %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %271 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %6, align 8
  %272 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @clk_disable(i32 %273)
  br label %275

275:                                              ; preds = %267, %262
  %276 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

277:                                              ; preds = %258, %178, %141, %123, %95, %59, %27
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = call i32 @s3c24xx_nand_remove(%struct.platform_device* %278)
  %280 = load i32, i32* %10, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %10, align 4
  br label %285

285:                                              ; preds = %282, %277
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %285, %275
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.s3c2410_platform_nand* @to_nand_plat(%struct.platform_device*) #1

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.s3c2410_nand_mtd*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32* @request_mem_region(i32, i32, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32*) #1

declare dso_local i32 @s3c2410_nand_inithw(%struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @s3c2410_nand_init_chip(%struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_set*) #1

declare dso_local i64 @nand_scan_ident(i32*, i32) #1

declare dso_local i32 @s3c2410_nand_update_chip(%struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @nand_scan_tail(i32*) #1

declare dso_local i32 @s3c2410_nand_add_partition(%struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_set*) #1

declare dso_local i32 @s3c2410_nand_cpufreq_register(%struct.s3c2410_nand_mtd*) #1

declare dso_local i64 @allow_clk_stop(%struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @s3c24xx_nand_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
