; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-i2c.c_flexcop_i2c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-i2c.c_flexcop_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.flexcop_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@FC_I2C_PORT_DEMOD = common dso_local global i32 0, align 4
@FC_I2C_PORT_EEPROM = common dso_local global i32 0, align 4
@FC_I2C_PORT_TUNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"B2C2 FlexCop I2C to demod\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"B2C2 FlexCop I2C to eeprom\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"B2C2 FlexCop I2C to tuner\00", align 1
@flexcop_algo = common dso_local global i32 0, align 4
@FC_STATE_I2C_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_i2c_init(%struct.flexcop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  %5 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %6 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %5, i32 0, i32 3
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %9 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %10 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store %struct.flexcop_device* %8, %struct.flexcop_device** %13, align 8
  %14 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %15 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %16 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store %struct.flexcop_device* %14, %struct.flexcop_device** %19, align 8
  %20 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %22 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store %struct.flexcop_device* %20, %struct.flexcop_device** %25, align 8
  %26 = load i32, i32* @FC_I2C_PORT_DEMOD, align 4
  %27 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %28 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 8
  %32 = load i32, i32* @FC_I2C_PORT_EEPROM, align 4
  %33 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %34 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 8
  %38 = load i32, i32* @FC_I2C_PORT_TUNER, align 4
  %39 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %40 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 8
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %45 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @strlcpy(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 4)
  %52 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %53 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strlcpy(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %60 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %61 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strlcpy(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %68 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %69 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %74 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 0
  %77 = call i32 @i2c_set_adapdata(%struct.TYPE_7__* %72, %struct.TYPE_8__* %76)
  %78 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %79 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %84 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 1
  %87 = call i32 @i2c_set_adapdata(%struct.TYPE_7__* %82, %struct.TYPE_8__* %86)
  %88 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %89 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %94 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 2
  %97 = call i32 @i2c_set_adapdata(%struct.TYPE_7__* %92, %struct.TYPE_8__* %96)
  %98 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %99 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32* @flexcop_algo, i32** %103, align 8
  %104 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %105 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32* @flexcop_algo, i32** %109, align 8
  %110 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %111 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  store i32* @flexcop_algo, i32** %115, align 8
  %116 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %117 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %123 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32* null, i32** %127, align 8
  %128 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %129 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  %134 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %135 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %138 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 8
  %144 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %145 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %136, i32* %150, align 8
  %151 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %152 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32 %136, i32* %157, align 8
  %158 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %159 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = call i32 @i2c_add_adapter(%struct.TYPE_7__* %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %1
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %209

168:                                              ; preds = %1
  %169 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %170 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = call i32 @i2c_add_adapter(%struct.TYPE_7__* %173)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %201

178:                                              ; preds = %168
  %179 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %180 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 2
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = call i32 @i2c_add_adapter(%struct.TYPE_7__* %183)
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %194

188:                                              ; preds = %178
  %189 = load i32, i32* @FC_STATE_I2C_INIT, align 4
  %190 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %191 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  store i32 0, i32* %2, align 4
  br label %209

194:                                              ; preds = %187
  %195 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %196 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = call i32 @i2c_del_adapter(%struct.TYPE_7__* %199)
  br label %201

201:                                              ; preds = %194, %177
  %202 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %203 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %202, i32 0, i32 0
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = call i32 @i2c_del_adapter(%struct.TYPE_7__* %206)
  %208 = load i32, i32* %4, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %201, %188, %166
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
