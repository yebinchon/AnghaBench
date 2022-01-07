; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_tempsense_internal_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_tempsense_internal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }
%struct.i2c_chain_desc = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@IPATH_NO_DEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@WRITE_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed tempsense startcmd\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed tempsense WR command %02X\0A\00", align 1
@READ_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed tempsense RD startcmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @ipath_tempsense_internal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_tempsense_internal_read(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_chain_desc*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %10 = call %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata* %9)
  store %struct.i2c_chain_desc* %10, %struct.i2c_chain_desc** %6, align 8
  %11 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %6, align 8
  %12 = icmp ne %struct.i2c_chain_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IPATH_NO_DEV, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %14
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %25 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WRITE_CMD, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @i2c_startcmd(%struct.ipath_devdata* %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = call i32 @ipath_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %35 = call i32 @stop_cmd(%struct.ipath_devdata* %34)
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %72

38:                                               ; preds = %23
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @wr_byte(%struct.ipath_devdata* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %43 = call i32 @stop_cmd(%struct.ipath_devdata* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ipath_dev_err(%struct.ipath_devdata* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %72

52:                                               ; preds = %38
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %54 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @READ_CMD, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @i2c_startcmd(%struct.ipath_devdata* %53, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = call i32 @ipath_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %64 = call i32 @stop_cmd(%struct.ipath_devdata* %63)
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %52
  %68 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %69 = call i32 @rd_byte(%struct.ipath_devdata* %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %71 = call i32 @stop_cmd(%struct.ipath_devdata* %70)
  br label %72

72:                                               ; preds = %67, %61, %46, %32, %20, %13
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata*) #1

declare dso_local i64 @i2c_startcmd(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dbg(i8*) #1

declare dso_local i32 @stop_cmd(%struct.ipath_devdata*) #1

declare dso_local i32 @wr_byte(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i32) #1

declare dso_local i32 @rd_byte(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
