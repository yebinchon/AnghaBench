; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_write_default_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_write_default_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tcm825x_reg = type { i64, i64 }

@TCM825X_REG_TERM = common dso_local global i64 0, align 8
@TCM825X_VAL_TERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"register writing failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tcm825x_reg*)* @tcm825x_write_default_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm825x_write_default_regs(%struct.i2c_client* %0, %struct.tcm825x_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tcm825x_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcm825x_reg*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.tcm825x_reg* %1, %struct.tcm825x_reg** %5, align 8
  %8 = load %struct.tcm825x_reg*, %struct.tcm825x_reg** %5, align 8
  store %struct.tcm825x_reg* %8, %struct.tcm825x_reg** %7, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.tcm825x_reg*, %struct.tcm825x_reg** %7, align 8
  %11 = getelementptr inbounds %struct.tcm825x_reg, %struct.tcm825x_reg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCM825X_REG_TERM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.tcm825x_reg*, %struct.tcm825x_reg** %7, align 8
  %17 = getelementptr inbounds %struct.tcm825x_reg, %struct.tcm825x_reg* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCM825X_VAL_TERM, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ %20, %15 ]
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.tcm825x_reg*, %struct.tcm825x_reg** %7, align 8
  %27 = getelementptr inbounds %struct.tcm825x_reg, %struct.tcm825x_reg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcm825x_reg*, %struct.tcm825x_reg** %7, align 8
  %30 = getelementptr inbounds %struct.tcm825x_reg, %struct.tcm825x_reg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @tcm825x_write_reg(%struct.i2c_client* %25, i64 %28, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %24
  %41 = load %struct.tcm825x_reg*, %struct.tcm825x_reg** %7, align 8
  %42 = getelementptr inbounds %struct.tcm825x_reg, %struct.tcm825x_reg* %41, i32 1
  store %struct.tcm825x_reg* %42, %struct.tcm825x_reg** %7, align 8
  br label %9

43:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @tcm825x_write_reg(%struct.i2c_client*, i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
