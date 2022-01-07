; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_check_pre.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_check_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SMBus is busy, can't use it!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Clearing status flags (%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed clearing status flags (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*)* @i801_check_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_check_pre(%struct.i801_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i801_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %3, align 8
  %5 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %6 = call i32 @SMBHSTSTS(%struct.i801_priv* %5)
  %7 = call i32 @inb_p(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %14 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* @STATUS_FLAGS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %28 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %35 = call i32 @SMBHSTSTS(%struct.i801_priv* %34)
  %36 = call i32 @outb_p(i32 %33, i32 %35)
  %37 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %38 = call i32 @SMBHSTSTS(%struct.i801_priv* %37)
  %39 = call i32 @inb_p(i32 %38)
  %40 = load i32, i32* @STATUS_FLAGS, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %46 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %20
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %44, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
