; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_execute_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_execute_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32 }

@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_CONTINUE = common dso_local global i32 0, align 4
@MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_SEND_DATA = common dso_local global i32 0, align 4
@MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_SEND_START = common dso_local global i32 0, align 4
@MV64XXX_I2C_STATE_WAITING_FOR_START_COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv64xxx_i2c_data*, %struct.i2c_msg*)* @mv64xxx_i2c_execute_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64xxx_i2c_execute_msg(%struct.mv64xxx_i2c_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i64, align 8
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %6 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %7 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %12 = call i32 @mv64xxx_i2c_prepare_for_io(%struct.mv64xxx_i2c_data* %10, %struct.i2c_msg* %11)
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_M_NOSTART, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %2
  %21 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %22 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %21, i32 0, i32 6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I2C_M_RD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* @MV64XXX_I2C_ACTION_CONTINUE, align 4
  %31 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %32 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA, align 4
  %34 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %35 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %47

36:                                               ; preds = %20
  %37 = load i32, i32* @MV64XXX_I2C_ACTION_SEND_DATA, align 4
  %38 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %39 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK, align 4
  %41 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %42 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %44 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36, %29
  br label %55

48:                                               ; preds = %2
  %49 = load i32, i32* @MV64XXX_I2C_ACTION_SEND_START, align 4
  %50 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %51 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @MV64XXX_I2C_STATE_WAITING_FOR_START_COND, align 4
  %53 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %54 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %47
  %56 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %57 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %59 = call i32 @mv64xxx_i2c_do_action(%struct.mv64xxx_i2c_data* %58)
  %60 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %61 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %60, i32 0, i32 2
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %65 = call i32 @mv64xxx_i2c_wait_for_completion(%struct.mv64xxx_i2c_data* %64)
  %66 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %67 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mv64xxx_i2c_prepare_for_io(%struct.mv64xxx_i2c_data*, %struct.i2c_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mv64xxx_i2c_do_action(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mv64xxx_i2c_wait_for_completion(%struct.mv64xxx_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
