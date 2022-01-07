; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@SMB_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SMBus busy (%02x).Resetting...\0A\00", align 1
@SMBHOST_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Failed! (%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Successful!\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"saved clock 0x%02x\0A\00", align 1
@high_clock = common dso_local global i64 0, align 8
@SMB_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32*)* @sis630_transaction_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis630_transaction_start(%struct.i2c_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @SMB_CNT, align 4
  %10 = call i32 @sis630_read(i32 %9)
  %11 = and i32 %10, 3
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SMBHOST_CNT, align 4
  %19 = call i32 @sis630_write(i32 %18, i32 32)
  %20 = load i32, i32* @SMB_CNT, align 4
  %21 = call i32 @sis630_read(i32 %20)
  %22 = and i32 %21, 3
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %13
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* @SMB_CNT, align 4
  %38 = call i32 @sis630_read(i32 %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @high_clock, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @SMB_CNT, align 4
  %49 = call i32 @sis630_write(i32 %48, i32 32)
  br label %56

50:                                               ; preds = %36
  %51 = load i32, i32* @SMB_CNT, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -65
  %55 = call i32 @sis630_write(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @SMB_STS, align 4
  %58 = call i32 @sis630_read(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @SMB_STS, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 30
  %62 = call i32 @sis630_write(i32 %59, i32 %61)
  %63 = load i32, i32* @SMBHOST_CNT, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 7
  %66 = or i32 16, %65
  %67 = call i32 @sis630_write(i32 %63, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %56, %24
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @sis630_read(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sis630_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
