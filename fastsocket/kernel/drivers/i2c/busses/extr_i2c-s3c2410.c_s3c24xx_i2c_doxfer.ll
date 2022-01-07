; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_doxfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_doxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32, i32, i32, i32, i32, i32, i64, %struct.i2c_msg*, i64 }
%struct.i2c_msg = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot get bus (error %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"incomplete xfer (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*, %struct.i2c_msg*, i32)* @s3c24xx_i2c_doxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_doxfer(%struct.s3c24xx_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c24xx_i2c*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %19 = call i32 @s3c24xx_i2c_set_master(%struct.s3c24xx_i2c* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %89

30:                                               ; preds = %17
  %31 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %31, i32 0, i32 4
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %35 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %35, i32 0, i32 7
  store %struct.i2c_msg* %34, %struct.i2c_msg** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @STATE_START, align 4
  %45 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %48 = call i32 @s3c24xx_i2c_enable_irq(%struct.s3c24xx_i2c* %47)
  %49 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = call i32 @s3c24xx_i2c_message_start(%struct.s3c24xx_i2c* %49, %struct.i2c_msg* %50)
  %52 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %52, i32 0, i32 4
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %56 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 %63, 5
  %65 = call i64 @wait_event_timeout(i32 %57, i32 %62, i32 %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %67 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %30
  %72 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %87

76:                                               ; preds = %30
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %5, align 8
  %82 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %76
  br label %87

87:                                               ; preds = %86, %71
  %88 = call i32 @msleep(i32 1)
  br label %89

89:                                               ; preds = %87, %22
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %14
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @s3c24xx_i2c_set_master(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @s3c24xx_i2c_enable_irq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @s3c24xx_i2c_message_start(%struct.s3c24xx_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
