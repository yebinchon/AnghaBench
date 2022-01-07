; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stub.c_stub_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stub.c_stub_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_chip = type { i64, i32* }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }

@MAX_CHIPS = common dso_local global i32 0, align 4
@chip_addr = common dso_local global i64* null, align 8
@stub_chips = common dso_local global %struct.stub_chip* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"smbus quick - addr 0x%02x\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"smbus byte - addr 0x%02x, wrote 0x%02x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"smbus byte - addr 0x%02x, read  0x%02x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"smbus byte data - addr 0x%02x, wrote 0x%02x at 0x%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"smbus byte data - addr 0x%02x, read  0x%02x at 0x%02x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"smbus word data - addr 0x%02x, wrote 0x%04x at 0x%02x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"smbus word data - addr 0x%02x, read  0x%04x at 0x%02x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unsupported I2C/SMBus command\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i64, i16, i8, i64, i32, %union.i2c_smbus_data*)* @stub_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stub_xfer(%struct.i2c_adapter* %0, i64 %1, i16 zeroext %2, i8 signext %3, i64 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.stub_chip*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i64 %1, i64* %10, align 8
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store %struct.stub_chip* null, %struct.stub_chip** %18, align 8
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %46, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* @MAX_CHIPS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64*, i64** @chip_addr, align 8
  %25 = load i32, i32* %17, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i1 [ false, %19 ], [ %29, %23 ]
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = load i64, i64* %10, align 8
  %34 = load i64*, i64** @chip_addr, align 8
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.stub_chip*, %struct.stub_chip** @stub_chips, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %41, i64 %43
  store %struct.stub_chip* %44, %struct.stub_chip** %18, align 8
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %17, align 4
  br label %19

49:                                               ; preds = %40, %30
  %50 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %51 = icmp ne %struct.stub_chip* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %202

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %194 [
    i32 129, label %57
    i32 131, label %62
    i32 130, label %98
    i32 128, label %153
  ]

57:                                               ; preds = %55
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %59 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %58, i32 0, i32 0
  %60 = load i64, i64* %10, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %60)
  store i32 0, i32* %16, align 4
  br label %200

62:                                               ; preds = %55
  %63 = load i8, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %71 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %73 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %75)
  br label %97

77:                                               ; preds = %62
  %78 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %79 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %82 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = getelementptr inbounds i32, i32* %80, i64 %83
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 255
  %88 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %89 = bitcast %union.i2c_smbus_data* %88 to i32*
  store i32 %87, i32* %89, align 4
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %91 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %90, i32 0, i32 0
  %92 = load i64, i64* %10, align 8
  %93 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %94 = bitcast %union.i2c_smbus_data* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %92, i32 %95)
  br label %97

97:                                               ; preds = %77, %68
  store i32 0, i32* %16, align 4
  br label %200

98:                                               ; preds = %55
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %106 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 65280
  store i32 %111, i32* %109, align 4
  %112 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %113 = bitcast %union.i2c_smbus_data* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %116 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %114
  store i32 %121, i32* %119, align 4
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %123 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %122, i32 0, i32 0
  %124 = load i64, i64* %10, align 8
  %125 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %126 = bitcast %union.i2c_smbus_data* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %13, align 8
  %129 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %123, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %124, i32 %127, i64 %128)
  br label %148

130:                                              ; preds = %98
  %131 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %132 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 255
  %138 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %139 = bitcast %union.i2c_smbus_data* %138 to i32*
  store i32 %137, i32* %139, align 4
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = load i64, i64* %10, align 8
  %143 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %144 = bitcast %union.i2c_smbus_data* %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %13, align 8
  %147 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %141, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %142, i32 %145, i64 %146)
  br label %148

148:                                              ; preds = %130, %104
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 1
  %151 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %152 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  store i32 0, i32* %16, align 4
  br label %200

153:                                              ; preds = %55
  %154 = load i8, i8* %12, align 1
  %155 = sext i8 %154 to i32
  %156 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %161 = bitcast %union.i2c_smbus_data* %160 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %164 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %162, i32* %167, align 4
  %168 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %169 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %168, i32 0, i32 0
  %170 = load i64, i64* %10, align 8
  %171 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %172 = bitcast %union.i2c_smbus_data* %171 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* %13, align 8
  %175 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %169, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %170, i32 %173, i64 %174)
  br label %193

176:                                              ; preds = %153
  %177 = load %struct.stub_chip*, %struct.stub_chip** %18, align 8
  %178 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %184 = bitcast %union.i2c_smbus_data* %183 to i32*
  store i32 %182, i32* %184, align 4
  %185 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %186 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %185, i32 0, i32 0
  %187 = load i64, i64* %10, align 8
  %188 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %189 = bitcast %union.i2c_smbus_data* %188 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %13, align 8
  %192 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %186, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %187, i32 %190, i64 %191)
  br label %193

193:                                              ; preds = %176, %159
  store i32 0, i32* %16, align 4
  br label %200

194:                                              ; preds = %55
  %195 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %196 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %195, i32 0, i32 0
  %197 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %198 = load i32, i32* @EOPNOTSUPP, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %194, %193, %148, %97, %57
  %201 = load i32, i32* %16, align 4
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %200, %52
  %203 = load i32, i32* %8, align 4
  ret i32 %203
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
