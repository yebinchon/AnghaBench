; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sis96x_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"SMBus transaction %d\0A\00", align 1
@SMB_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SMBus busy (0x%02x). Resetting...\0A\00", align 1
@SMB_HOST_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Failed (0x%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Successful\0A\00", align 1
@SMB_STS = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"SMBus Timeout! (0x%02x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed bus transaction!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Bus collision!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Failed reset at end of transaction! (0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sis96x_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis96x_transaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @SMB_CNT, align 4
  %10 = call i32 @sis96x_read(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = and i32 %10, 3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @SMB_HOST_CNT, align 4
  %17 = call i32 @sis96x_write(i32 %16, i32 32)
  %18 = load i32, i32* @SMB_CNT, align 4
  %19 = call i32 @sis96x_read(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %13
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* @SMB_CNT, align 4
  %32 = call i32 @sis96x_write(i32 %31, i32 32)
  %33 = load i32, i32* @SMB_STS, align 4
  %34 = call i32 @sis96x_read(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @SMB_STS, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 30
  %38 = call i32 @sis96x_write(i32 %35, i32 %37)
  %39 = load i32, i32* @SMB_HOST_CNT, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 7
  %42 = or i32 16, %41
  %43 = call i32 @sis96x_write(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %57, %30
  %45 = call i32 @msleep(i32 1)
  %46 = load i32, i32* @SMB_STS, align 4
  %47 = call i32 @sis96x_read(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 14
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @MAX_TIMEOUT, align 4
  %56 = icmp slt i32 %53, %55
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i1 [ false, %48 ], [ %56, %52 ]
  br i1 %58, label %44, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MAX_TIMEOUT, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @SMB_STS, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @sis96x_write(i32 %85, i32 %86)
  %88 = load i32, i32* @SMB_STS, align 4
  %89 = call i32 @sis96x_read(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis96x_adapter, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %22
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sis96x_read(i32) #1

declare dso_local i32 @sis96x_write(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
