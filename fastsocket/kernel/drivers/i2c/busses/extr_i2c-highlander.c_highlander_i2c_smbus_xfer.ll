; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.highlander_i2c_dev = type { i32*, i32, i64, i32, i32 }

@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [49 x i8] c"addr %04x, command %02x, read_write %d, size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported command %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMMR = common dso_local global i64 0, align 8
@SMMR_MODE0 = common dso_local global i32 0, align 4
@SMMR_MODE1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported xfer size %d\0A\00", align 1
@SMSMADR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @highlander_i2c_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.highlander_i2c_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %20 = call %struct.highlander_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %19)
  store %struct.highlander_i2c_dev* %20, %struct.highlander_i2c_dev** %16, align 8
  %21 = load i8, i8* %12, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @I2C_SMBUS_READ, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %22, %24
  store i32 %25, i32* %17, align 4
  %26 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %27 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %26, i32 0, i32 4
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %30 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i8, i8* %12, align 1
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i8 signext %34, i32 %35)
  %37 = load i32, i32* %14, align 4
  switch i32 %37, label %59 [
    i32 129, label %38
    i32 128, label %45
  ]

38:                                               ; preds = %7
  %39 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %40 = bitcast %union.i2c_smbus_data* %39 to i32*
  %41 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %42 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %44 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  br label %67

45:                                               ; preds = %7
  %46 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %47 = bitcast %union.i2c_smbus_data* %46 to i32**
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %51 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %53 = bitcast %union.i2c_smbus_data* %52 to i32**
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %58 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %67

59:                                               ; preds = %7
  %60 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %61 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %142

67:                                               ; preds = %45, %38
  %68 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %69 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SMMR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @ioread16(i64 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* @SMMR_MODE0, align 4
  %75 = load i32, i32* @SMMR_MODE1, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %18, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %18, align 4
  %80 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %81 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %98 [
    i32 1, label %83
    i32 8, label %84
    i32 16, label %88
    i32 32, label %92
  ]

83:                                               ; preds = %67
  br label %108

84:                                               ; preds = %67
  %85 = load i32, i32* @SMMR_MODE0, align 4
  %86 = load i32, i32* %18, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %18, align 4
  br label %108

88:                                               ; preds = %67
  %89 = load i32, i32* @SMMR_MODE1, align 4
  %90 = load i32, i32* %18, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %18, align 4
  br label %108

92:                                               ; preds = %67
  %93 = load i32, i32* @SMMR_MODE0, align 4
  %94 = load i32, i32* @SMMR_MODE1, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %18, align 4
  br label %108

98:                                               ; preds = %67
  %99 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %100 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %103 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %142

108:                                              ; preds = %92, %88, %84, %83
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %111 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SMMR, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @iowrite16(i32 %109, i64 %114)
  %116 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %117 = call i32 @highlander_i2c_done(%struct.highlander_i2c_dev* %116)
  %118 = load i32, i32* %10, align 4
  %119 = shl i32 %118, 1
  %120 = load i32, i32* %17, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %123 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SMSMADR, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @iowrite16(i32 %121, i64 %126)
  %128 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %131 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @highlander_i2c_command(%struct.highlander_i2c_dev* %128, i32 %129, i32 %132)
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %108
  %137 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %138 = call i32 @highlander_i2c_read(%struct.highlander_i2c_dev* %137)
  store i32 %138, i32* %8, align 4
  br label %142

139:                                              ; preds = %108
  %140 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %16, align 8
  %141 = call i32 @highlander_i2c_write(%struct.highlander_i2c_dev* %140)
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139, %136, %98, %59
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local %struct.highlander_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @highlander_i2c_done(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_command(%struct.highlander_i2c_dev*, i32, i32) #1

declare dso_local i32 @highlander_i2c_read(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_write(%struct.highlander_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
