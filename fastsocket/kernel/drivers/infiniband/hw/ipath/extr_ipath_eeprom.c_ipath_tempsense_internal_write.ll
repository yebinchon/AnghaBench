; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_tempsense_internal_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_ipath_tempsense_internal_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }
%struct.i2c_chain_desc = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@IPATH_NO_DEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@WRITE_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed tempsense startcmd\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to write tempsense command %02X\0A\00", align 1
@READ_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed tempsense data wrt to %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32, i32)* @ipath_tempsense_internal_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_tempsense_internal_write(%struct.ipath_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_chain_desc*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %12 = call %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata* %11)
  store %struct.i2c_chain_desc* %12, %struct.i2c_chain_desc** %8, align 8
  %13 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %8, align 8
  %14 = icmp ne %struct.i2c_chain_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %76

16:                                               ; preds = %3
  %17 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %8, align 8
  %18 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IPATH_NO_DEV, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %76

25:                                               ; preds = %16
  %26 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %27 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %8, align 8
  %28 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WRITE_CMD, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @i2c_startcmd(%struct.ipath_devdata* %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = call i32 @ipath_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %37 = call i32 @stop_cmd(%struct.ipath_devdata* %36)
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %76

40:                                               ; preds = %25
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @wr_byte(%struct.ipath_devdata* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %48 = call i32 @stop_cmd(%struct.ipath_devdata* %47)
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ipath_dev_err(%struct.ipath_devdata* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %76

54:                                               ; preds = %40
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @wr_byte(%struct.ipath_devdata* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %59 = call i32 @stop_cmd(%struct.ipath_devdata* %58)
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %61 = load %struct.i2c_chain_desc*, %struct.i2c_chain_desc** %8, align 8
  %62 = getelementptr inbounds %struct.i2c_chain_desc, %struct.i2c_chain_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @READ_CMD, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @i2c_startcmd(%struct.ipath_devdata* %60, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ipath_dev_err(%struct.ipath_devdata* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %69, %54
  br label %76

76:                                               ; preds = %75, %46, %34, %22, %15
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.i2c_chain_desc* @ipath_i2c_type(%struct.ipath_devdata*) #1

declare dso_local i32 @i2c_startcmd(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dbg(i8*) #1

declare dso_local i32 @stop_cmd(%struct.ipath_devdata*) #1

declare dso_local i32 @wr_byte(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
