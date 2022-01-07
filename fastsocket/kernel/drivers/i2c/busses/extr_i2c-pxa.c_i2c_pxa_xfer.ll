; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, %struct.pxa_i2c* }
%struct.pxa_i2c = type { i32 }
%struct.i2c_msg = type { i32 }

@I2C_RETRY = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Retrying transmission\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"exhausted retries\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_pxa_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pxa_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 2
  %12 = load %struct.pxa_i2c*, %struct.pxa_i2c** %11, align 8
  store %struct.pxa_i2c* %12, %struct.pxa_i2c** %7, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @i2c_pxa_do_xfer(%struct.pxa_i2c* %20, %struct.i2c_msg* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @I2C_RETRY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %45

28:                                               ; preds = %19
  %29 = load i64, i64* @i2c_debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 1
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %28
  %36 = call i32 @udelay(i32 100)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %42 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EREMOTEIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @i2c_pxa_set_slave(%struct.pxa_i2c* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_pxa_do_xfer(%struct.pxa_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

declare dso_local i32 @i2c_pxa_set_slave(%struct.pxa_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
