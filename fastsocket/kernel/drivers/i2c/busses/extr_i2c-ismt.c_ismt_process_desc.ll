; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_process_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_process_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_desc = type { i32, i32 }
%union.i2c_smbus_data = type { i32* }
%struct.ismt_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Processing completed descriptor\0A\00", align 1
@ISMT_DESC_SCS = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@ISMT_DESC_NAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ISMT_DESC_CRC = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@ISMT_DESC_COL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ISMT_DESC_LPR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ISMT_DESC_DLTO = common dso_local global i32 0, align 4
@ISMT_DESC_CLTO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ismt_desc*, %union.i2c_smbus_data*, %struct.ismt_priv*, i32, i8)* @ismt_process_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_process_desc(%struct.ismt_desc* %0, %union.i2c_smbus_data* %1, %struct.ismt_priv* %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ismt_desc*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca %struct.ismt_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  store %struct.ismt_desc* %0, %struct.ismt_desc** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store %struct.ismt_priv* %2, %struct.ismt_priv** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %13 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %14 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %17 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ismt_priv*, %struct.ismt_priv** %9, align 8
  %22 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %26 = call i32 @__ismt_desc_dump(i32* %24, %struct.ismt_desc* %25)
  %27 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %28 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISMT_DESC_SCS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %5
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 129
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %136

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %79 [
    i32 131, label %45
    i32 130, label %45
    i32 128, label %51
    i32 129, label %51
    i32 132, label %62
  ]

45:                                               ; preds = %43, %43
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %50 = bitcast %union.i2c_smbus_data* %49 to i32*
  store i32 %48, i32* %50, align 8
  br label %79

51:                                               ; preds = %43, %43
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %54, %58
  %60 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %61 = bitcast %union.i2c_smbus_data* %60 to i32*
  store i32 %59, i32* %61, align 8
  br label %79

62:                                               ; preds = %43
  %63 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %64 = bitcast %union.i2c_smbus_data* %63 to i32**
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32*, i32** %12, align 8
  %68 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %69 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32* %66, i32* %67, i32 %70)
  %72 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %73 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %76 = bitcast %union.i2c_smbus_data* %75 to i32**
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %43, %62, %51, %45
  store i32 0, i32* %6, align 4
  br label %136

80:                                               ; preds = %5
  %81 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %82 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ISMT_DESC_NAK, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %136

91:                                               ; preds = %80
  %92 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %93 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ISMT_DESC_CRC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EBADMSG, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %136

101:                                              ; preds = %91
  %102 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %103 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ISMT_DESC_COL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %136

111:                                              ; preds = %101
  %112 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %113 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ISMT_DESC_LPR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @EPROTO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %136

121:                                              ; preds = %111
  %122 = load %struct.ismt_desc*, %struct.ismt_desc** %7, align 8
  %123 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ISMT_DESC_DLTO, align 4
  %126 = load i32, i32* @ISMT_DESC_CLTO, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @ETIMEDOUT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %136

133:                                              ; preds = %121
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %133, %130, %118, %108, %98, %88, %79, %42
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @__ismt_desc_dump(i32*, %struct.ismt_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
