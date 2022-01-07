; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_eeprom_internal_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_eeprom_internal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }
%struct.i2c_chain_desc = type { i64 }

@IPATH_NO_DEV = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Start command only address\0A\00", align 1
@READ_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Start command uses devaddr\0A\00", align 1
@WRITE_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed EEPROM startcmd\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to write EEPROM address\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed startcmd for dev %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32, i8*, i32)* @ipath_eeprom_internal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_eeprom_internal_read(%struct.ipath_devdata* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_chain_desc*, align 8
  %11 = alloca i32*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  store i32 1, i32* %9, align 4
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %15 = call %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata* %14)
  store %struct.i2c_chain_desc* %15, %struct.i2c_chain_desc** %10, align 8
  %16 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %10, align 8
  %17 = icmp ne %struct.i2c_chain_desc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %102

19:                                               ; preds = %4
  %20 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %10, align 8
  %21 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPATH_NO_DEV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32, i32* @VERBOSE, align 4
  %27 = call i32 @ipath_cdbg(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 1
  %30 = load i32, i32* @READ_CMD, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @i2c_startcmd(%struct.ipath_devdata* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %73

35:                                               ; preds = %19
  %36 = load i32, i32* @VERBOSE, align 4
  %37 = call i32 @ipath_cdbg(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %39 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %10, align 8
  %40 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @WRITE_CMD, align 4
  %43 = sext i32 %42 to i64
  %44 = or i64 %41, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @i2c_startcmd(%struct.ipath_devdata* %38, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %51 = call i32 @stop_cmd(%struct.ipath_devdata* %50)
  store i32 1, i32* %9, align 4
  br label %102

52:                                               ; preds = %35
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @wr_byte(%struct.ipath_devdata* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %57 = call i32 @stop_cmd(%struct.ipath_devdata* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %62 = call i32 @ipath_dev_err(%struct.ipath_devdata* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %102

63:                                               ; preds = %52
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %65 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %10, align 8
  %66 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @READ_CMD, align 4
  %69 = sext i32 %68 to i64
  %70 = or i64 %67, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @i2c_startcmd(%struct.ipath_devdata* %64, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %63, %25
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %10, align 8
  %78 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  %81 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %82 = call i32 @stop_cmd(%struct.ipath_devdata* %81)
  store i32 1, i32* %9, align 4
  br label %102

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %90 = call i32 @rd_byte(%struct.ipath_devdata* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %97 = call i32 @send_ack(%struct.ipath_devdata* %96)
  br label %98

98:                                               ; preds = %95, %88
  br label %84

99:                                               ; preds = %84
  %100 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %101 = call i32 @stop_cmd(%struct.ipath_devdata* %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %76, %60, %48, %18
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*) #1

declare dso_local i32 @i2c_startcmd(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dbg(i8*, ...) #1

declare dso_local i32 @stop_cmd(%struct.ipath_devdata*) #1

declare dso_local i32 @wr_byte(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

declare dso_local i32 @rd_byte(%struct.ipath_devdata*) #1

declare dso_local i32 @send_ack(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
