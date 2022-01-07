; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_eeprom_internal_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_eeprom_internal_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }
%struct.i2c_chain_desc = type { i32 }

@IPATH_NO_DEV = common dso_local global i32 0, align 4
@WRITE_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to start cmd offset %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed EEPROM startcmd\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to write EEPROM address\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"no ack after byte %u/%u (%u total remain)\0A\00", align 1
@READ_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Did not get successful read to complete write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32, i8*, i32)* @ipath_eeprom_internal_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_eeprom_internal_write(%struct.ipath_devdata* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i2c_chain_desc*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  store i32 1, i32* %13, align 4
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %18 = call %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata* %17)
  store %struct.i2c_chain_desc* %18, %struct.i2c_chain_desc** %14, align 8
  %19 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %14, align 8
  %20 = icmp ne %struct.i2c_chain_desc* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %128

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %119, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %124

26:                                               ; preds = %23
  %27 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %14, align 8
  %28 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IPATH_NO_DEV, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* @WRITE_CMD, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @i2c_startcmd(%struct.ipath_devdata* %33, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %125

43:                                               ; preds = %32
  br label %65

44:                                               ; preds = %26
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %46 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %14, align 8
  %47 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WRITE_CMD, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @i2c_startcmd(%struct.ipath_devdata* %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %125

55:                                               ; preds = %44
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @wr_byte(%struct.ipath_devdata* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %63 = call i32 @ipath_dev_err(%struct.ipath_devdata* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %125

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @min(i32 %66, i32 4)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %95, %65
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %10, align 8
  %82 = load i32, i32* %80, align 4
  %83 = call i32 @wr_byte(%struct.ipath_devdata* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87, i32 %92)
  br label %125

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %74

98:                                               ; preds = %74
  %99 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %100 = call i32 @stop_cmd(%struct.ipath_devdata* %99)
  store i32 100, i32* %11, align 4
  br label %101

101:                                              ; preds = %118, %98
  %102 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %103 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %14, align 8
  %104 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @READ_CMD, align 4
  %107 = or i32 %105, %106
  %108 = call i64 @i2c_startcmd(%struct.ipath_devdata* %102, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %112 = call i32 @stop_cmd(%struct.ipath_devdata* %111)
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %125

118:                                              ; preds = %110
  br label %101

119:                                              ; preds = %101
  %120 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %121 = call i32 @rd_byte(%struct.ipath_devdata* %120)
  %122 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %123 = call i32 @stop_cmd(%struct.ipath_devdata* %122)
  br label %23

124:                                              ; preds = %23
  store i32 0, i32* %13, align 4
  br label %128

125:                                              ; preds = %116, %85, %61, %53, %40
  %126 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %127 = call i32 @stop_cmd(%struct.ipath_devdata* %126)
  store i32 1, i32* %13, align 4
  br label %128

128:                                              ; preds = %125, %124, %21
  %129 = load i32, i32* %13, align 4
  ret i32 %129
}

declare dso_local %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata*) #1

declare dso_local i64 @i2c_startcmd(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dbg(i8*, ...) #1

declare dso_local i32 @wr_byte(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @stop_cmd(%struct.ipath_devdata*) #1

declare dso_local i32 @rd_byte(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
