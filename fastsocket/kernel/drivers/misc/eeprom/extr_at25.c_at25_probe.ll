; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at25.c_at25_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at25.c_at25_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.spi_eeprom* }
%struct.spi_eeprom = type { i32, i32, i32, i32, i32, i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.at25_data = type { i32, %struct.spi_eeprom, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"no chip description\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EE_ADDR1 = common dso_local global i32 0, align 4
@EE_ADDR2 = common dso_local global i32 0, align 4
@EE_ADDR3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported address type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AT25_RDSR = common dso_local global i32 0, align 4
@AT25_SR_nRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rdsr --> %d (%02x)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@at25_bin_read = common dso_local global i32 0, align 4
@at25_mem_read = common dso_local global i32 0, align 4
@EE_READONLY = common dso_local global i32 0, align 4
@at25_bin_write = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@at25_mem_write = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%Zd %s %s eeprom%s, pagesize %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Byte\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"KByte\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" (readonly)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"probe err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @at25_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at25_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.at25_data*, align 8
  %5 = alloca %struct.spi_eeprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.at25_data* null, %struct.at25_data** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.spi_eeprom*, %struct.spi_eeprom** %11, align 8
  store %struct.spi_eeprom* %12, %struct.spi_eeprom** %5, align 8
  %13 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %14 = icmp ne %struct.spi_eeprom* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %215

21:                                               ; preds = %1
  %22 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %23 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EE_ADDR1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %31 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EE_ADDR2, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 2, i32* %8, align 4
  br label %52

37:                                               ; preds = %29
  %38 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %39 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EE_ADDR3, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 3, i32* %8, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %215

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = load i32, i32* @AT25_RDSR, align 4
  %56 = call i32 @spi_w8r8(%struct.spi_device* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AT25_SR_nRDY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59, %53
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %215

72:                                               ; preds = %59
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.at25_data* @kzalloc(i32 88, i32 %73)
  store %struct.at25_data* %74, %struct.at25_data** %4, align 8
  %75 = icmp ne %struct.at25_data* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %215

79:                                               ; preds = %72
  %80 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %81 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %80, i32 0, i32 5
  %82 = call i32 @mutex_init(i32* %81)
  %83 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %84 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %83, i32 0, i32 1
  %85 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %86 = bitcast %struct.spi_eeprom* %84 to i8*
  %87 = bitcast %struct.spi_eeprom* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 32, i1 false)
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = call i32 @spi_dev_get(%struct.spi_device* %88)
  %90 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %91 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %95 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %93, %struct.at25_data* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %98 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %100 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %102, align 8
  %103 = load i32, i32* @S_IRUSR, align 4
  %104 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %105 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* @at25_bin_read, align 4
  %109 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %110 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @at25_mem_read, align 4
  %113 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %114 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %117 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %121 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %124 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @EE_READONLY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %79
  %130 = load i32, i32* @at25_bin_write, align 4
  %131 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %132 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* @S_IWUSR, align 4
  %135 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %136 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @at25_mem_write, align 4
  %142 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %143 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %129, %79
  %146 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %147 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %150 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %149, i32 0, i32 2
  %151 = call i32 @sysfs_create_bin_file(i32* %148, %struct.TYPE_8__* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %215

155:                                              ; preds = %145
  %156 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %157 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %156, i32 0, i32 5
  %158 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %157, align 8
  %159 = icmp ne i32 (%struct.TYPE_9__*, i32)* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %162 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %161, i32 0, i32 5
  %163 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %162, align 8
  %164 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %165 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %164, i32 0, i32 3
  %166 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %167 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %163(%struct.TYPE_9__* %165, i32 %168)
  br label %170

170:                                              ; preds = %160, %155
  %171 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %172 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %171, i32 0, i32 0
  %173 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %174 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %176, 1024
  br i1 %177, label %178, label %183

178:                                              ; preds = %170
  %179 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %180 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  br label %189

183:                                              ; preds = %170
  %184 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %185 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sdiv i32 %187, 1024
  br label %189

189:                                              ; preds = %183, %178
  %190 = phi i32 [ %182, %178 ], [ %188, %183 ]
  %191 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %192 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %194, 1024
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %198 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %199 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.spi_eeprom*, %struct.spi_eeprom** %5, align 8
  %203 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @EE_READONLY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %210 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %211 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.spi_eeprom, %struct.spi_eeprom* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @dev_info(%struct.TYPE_10__* %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %190, i8* %197, i32 %201, i8* %209, i32 %213)
  store i32 0, i32* %2, align 4
  br label %223

215:                                              ; preds = %154, %76, %64, %45, %15
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 0
  %218 = load i32, i32* %6, align 4
  %219 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  %220 = load %struct.at25_data*, %struct.at25_data** %4, align 8
  %221 = call i32 @kfree(%struct.at25_data* %220)
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %215, %189
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local %struct.at25_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spi_dev_get(%struct.spi_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.at25_data*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.at25_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
