; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8* }
%struct.i2c_adapter = type { i32, %struct.acpi_smbus_cmi* }
%struct.acpi_smbus_cmi = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %union.acpi_object* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"access size: %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@ACPI_SMBUS_PRTCL_QUICK = common dso_local global i8 0, align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_SMBUS_PRTCL_BYTE = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_BYTE_DATA = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_WORD_DATA = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_BLOCK_DATA = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_READ = common dso_local global i8 0, align 1
@smbus_methods = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ACPI_SMBUS_PRTCL_WRITE = common dso_local global i8 0, align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Evaluating %s: %i\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid argument type\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%s return status: %i\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Transaction status: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @acpi_smbus_cmi_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.acpi_smbus_cmi*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.acpi_object_list, align 8
  %21 = alloca [5 x %union.acpi_object], align 16
  %22 = alloca %struct.acpi_buffer, align 8
  %23 = alloca %union.acpi_object*, align 8
  %24 = alloca %union.acpi_object*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 1
  %29 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %28, align 8
  store %struct.acpi_smbus_cmi* %29, %struct.acpi_smbus_cmi** %17, align 8
  store i32 0, i32* %19, align 4
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %31 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %union.acpi_object*
  store %union.acpi_object* %33, %union.acpi_object** %30, align 8
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 2
  store i32 0, i32* %35, align 8
  store i32 0, i32* %26, align 4
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %14, align 4
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %43)
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %179 [
    i32 129, label %46
    i32 131, label %67
    i32 130, label %89
    i32 128, label %113
    i32 132, label %137
  ]

46:                                               ; preds = %7
  %47 = load i8, i8* @ACPI_SMBUS_PRTCL_QUICK, align 1
  store i8 %47, i8* %18, align 1
  store i32 0, i32* %13, align 4
  %48 = load i8, i8* %12, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %55 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %56 = bitcast %union.acpi_object* %55 to i64*
  store i64 %54, i64* %56, align 8
  %57 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %61 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %62 = bitcast %union.acpi_object* %61 to i64*
  store i64 %60, i64* %62, align 16
  %63 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_7__*
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 16
  br label %66

66:                                               ; preds = %53, %46
  br label %186

67:                                               ; preds = %7
  %68 = load i8, i8* @ACPI_SMBUS_PRTCL_BYTE, align 1
  store i8 %68, i8* %18, align 1
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %76 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %77 = bitcast %union.acpi_object* %76 to i64*
  store i64 %75, i64* %77, align 8
  %78 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %79 = bitcast %union.acpi_object* %78 to %struct.TYPE_7__*
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %82 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %83 = bitcast %union.acpi_object* %82 to i64*
  store i64 %81, i64* %83, align 16
  %84 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_7__*
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 16
  br label %88

87:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %74
  br label %186

89:                                               ; preds = %7
  %90 = load i8, i8* @ACPI_SMBUS_PRTCL_BYTE_DATA, align 1
  store i8 %90, i8* %18, align 1
  %91 = load i8, i8* %12, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %98 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %99 = bitcast %union.acpi_object* %98 to i64*
  store i64 %97, i64* %99, align 8
  %100 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %101 = bitcast %union.acpi_object* %100 to %struct.TYPE_7__*
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %104 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %105 = bitcast %union.acpi_object* %104 to i64*
  store i64 %103, i64* %105, align 16
  %106 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %107 = bitcast %union.i2c_smbus_data* %106 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %110 = bitcast %union.acpi_object* %109 to %struct.TYPE_7__*
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 16
  br label %112

112:                                              ; preds = %96, %89
  br label %186

113:                                              ; preds = %7
  %114 = load i8, i8* @ACPI_SMBUS_PRTCL_WORD_DATA, align 1
  store i8 %114, i8* %18, align 1
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %113
  %121 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %122 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %123 = bitcast %union.acpi_object* %122 to i64*
  store i64 %121, i64* %123, align 8
  %124 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %125 = bitcast %union.acpi_object* %124 to %struct.TYPE_7__*
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 2, i32* %126, align 8
  %127 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %128 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %129 = bitcast %union.acpi_object* %128 to i64*
  store i64 %127, i64* %129, align 16
  %130 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %131 = bitcast %union.i2c_smbus_data* %130 to i32*
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %134 = bitcast %union.acpi_object* %133 to %struct.TYPE_7__*
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 16
  br label %136

136:                                              ; preds = %120, %113
  br label %186

137:                                              ; preds = %7
  %138 = load i8, i8* @ACPI_SMBUS_PRTCL_BLOCK_DATA, align 1
  store i8 %138, i8* %18, align 1
  %139 = load i8, i8* %12, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %178

144:                                              ; preds = %137
  %145 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %146 = bitcast %union.i2c_smbus_data* %145 to i32**
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %26, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %26, align 4
  %154 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152, %144
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %431

159:                                              ; preds = %152
  %160 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %161 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %162 = bitcast %union.acpi_object* %161 to i64*
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* %26, align 4
  %164 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %165 = bitcast %union.acpi_object* %164 to %struct.TYPE_7__*
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %168 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %169 = bitcast %union.acpi_object* %168 to i64*
  store i64 %167, i64* %169, align 16
  %170 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %171 = bitcast %union.i2c_smbus_data* %170 to i32**
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = ptrtoint i32* %173 to i32
  %175 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %176 = bitcast %union.acpi_object* %175 to %struct.TYPE_6__*
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 16
  br label %178

178:                                              ; preds = %159, %137
  br label %186

179:                                              ; preds = %7
  %180 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %181 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %180, i32 0, i32 0
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @dev_warn(i32* %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @EOPNOTSUPP, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %8, align 4
  br label %431

186:                                              ; preds = %178, %136, %112, %88, %66
  %187 = load i8, i8* %12, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8, i8* @I2C_SMBUS_READ, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = load i8, i8* @ACPI_SMBUS_PRTCL_READ, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8, i8* %18, align 1
  %196 = zext i8 %195 to i32
  %197 = or i32 %196, %194
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %18, align 1
  %199 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @smbus_methods, i32 0, i32 0), align 8
  store i8* %199, i8** %25, align 8
  %200 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 0
  store i32 3, i32* %200, align 8
  br label %210

201:                                              ; preds = %186
  %202 = load i8, i8* @ACPI_SMBUS_PRTCL_WRITE, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8, i8* %18, align 1
  %205 = zext i8 %204 to i32
  %206 = or i32 %205, %203
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %18, align 1
  %208 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @smbus_methods, i32 0, i32 1), align 8
  store i8* %208, i8** %25, align 8
  %209 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 0
  store i32 5, i32* %209, align 8
  br label %210

210:                                              ; preds = %201, %192
  %211 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 0
  %212 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 1
  store %union.acpi_object* %211, %union.acpi_object** %212, align 8
  %213 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %214 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 0
  %215 = bitcast %union.acpi_object* %214 to i64*
  store i64 %213, i64* %215, align 16
  %216 = load i8, i8* %18, align 1
  %217 = zext i8 %216 to i32
  %218 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 0
  %219 = bitcast %union.acpi_object* %218 to %struct.TYPE_7__*
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 16
  %221 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %222 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 1
  %223 = bitcast %union.acpi_object* %222 to i64*
  store i64 %221, i64* %223, align 8
  %224 = load i32, i32* %10, align 4
  %225 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 1
  %226 = bitcast %union.acpi_object* %225 to %struct.TYPE_7__*
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %229 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 2
  %230 = bitcast %union.acpi_object* %229 to i64*
  store i64 %228, i64* %230, align 16
  %231 = load i32, i32* %13, align 4
  %232 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 2
  %233 = bitcast %union.acpi_object* %232 to %struct.TYPE_7__*
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 16
  %235 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %236 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i8*, i8** %25, align 8
  %239 = call i32 @acpi_evaluate_object(i32 %237, i8* %238, %struct.acpi_object_list* %20, %struct.acpi_buffer* %22)
  store i32 %239, i32* %19, align 4
  %240 = load i32, i32* %19, align 4
  %241 = call i64 @ACPI_FAILURE(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %210
  %244 = load i32, i32* @AE_INFO, align 4
  %245 = load i8*, i8** %25, align 8
  %246 = load i32, i32* %19, align 4
  %247 = call i32 @ACPI_ERROR(i32 %246)
  %248 = load i32, i32* @EIO, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %8, align 4
  br label %431

250:                                              ; preds = %210
  %251 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %252 = load %union.acpi_object*, %union.acpi_object** %251, align 8
  store %union.acpi_object* %252, %union.acpi_object** %24, align 8
  %253 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %254 = icmp ne %union.acpi_object* %253, null
  br i1 %254, label %255, label %266

255:                                              ; preds = %250
  %256 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %257 = bitcast %union.acpi_object* %256 to i64*
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %263 = bitcast %union.acpi_object* %262 to %struct.TYPE_5__*
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load %union.acpi_object*, %union.acpi_object** %264, align 8
  store %union.acpi_object* %265, %union.acpi_object** %23, align 8
  br label %271

266:                                              ; preds = %255, %250
  %267 = load i32, i32* @AE_INFO, align 4
  %268 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.5 to i32))
  %269 = load i32, i32* @EIO, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %16, align 4
  br label %422

271:                                              ; preds = %261
  %272 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %273 = icmp eq %union.acpi_object* %272, null
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %276 = bitcast %union.acpi_object* %275 to i64*
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %274, %271
  %281 = load i32, i32* @AE_INFO, align 4
  %282 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.5 to i32))
  %283 = load i32, i32* @EIO, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %16, align 4
  br label %422

285:                                              ; preds = %274
  %286 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %287 = bitcast %union.acpi_object* %286 to %struct.TYPE_7__*
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  store i32 %289, i32* %16, align 4
  %290 = load i32, i32* @ACPI_DB_INFO, align 4
  %291 = load i8*, i8** %25, align 8
  %292 = load i32, i32* %16, align 4
  %293 = call i32 @ACPI_DEBUG_PRINT(i32 %292)
  %294 = load i32, i32* %16, align 4
  switch i32 %294, label %305 [
    i32 134, label %295
    i32 136, label %296
    i32 133, label %299
    i32 135, label %302
  ]

295:                                              ; preds = %285
  store i32 0, i32* %16, align 4
  br label %308

296:                                              ; preds = %285
  %297 = load i32, i32* @EBUSY, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %16, align 4
  br label %422

299:                                              ; preds = %285
  %300 = load i32, i32* @ETIMEDOUT, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %16, align 4
  br label %422

302:                                              ; preds = %285
  %303 = load i32, i32* @ENXIO, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %16, align 4
  br label %422

305:                                              ; preds = %285
  %306 = load i32, i32* @EIO, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %16, align 4
  br label %422

308:                                              ; preds = %295
  %309 = load i8, i8* %12, align 1
  %310 = sext i8 %309 to i32
  %311 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %310, %312
  br i1 %313, label %317, label %314

314:                                              ; preds = %308
  %315 = load i32, i32* %14, align 4
  %316 = icmp eq i32 %315, 129
  br i1 %316, label %317, label %318

317:                                              ; preds = %314, %308
  br label %422

318:                                              ; preds = %314
  %319 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %320 = bitcast %union.acpi_object* %319 to %struct.TYPE_5__*
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load %union.acpi_object*, %union.acpi_object** %321, align 8
  %323 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %322, i64 1
  store %union.acpi_object* %323, %union.acpi_object** %23, align 8
  %324 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %325 = icmp eq %union.acpi_object* %324, null
  br i1 %325, label %332, label %326

326:                                              ; preds = %318
  %327 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %328 = bitcast %union.acpi_object* %327 to i64*
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %337

332:                                              ; preds = %326, %318
  %333 = load i32, i32* @AE_INFO, align 4
  %334 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.5 to i32))
  %335 = load i32, i32* @EIO, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %16, align 4
  br label %422

337:                                              ; preds = %326
  %338 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %339 = bitcast %union.acpi_object* %338 to %struct.TYPE_7__*
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %26, align 4
  %342 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %343 = bitcast %union.acpi_object* %342 to %struct.TYPE_5__*
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 0
  %345 = load %union.acpi_object*, %union.acpi_object** %344, align 8
  %346 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %345, i64 2
  store %union.acpi_object* %346, %union.acpi_object** %23, align 8
  %347 = load i32, i32* %14, align 4
  switch i32 %347, label %421 [
    i32 131, label %348
    i32 130, label %348
    i32 128, label %348
    i32 132, label %380
  ]

348:                                              ; preds = %337, %337, %337
  %349 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %350 = icmp eq %union.acpi_object* %349, null
  br i1 %350, label %357, label %351

351:                                              ; preds = %348
  %352 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %353 = bitcast %union.acpi_object* %352 to i64*
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %351, %348
  %358 = load i32, i32* @AE_INFO, align 4
  %359 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.5 to i32))
  %360 = load i32, i32* @EIO, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %16, align 4
  br label %422

362:                                              ; preds = %351
  %363 = load i32, i32* %26, align 4
  %364 = icmp eq i32 %363, 2
  br i1 %364, label %365, label %372

365:                                              ; preds = %362
  %366 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %367 = bitcast %union.acpi_object* %366 to %struct.TYPE_7__*
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %371 = bitcast %union.i2c_smbus_data* %370 to i32*
  store i32 %369, i32* %371, align 8
  br label %379

372:                                              ; preds = %362
  %373 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %374 = bitcast %union.acpi_object* %373 to %struct.TYPE_7__*
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %378 = bitcast %union.i2c_smbus_data* %377 to i32*
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %372, %365
  br label %421

380:                                              ; preds = %337
  %381 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %382 = icmp eq %union.acpi_object* %381, null
  br i1 %382, label %389, label %383

383:                                              ; preds = %380
  %384 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %385 = bitcast %union.acpi_object* %384 to i64*
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %388 = icmp ne i64 %386, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %383, %380
  %390 = load i32, i32* @AE_INFO, align 4
  %391 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.5 to i32))
  %392 = load i32, i32* @EIO, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %16, align 4
  br label %422

394:                                              ; preds = %383
  %395 = load i32, i32* %26, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %394
  %398 = load i32, i32* %26, align 4
  %399 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %404

401:                                              ; preds = %397, %394
  %402 = load i32, i32* @EPROTO, align 4
  %403 = sub nsw i32 0, %402
  store i32 %403, i32* %8, align 4
  br label %431

404:                                              ; preds = %397
  %405 = load i32, i32* %26, align 4
  %406 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %407 = bitcast %union.i2c_smbus_data* %406 to i32**
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  store i32 %405, i32* %409, align 4
  %410 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %411 = bitcast %union.i2c_smbus_data* %410 to i32**
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  %414 = ptrtoint i32* %413 to i32
  %415 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %416 = bitcast %union.acpi_object* %415 to %struct.TYPE_6__*
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* %26, align 4
  %420 = call i32 @memcpy(i32 %414, i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %337, %404, %379
  br label %422

422:                                              ; preds = %421, %389, %357, %332, %317, %305, %302, %299, %296, %280, %266
  %423 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %424 = load %union.acpi_object*, %union.acpi_object** %423, align 8
  %425 = call i32 @kfree(%union.acpi_object* %424)
  %426 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %427 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %426, i32 0, i32 0
  %428 = load i32, i32* %16, align 4
  %429 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %427, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* %16, align 4
  store i32 %430, i32* %8, align 4
  br label %431

431:                                              ; preds = %422, %401, %243, %179, %156
  %432 = load i32, i32* %8, align 4
  ret i32 %432
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
