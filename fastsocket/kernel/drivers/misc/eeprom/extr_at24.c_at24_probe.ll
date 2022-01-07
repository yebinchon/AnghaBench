; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_11__, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.at24_platform_data = type { i32, i32, i32, i32*, i32 (%struct.TYPE_10__*, i32*)* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.at24_data = type { i32, i32, i32, %struct.at24_data*, %struct.i2c_client**, %struct.TYPE_10__, %struct.TYPE_9__, %struct.at24_platform_data, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@AT24_SIZE_BYTELEN = common dso_local global i32 0, align 4
@AT24_SIZE_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"byte_len looks suspicious (no power of 2)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"page_size looks suspicious (no power of 2)!\0A\00", align 1
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@AT24_FLAG_ADDR16 = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@AT24_FLAG_TAKE8ADDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@AT24_FLAG_IRUGO = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@at24_bin_read = common dso_local global i32 0, align 4
@at24_macc_read = common dso_local global i32 0, align 4
@AT24_FLAG_READONLY = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_I2C_BLOCK = common dso_local global i32 0, align 4
@at24_macc_write = common dso_local global i32 0, align 4
@at24_bin_write = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@io_limit = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"cannot write due to controller restrictions.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"address 0x%02x unavailable\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"%zu byte %s EEPROM %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"(writable)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"(read-only)\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"page_size %d, num_addresses %d, write_max %d%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c", use_smbus\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"probe error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @at24_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at24_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.at24_platform_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.at24_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.at24_platform_data*
  %26 = bitcast %struct.at24_platform_data* %6 to i8*
  %27 = bitcast %struct.at24_platform_data* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 32, i1 false)
  br label %57

28:                                               ; preds = %2
  %29 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %392

36:                                               ; preds = %28
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @AT24_SIZE_BYTELEN, align 4
  %42 = call i32 @AT24_BITMASK(i32 %41)
  %43 = and i32 %40, %42
  %44 = call i32 @BIT(i32 %43)
  %45 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @AT24_SIZE_BYTELEN, align 4
  %47 = load i32, i32* %13, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @AT24_SIZE_FLAGS, align 4
  %51 = call i32 @AT24_BITMASK(i32 %50)
  %52 = and i32 %49, %51
  %53 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 4
  store i32 (%struct.TYPE_10__*, i32*)* null, i32 (%struct.TYPE_10__*, i32*)** %55, align 8
  %56 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 3
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %36, %20
  %58 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @is_power_of_2(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @dev_warn(%struct.TYPE_11__* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @is_power_of_2(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 @dev_warn(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I2C_FUNC_I2C, align 4
  %80 = call i64 @i2c_check_functionality(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AT24_FLAG_ADDR16, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EPFNOSUPPORT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %392

91:                                               ; preds = %82
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %96 = call i64 @i2c_check_functionality(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @EPFNOSUPPORT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %392

101:                                              ; preds = %91
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %101, %75
  %103 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AT24_FLAG_TAKE8ADDR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 8, i32* %12, align 4
  br label %120

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AT24_FLAG_ADDR16, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 65536, i32 256
  %119 = call i32 @DIV_ROUND_UP(i32 %111, i32 %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %109, %108
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 8
  %124 = add i64 112, %123
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call %struct.at24_data* @kzalloc(i32 %125, i32 %126)
  store %struct.at24_data* %127, %struct.at24_data** %9, align 8
  %128 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %129 = icmp ne %struct.at24_data* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %120
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %10, align 4
  br label %392

133:                                              ; preds = %120
  %134 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %135 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %134, i32 0, i32 8
  %136 = call i32 @mutex_init(i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %139 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %141 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %140, i32 0, i32 7
  %142 = bitcast %struct.at24_platform_data* %141 to i8*
  %143 = bitcast %struct.at24_platform_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %146 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %148 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %150, align 8
  %151 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AT24_FLAG_IRUGO, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %133
  %157 = load i32, i32* @S_IRUGO, align 4
  br label %160

158:                                              ; preds = %133
  %159 = load i32, i32* @S_IRUSR, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %163 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i32 %161, i32* %165, align 8
  %166 = load i32, i32* @at24_bin_read, align 4
  %167 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %168 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 4
  %170 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %173 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* @at24_macc_read, align 4
  %176 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %177 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AT24_FLAG_READONLY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %253

188:                                              ; preds = %160
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_I2C_BLOCK, align 4
  %196 = call i64 @i2c_check_functionality(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %248

198:                                              ; preds = %191, %188
  %199 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* @at24_macc_write, align 4
  %202 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %203 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* @at24_bin_write, align 4
  %206 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %207 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* @S_IWUSR, align 4
  %210 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %211 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %209
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* @io_limit, align 4
  %218 = icmp ugt i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %198
  %220 = load i32, i32* @io_limit, align 4
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %219, %198
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %227 = icmp ugt i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %228, %224, %221
  %231 = load i32, i32* %14, align 4
  %232 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %233 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %14, align 4
  %235 = add i32 %234, 2
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call %struct.at24_data* @kmalloc(i32 %235, i32 %236)
  %238 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %239 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %238, i32 0, i32 3
  store %struct.at24_data* %237, %struct.at24_data** %239, align 8
  %240 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %241 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %240, i32 0, i32 3
  %242 = load %struct.at24_data*, %struct.at24_data** %241, align 8
  %243 = icmp ne %struct.at24_data* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %230
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %10, align 4
  br label %389

247:                                              ; preds = %230
  br label %252

248:                                              ; preds = %191
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 0
  %251 = call i32 @dev_warn(%struct.TYPE_11__* %250, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %252

252:                                              ; preds = %248, %247
  br label %253

253:                                              ; preds = %252, %160
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %256 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %255, i32 0, i32 4
  %257 = load %struct.i2c_client**, %struct.i2c_client*** %256, align 8
  %258 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %257, i64 0
  store %struct.i2c_client* %254, %struct.i2c_client** %258, align 8
  store i32 1, i32* %11, align 4
  br label %259

259:                                              ; preds = %301, %253
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp ult i32 %260, %261
  br i1 %262, label %263, label %304

263:                                              ; preds = %259
  %264 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %265 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %268 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %11, align 4
  %271 = zext i32 %270 to i64
  %272 = add nsw i64 %269, %271
  %273 = call %struct.i2c_client* @i2c_new_dummy(i32 %266, i64 %272)
  %274 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %275 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %274, i32 0, i32 4
  %276 = load %struct.i2c_client**, %struct.i2c_client*** %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %276, i64 %278
  store %struct.i2c_client* %273, %struct.i2c_client** %279, align 8
  %280 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %281 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %280, i32 0, i32 4
  %282 = load %struct.i2c_client**, %struct.i2c_client*** %281, align 8
  %283 = load i32, i32* %11, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %282, i64 %284
  %286 = load %struct.i2c_client*, %struct.i2c_client** %285, align 8
  %287 = icmp ne %struct.i2c_client* %286, null
  br i1 %287, label %300, label %288

288:                                              ; preds = %263
  %289 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %290 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %289, i32 0, i32 0
  %291 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %292 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = zext i32 %294 to i64
  %296 = add nsw i64 %293, %295
  %297 = call i32 @dev_err(%struct.TYPE_11__* %290, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %296)
  %298 = load i32, i32* @EADDRINUSE, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %10, align 4
  br label %357

300:                                              ; preds = %263
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %11, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %11, align 4
  br label %259

304:                                              ; preds = %259
  %305 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %306 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %309 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %308, i32 0, i32 6
  %310 = call i32 @sysfs_create_bin_file(i32* %307, %struct.TYPE_9__* %309)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %10, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %304
  br label %357

314:                                              ; preds = %304
  %315 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %316 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %317 = call i32 @i2c_set_clientdata(%struct.i2c_client* %315, %struct.at24_data* %316)
  %318 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %319 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %318, i32 0, i32 0
  %320 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %321 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %325 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %7, align 4
  %328 = icmp ne i32 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  %331 = call i32 @dev_info(%struct.TYPE_11__* %319, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %323, i32 %326, i8* %330)
  %332 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %333 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %338 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = icmp ne i32 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %344 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %333, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %335, i32 %336, i32 %339, i8* %343)
  %345 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 4
  %346 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %345, align 8
  %347 = icmp ne i32 (%struct.TYPE_10__*, i32*)* %346, null
  br i1 %347, label %348, label %356

348:                                              ; preds = %314
  %349 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 4
  %350 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %349, align 8
  %351 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %352 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.at24_platform_data, %struct.at24_platform_data* %6, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = call i32 %350(%struct.TYPE_10__* %352, i32* %354)
  br label %356

356:                                              ; preds = %348, %314
  store i32 0, i32* %3, align 4
  br label %398

357:                                              ; preds = %313, %288
  store i32 1, i32* %11, align 4
  br label %358

358:                                              ; preds = %381, %357
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp ult i32 %359, %360
  br i1 %361, label %362, label %384

362:                                              ; preds = %358
  %363 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %364 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %363, i32 0, i32 4
  %365 = load %struct.i2c_client**, %struct.i2c_client*** %364, align 8
  %366 = load i32, i32* %11, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %365, i64 %367
  %369 = load %struct.i2c_client*, %struct.i2c_client** %368, align 8
  %370 = icmp ne %struct.i2c_client* %369, null
  br i1 %370, label %371, label %380

371:                                              ; preds = %362
  %372 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %373 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %372, i32 0, i32 4
  %374 = load %struct.i2c_client**, %struct.i2c_client*** %373, align 8
  %375 = load i32, i32* %11, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %374, i64 %376
  %378 = load %struct.i2c_client*, %struct.i2c_client** %377, align 8
  %379 = call i32 @i2c_unregister_device(%struct.i2c_client* %378)
  br label %380

380:                                              ; preds = %371, %362
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %11, align 4
  %383 = add i32 %382, 1
  store i32 %383, i32* %11, align 4
  br label %358

384:                                              ; preds = %358
  %385 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %386 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %385, i32 0, i32 3
  %387 = load %struct.at24_data*, %struct.at24_data** %386, align 8
  %388 = call i32 @kfree(%struct.at24_data* %387)
  br label %389

389:                                              ; preds = %384, %244
  %390 = load %struct.at24_data*, %struct.at24_data** %9, align 8
  %391 = call i32 @kfree(%struct.at24_data* %390)
  br label %392

392:                                              ; preds = %389, %130, %98, %88, %33
  %393 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %394 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %393, i32 0, i32 0
  %395 = load i32, i32* %10, align 4
  %396 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %394, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %395)
  %397 = load i32, i32* %10, align 4
  store i32 %397, i32* %3, align 4
  br label %398

398:                                              ; preds = %392, %356
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @AT24_BITMASK(i32) #2

declare dso_local i32 @is_power_of_2(i32) #2

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @i2c_check_functionality(i32, i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local %struct.at24_data* @kzalloc(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local %struct.at24_data* @kmalloc(i32, i32) #2

declare dso_local %struct.i2c_client* @i2c_new_dummy(i32, i64) #2

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i64) #2

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.at24_data*) #2

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32, i32, i8*) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, i32, ...) #2

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #2

declare dso_local i32 @kfree(%struct.at24_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
