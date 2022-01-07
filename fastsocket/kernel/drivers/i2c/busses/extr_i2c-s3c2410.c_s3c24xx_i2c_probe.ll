; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.s3c2410_platform_i2c* }
%struct.s3c2410_platform_i2c = type { i32 }
%struct.s3c24xx_i2c = type { i32, i32, i32, %struct.s3c24xx_i2c*, i32*, %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__, i32, %struct.s3c24xx_i2c*, i32*, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no memory for state\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"s3c2410-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@s3c24xx_i2c_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"clock source %p\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot find IO resource\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"cannot request IO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"cannot map IO\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"registers %p (%p, %p)\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cannot find IRQ\0A\00", align 1
@s3c24xx_i2c_irq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"failed to register cpufreq notifier\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to add bus to i2c core\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%s: S3C I2C adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c24xx_i2c*, align 8
  %5 = alloca %struct.s3c2410_platform_i2c*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %10, align 8
  store %struct.s3c2410_platform_i2c* %11, %struct.s3c2410_platform_i2c** %5, align 8
  %12 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %13 = icmp ne %struct.s3c2410_platform_i2c* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %275

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.s3c24xx_i2c* @kzalloc(i32 104, i32 %21)
  store %struct.s3c24xx_i2c* %22, %struct.s3c24xx_i2c** %4, align 8
  %23 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %24 = icmp ne %struct.s3c24xx_i2c* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %275

31:                                               ; preds = %20
  %32 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlcpy(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 8
  %41 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i32* @s3c24xx_i2c_algorithm, i32** %43, align 8
  %44 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %45 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %48 = load i32, i32* @I2C_CLASS_SPD, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %54 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %53, i32 0, i32 0
  store i32 50, i32* %54, align 8
  %55 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %56 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %55, i32 0, i32 8
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %58, i32 0, i32 7
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %63, i32 0, i32 6
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @clk_get(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %69 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %71 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %31
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %271

81:                                               ; preds = %31
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %85 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 (%struct.TYPE_8__*, i8*, i32*, ...) @dev_dbg(%struct.TYPE_8__* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %88)
  %90 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %91 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @clk_enable(i32 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load i32, i32* @IORESOURCE_MEM, align 4
  %96 = call %struct.resource* @platform_get_resource(%struct.platform_device* %94, i32 %95, i32 0)
  store %struct.resource* %96, %struct.resource** %6, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = icmp eq %struct.resource* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %81
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %262

105:                                              ; preds = %81
  %106 = load %struct.resource*, %struct.resource** %6, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.resource*, %struct.resource** %6, align 8
  %110 = call i32 @resource_size(%struct.resource* %109)
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.s3c24xx_i2c* @request_mem_region(i32 %108, i32 %110, i32 %113)
  %115 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %116 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %115, i32 0, i32 3
  store %struct.s3c24xx_i2c* %114, %struct.s3c24xx_i2c** %116, align 8
  %117 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %118 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %117, i32 0, i32 3
  %119 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %118, align 8
  %120 = icmp eq %struct.s3c24xx_i2c* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %105
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i32, i32* @ENXIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %262

127:                                              ; preds = %105
  %128 = load %struct.resource*, %struct.resource** %6, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.resource*, %struct.resource** %6, align 8
  %132 = call i32 @resource_size(%struct.resource* %131)
  %133 = call i32* @ioremap(i32 %130, i32 %132)
  %134 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %135 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  %136 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %137 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %127
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %144 = load i32, i32* @ENXIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %253

146:                                              ; preds = %127
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %150 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %153 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %152, i32 0, i32 3
  %154 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %153, align 8
  %155 = load %struct.resource*, %struct.resource** %6, align 8
  %156 = call i32 (%struct.TYPE_8__*, i8*, i32*, ...) @dev_dbg(%struct.TYPE_8__* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* %151, %struct.s3c24xx_i2c* %154, %struct.resource* %155)
  %157 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %158 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %159 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  store %struct.s3c24xx_i2c* %157, %struct.s3c24xx_i2c** %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %164 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %166, align 8
  %167 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %168 = call i32 @s3c24xx_i2c_init(%struct.s3c24xx_i2c* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %146
  br label %248

172:                                              ; preds = %146
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = call i32 @platform_get_irq(%struct.platform_device* %173, i32 0)
  store i32 %174, i32* %7, align 4
  %175 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %176 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %248

183:                                              ; preds = %172
  %184 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %185 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @s3c24xx_i2c_irq, align 4
  %188 = load i32, i32* @IRQF_DISABLED, align 4
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @dev_name(%struct.TYPE_8__* %190)
  %192 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %193 = call i32 @request_irq(i32 %186, i32 %187, i32 %188, i32 %191, %struct.s3c24xx_i2c* %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %183
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %200 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %201)
  br label %248

203:                                              ; preds = %183
  %204 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %205 = call i32 @s3c24xx_i2c_register_cpufreq(%struct.s3c24xx_i2c* %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %210, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %242

212:                                              ; preds = %203
  %213 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %214 = getelementptr inbounds %struct.s3c2410_platform_i2c, %struct.s3c2410_platform_i2c* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %217 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  store i32 %215, i32* %218, align 8
  %219 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %220 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %219, i32 0, i32 5
  %221 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_7__* %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %212
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %226, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %239

228:                                              ; preds = %212
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %231 = call i32 @platform_set_drvdata(%struct.platform_device* %229, %struct.s3c24xx_i2c* %230)
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %235 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  %237 = call i32 @dev_name(%struct.TYPE_8__* %236)
  %238 = call i32 @dev_info(%struct.TYPE_8__* %233, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %237)
  store i32 0, i32* %2, align 4
  br label %275

239:                                              ; preds = %224
  %240 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %241 = call i32 @s3c24xx_i2c_deregister_cpufreq(%struct.s3c24xx_i2c* %240)
  br label %242

242:                                              ; preds = %239, %208
  %243 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %244 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %247 = call i32 @free_irq(i32 %245, %struct.s3c24xx_i2c* %246)
  br label %248

248:                                              ; preds = %242, %196, %179, %171
  %249 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %250 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @iounmap(i32* %251)
  br label %253

253:                                              ; preds = %248, %140
  %254 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %255 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %254, i32 0, i32 3
  %256 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %255, align 8
  %257 = call i32 @release_resource(%struct.s3c24xx_i2c* %256)
  %258 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %259 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %258, i32 0, i32 3
  %260 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %259, align 8
  %261 = call i32 @kfree(%struct.s3c24xx_i2c* %260)
  br label %262

262:                                              ; preds = %253, %121, %99
  %263 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %264 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @clk_disable(i32 %265)
  %267 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %268 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @clk_put(i32 %269)
  br label %271

271:                                              ; preds = %262, %75
  %272 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %273 = call i32 @kfree(%struct.s3c24xx_i2c* %272)
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %271, %228, %25, %14
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.s3c24xx_i2c* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32*, ...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.s3c24xx_i2c* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @s3c24xx_i2c_init(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @s3c24xx_i2c_register_cpufreq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @s3c24xx_i2c_deregister_cpufreq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @free_irq(i32, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @kfree(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
