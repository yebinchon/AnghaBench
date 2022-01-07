; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_i2c.c_i2c_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@ETRAXI2C_IOCTYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"i2cw %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"i2cr %d %d \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @i2c_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @_IOC_TYPE(i32 %11)
  %13 = load i64, i64* @ETRAXI2C_IOCTYPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @_IOC_NR(i32 %19)
  switch i32 %20, label %56 [
    i32 128, label %21
    i32 129, label %38
  ]

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @I2C_ARGSLAVE(i64 %22)
  %24 = trunc i32 %23 to i8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @I2C_ARGREG(i64 %25)
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @I2C_ARGVALUE(i64 %27)
  %29 = call i32 (i8*, i8, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 zeroext %24, i32 %26, i32 %28)
  %30 = call i32 @D(i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @I2C_ARGSLAVE(i64 %31)
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @I2C_ARGREG(i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @I2C_ARGVALUE(i64 %35)
  %37 = call i32 @i2c_writereg(i32 %32, i32 %34, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %18
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @I2C_ARGSLAVE(i64 %39)
  %41 = trunc i32 %40 to i8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @I2C_ARGREG(i64 %42)
  %44 = call i32 (i8*, i8, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %41, i32 %43)
  %45 = call i32 @D(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @I2C_ARGSLAVE(i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @I2C_ARGREG(i64 %48)
  %50 = call zeroext i8 @i2c_readreg(i32 %47, i32 %49)
  store i8 %50, i8* %10, align 1
  %51 = load i8, i8* %10, align 1
  %52 = call i32 (i8*, i8, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %51)
  %53 = call i32 @D(i32 %52)
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %59

56:                                               ; preds = %18
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %38, %21, %15
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @_IOC_TYPE(i32) #1

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printk(i8*, i8 zeroext, ...) #1

declare dso_local i32 @I2C_ARGSLAVE(i64) #1

declare dso_local i32 @I2C_ARGREG(i64) #1

declare dso_local i32 @I2C_ARGVALUE(i64) #1

declare dso_local i32 @i2c_writereg(i32, i32, i32) #1

declare dso_local zeroext i8 @i2c_readreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
