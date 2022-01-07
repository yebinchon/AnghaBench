; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_bfin_twi_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_bfin_twi_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.bfin_twi_iface* }
%struct.bfin_twi_iface = type { i32, i32, i32*, i32, i64, i32, i8, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%union.i2c_smbus_data = type { i32* }

@TWI_ENA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BUSBUSY = common dso_local global i32 0, align 4
@TWI_I2C_MODE_STANDARD = common dso_local global i8* null, align 8
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@MERR = common dso_local global i32 0, align 4
@MCOMP = common dso_local global i32 0, align 4
@XMTSERV = common dso_local global i32 0, align 4
@RCVSERV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_TIMEOUT = common dso_local global i64 0, align 8
@MEN = common dso_local global i32 0, align 4
@CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ = common dso_local global i32 0, align 4
@FAST = common dso_local global i32 0, align 4
@MDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfin_twi_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.bfin_twi_iface*, align 8
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %19, align 8
  store %struct.bfin_twi_iface* %20, %struct.bfin_twi_iface** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %22 = call i32 @read_CONTROL(%struct.bfin_twi_iface* %21)
  %23 = load i32, i32* @TWI_ENA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %495

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %36, %29
  %31 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %32 = call i32 @read_MASTER_STAT(%struct.bfin_twi_iface* %31)
  %33 = load i32, i32* @BUSBUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @yield()
  br label %30

38:                                               ; preds = %30
  %39 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %40 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %42 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  switch i32 %43, label %193 [
    i32 131, label %44
    i32 135, label %51
    i32 134, label %79
    i32 130, label %100
    i32 132, label %121
    i32 136, label %132
    i32 133, label %160
  ]

44:                                               ; preds = %38
  %45 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %46 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load i8*, i8** @TWI_I2C_MODE_STANDARD, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %50 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %194

51:                                               ; preds = %38
  %52 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %53 = icmp eq %union.i2c_smbus_data* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %56 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %74

57:                                               ; preds = %51
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @I2C_SMBUS_READ, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %65 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %68 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %71 = bitcast %union.i2c_smbus_data* %70 to i32*
  %72 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %73 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %69, %54
  %75 = load i8*, i8** @TWI_I2C_MODE_STANDARD, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %78 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  br label %194

79:                                               ; preds = %38
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @I2C_SMBUS_READ, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %87 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %89 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %88, i32 0, i32 3
  store i32 129, i32* %89, align 8
  br label %95

90:                                               ; preds = %79
  %91 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %92 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %94 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %93, i32 0, i32 3
  store i32 128, i32* %94, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %97 = bitcast %union.i2c_smbus_data* %96 to i32*
  %98 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %99 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  br label %194

100:                                              ; preds = %38
  %101 = load i8, i8* %12, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @I2C_SMBUS_READ, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %108 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %107, i32 0, i32 1
  store i32 2, i32* %108, align 4
  %109 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %110 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %109, i32 0, i32 3
  store i32 129, i32* %110, align 8
  br label %116

111:                                              ; preds = %100
  %112 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %113 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %112, i32 0, i32 0
  store i32 2, i32* %113, align 8
  %114 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %115 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %114, i32 0, i32 3
  store i32 128, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %118 = bitcast %union.i2c_smbus_data* %117 to i32*
  %119 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %120 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  br label %194

121:                                              ; preds = %38
  %122 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %123 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %122, i32 0, i32 0
  store i32 2, i32* %123, align 8
  %124 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %125 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %124, i32 0, i32 1
  store i32 2, i32* %125, align 4
  %126 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %127 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %126, i32 0, i32 3
  store i32 129, i32* %127, align 8
  %128 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %129 = bitcast %union.i2c_smbus_data* %128 to i32*
  %130 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %131 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  br label %194

132:                                              ; preds = %38
  %133 = load i8, i8* %12, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @I2C_SMBUS_READ, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %140 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %142 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %141, i32 0, i32 3
  store i32 129, i32* %142, align 8
  br label %154

143:                                              ; preds = %132
  %144 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %145 = bitcast %union.i2c_smbus_data* %144 to i32**
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  %150 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %151 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %153 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %152, i32 0, i32 3
  store i32 128, i32* %153, align 8
  br label %154

154:                                              ; preds = %143, %138
  %155 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %156 = bitcast %union.i2c_smbus_data* %155 to i32**
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %159 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %158, i32 0, i32 2
  store i32* %157, i32** %159, align 8
  br label %194

160:                                              ; preds = %38
  %161 = load i8, i8* %12, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8, i8* @I2C_SMBUS_READ, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %168 = bitcast %union.i2c_smbus_data* %167 to i32**
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %173 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %175 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %174, i32 0, i32 3
  store i32 129, i32* %175, align 8
  br label %186

176:                                              ; preds = %160
  %177 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %178 = bitcast %union.i2c_smbus_data* %177 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %183 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %185 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %184, i32 0, i32 3
  store i32 128, i32* %185, align 8
  br label %186

186:                                              ; preds = %176, %166
  %187 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %188 = bitcast %union.i2c_smbus_data* %187 to i32**
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %192 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  br label %194

193:                                              ; preds = %38
  store i32 -1, i32* %8, align 4
  br label %495

194:                                              ; preds = %186, %154, %121, %116, %95, %74, %44
  %195 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %196 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  %197 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %198 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %197, i32 0, i32 5
  store i32 0, i32* %198, align 8
  %199 = load i8, i8* %12, align 1
  %200 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %201 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %200, i32 0, i32 6
  store i8 %199, i8* %201, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %204 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %203, i32 0, i32 7
  store i32 %202, i32* %204, align 8
  %205 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %206 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %205, i32 0, i32 8
  store i32 10, i32* %206, align 4
  %207 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %208 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %207, i32 0, i32 9
  %209 = call i32 @init_completion(i32* %208)
  %210 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %211 = call i32 @write_FIFO_CTL(%struct.bfin_twi_iface* %210, i32 3)
  %212 = call i32 (...) @SSYNC()
  %213 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %214 = call i32 @write_FIFO_CTL(%struct.bfin_twi_iface* %213, i32 0)
  %215 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %216 = load i32, i32* @MERR, align 4
  %217 = load i32, i32* @MCOMP, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @XMTSERV, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @RCVSERV, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @write_INT_STAT(%struct.bfin_twi_iface* %215, i32 %222)
  %224 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @write_MASTER_ADDR(%struct.bfin_twi_iface* %224, i32 %225)
  %227 = call i32 (...) @SSYNC()
  %228 = load i64, i64* @jiffies, align 8
  %229 = load i64, i64* @POLL_TIMEOUT, align 8
  %230 = add nsw i64 %228, %229
  %231 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %232 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %231, i32 0, i32 10
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  store i64 %230, i64* %233, align 8
  %234 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %235 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %234, i32 0, i32 10
  %236 = call i32 @add_timer(%struct.TYPE_3__* %235)
  %237 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %238 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  switch i32 %239, label %345 [
    i32 128, label %240
    i32 129, label %299
  ]

240:                                              ; preds = %194
  %241 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %242 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %243 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @write_XMT_DATA8(%struct.bfin_twi_iface* %241, i32 %244)
  %246 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %247 = load i32, i32* @MCOMP, align 4
  %248 = load i32, i32* @MERR, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %251 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %250, i32 0, i32 6
  %252 = load i8, i8* %251, align 4
  %253 = sext i8 %252 to i32
  %254 = load i8, i8* @I2C_SMBUS_READ, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %240
  %258 = load i32, i32* @RCVSERV, align 4
  br label %261

259:                                              ; preds = %240
  %260 = load i32, i32* @XMTSERV, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  %263 = or i32 %249, %262
  %264 = call i32 @write_INT_MASK(%struct.bfin_twi_iface* %246, i32 %263)
  %265 = call i32 (...) @SSYNC()
  %266 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %267 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  %270 = icmp sle i32 %269, 255
  br i1 %270, label %271, label %279

271:                                              ; preds = %261
  %272 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %273 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %274 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 1
  %277 = shl i32 %276, 6
  %278 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %272, i32 %277)
  br label %284

279:                                              ; preds = %261
  %280 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %281 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %280, i32 16320)
  %282 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %283 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %282, i32 0, i32 5
  store i32 1, i32* %283, align 8
  br label %284

284:                                              ; preds = %279, %271
  %285 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %286 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %287 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %286)
  %288 = load i32, i32* @MEN, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ, align 4
  %291 = icmp sgt i32 %290, 100
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = load i32, i32* @FAST, align 4
  br label %295

294:                                              ; preds = %284
  br label %295

295:                                              ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ]
  %297 = or i32 %289, %296
  %298 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %285, i32 %297)
  br label %483

299:                                              ; preds = %194
  %300 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %301 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %302 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @write_XMT_DATA8(%struct.bfin_twi_iface* %300, i32 %303)
  %305 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %306 = load i32, i32* @MCOMP, align 4
  %307 = load i32, i32* @MERR, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @RCVSERV, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @XMTSERV, align 4
  %312 = or i32 %310, %311
  %313 = call i32 @write_INT_MASK(%struct.bfin_twi_iface* %305, i32 %312)
  %314 = call i32 (...) @SSYNC()
  %315 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %316 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %299
  %320 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %321 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %322 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, 1
  %325 = shl i32 %324, 6
  %326 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %320, i32 %325)
  br label %330

327:                                              ; preds = %299
  %328 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %329 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %328, i32 64)
  br label %330

330:                                              ; preds = %327, %319
  %331 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %332 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %333 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %332)
  %334 = load i32, i32* @MEN, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ, align 4
  %337 = icmp sgt i32 %336, 100
  br i1 %337, label %338, label %340

338:                                              ; preds = %330
  %339 = load i32, i32* @FAST, align 4
  br label %341

340:                                              ; preds = %330
  br label %341

341:                                              ; preds = %340, %338
  %342 = phi i32 [ %339, %338 ], [ 0, %340 ]
  %343 = or i32 %335, %342
  %344 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %331, i32 %343)
  br label %483

345:                                              ; preds = %194
  %346 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %347 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %346, i32 0)
  %348 = load i32, i32* %14, align 4
  %349 = icmp ne i32 %348, 131
  br i1 %349, label %350, label %435

350:                                              ; preds = %345
  %351 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %352 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %351, i32 0, i32 6
  %353 = load i8, i8* %352, align 4
  %354 = sext i8 %353 to i32
  %355 = load i8, i8* @I2C_SMBUS_READ, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %354, %356
  br i1 %357, label %358, label %401

358:                                              ; preds = %350
  %359 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %360 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %392

363:                                              ; preds = %358
  %364 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %365 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %366 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %365, i32 0, i32 2
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i32 1
  store i32* %368, i32** %366, align 8
  %369 = load i32, i32* %367, align 4
  %370 = call i32 @write_XMT_DATA8(%struct.bfin_twi_iface* %364, i32 %369)
  %371 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %372 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = icmp sle i32 %373, 255
  br i1 %374, label %375, label %382

375:                                              ; preds = %363
  %376 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %377 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %378 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = shl i32 %379, 6
  %381 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %376, i32 %380)
  br label %387

382:                                              ; preds = %363
  %383 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %384 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %383, i32 16320)
  %385 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %386 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %385, i32 0, i32 5
  store i32 1, i32* %386, align 8
  br label %387

387:                                              ; preds = %382, %375
  %388 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %389 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %389, align 8
  br label %400

392:                                              ; preds = %358
  %393 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %394 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %395 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @write_XMT_DATA8(%struct.bfin_twi_iface* %393, i32 %396)
  %398 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %399 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %398, i32 64)
  br label %400

400:                                              ; preds = %392, %387
  br label %434

401:                                              ; preds = %350
  %402 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %403 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = icmp sgt i32 %404, 0
  br i1 %405, label %406, label %418

406:                                              ; preds = %401
  %407 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %408 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp sle i32 %409, 255
  br i1 %410, label %411, label %418

411:                                              ; preds = %406
  %412 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %413 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %414 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = shl i32 %415, 6
  %417 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %412, i32 %416)
  br label %433

418:                                              ; preds = %406, %401
  %419 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %420 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = icmp sgt i32 %421, 255
  br i1 %422, label %423, label %428

423:                                              ; preds = %418
  %424 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %425 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %424, i32 16320)
  %426 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %427 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %426, i32 0, i32 5
  store i32 1, i32* %427, align 8
  br label %432

428:                                              ; preds = %418
  %429 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %430 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %429, i32 0, i32 10
  %431 = call i32 @del_timer(%struct.TYPE_3__* %430)
  br label %483

432:                                              ; preds = %423
  br label %433

433:                                              ; preds = %432, %411
  br label %434

434:                                              ; preds = %433, %400
  br label %435

435:                                              ; preds = %434, %345
  %436 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %437 = load i32, i32* @MCOMP, align 4
  %438 = load i32, i32* @MERR, align 4
  %439 = or i32 %437, %438
  %440 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %441 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %440, i32 0, i32 6
  %442 = load i8, i8* %441, align 4
  %443 = sext i8 %442 to i32
  %444 = load i8, i8* @I2C_SMBUS_READ, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp eq i32 %443, %445
  br i1 %446, label %447, label %449

447:                                              ; preds = %435
  %448 = load i32, i32* @RCVSERV, align 4
  br label %451

449:                                              ; preds = %435
  %450 = load i32, i32* @XMTSERV, align 4
  br label %451

451:                                              ; preds = %449, %447
  %452 = phi i32 [ %448, %447 ], [ %450, %449 ]
  %453 = or i32 %439, %452
  %454 = call i32 @write_INT_MASK(%struct.bfin_twi_iface* %436, i32 %453)
  %455 = call i32 (...) @SSYNC()
  %456 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %457 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %458 = call i32 @read_MASTER_CTL(%struct.bfin_twi_iface* %457)
  %459 = load i32, i32* @MEN, align 4
  %460 = or i32 %458, %459
  %461 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %462 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %461, i32 0, i32 6
  %463 = load i8, i8* %462, align 4
  %464 = sext i8 %463 to i32
  %465 = load i8, i8* @I2C_SMBUS_READ, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %464, %466
  br i1 %467, label %468, label %470

468:                                              ; preds = %451
  %469 = load i32, i32* @MDIR, align 4
  br label %471

470:                                              ; preds = %451
  br label %471

471:                                              ; preds = %470, %468
  %472 = phi i32 [ %469, %468 ], [ 0, %470 ]
  %473 = or i32 %460, %472
  %474 = load i32, i32* @CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ, align 4
  %475 = icmp sgt i32 %474, 100
  br i1 %475, label %476, label %478

476:                                              ; preds = %471
  %477 = load i32, i32* @FAST, align 4
  br label %479

478:                                              ; preds = %471
  br label %479

479:                                              ; preds = %478, %476
  %480 = phi i32 [ %477, %476 ], [ 0, %478 ]
  %481 = or i32 %473, %480
  %482 = call i32 @write_MASTER_CTL(%struct.bfin_twi_iface* %456, i32 %481)
  br label %483

483:                                              ; preds = %479, %428, %341, %295
  %484 = call i32 (...) @SSYNC()
  %485 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %486 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %485, i32 0, i32 9
  %487 = call i32 @wait_for_completion(i32* %486)
  %488 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %16, align 8
  %489 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %488, i32 0, i32 4
  %490 = load i64, i64* %489, align 8
  %491 = icmp sge i64 %490, 0
  %492 = zext i1 %491 to i64
  %493 = select i1 %491, i32 0, i32 -1
  store i32 %493, i32* %17, align 4
  %494 = load i32, i32* %17, align 4
  store i32 %494, i32* %8, align 4
  br label %495

495:                                              ; preds = %483, %193, %26
  %496 = load i32, i32* %8, align 4
  ret i32 %496
}

declare dso_local i32 @read_CONTROL(%struct.bfin_twi_iface*) #1

declare dso_local i32 @read_MASTER_STAT(%struct.bfin_twi_iface*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @write_FIFO_CTL(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @write_INT_STAT(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @write_MASTER_ADDR(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @write_XMT_DATA8(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @write_INT_MASK(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @write_MASTER_CTL(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @read_MASTER_CTL(%struct.bfin_twi_iface*) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
