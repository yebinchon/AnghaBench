; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_detect_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_detect_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.i2c_board_info = type { i32 }

@SIL164_I2C_ADDR_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sil164\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"No dual-link slave found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_client* (%struct.i2c_client*)* @sil164_detect_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_client* @sil164_detect_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_board_info, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %12 = load i32, i32* @SIL164_I2C_ADDR_SLAVE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 0
  %14 = load i32, i32* @SIL164_I2C_ADDR_SLAVE, align 4
  %15 = call i32 @I2C_BOARD_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = call i32 @i2c_transfer(%struct.i2c_adapter* %16, %struct.i2c_msg* %5, i32 1)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %21 = call i32 @sil164_dbg(%struct.i2c_adapter* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.i2c_client* null, %struct.i2c_client** %2, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %23, %struct.i2c_board_info* %6)
  store %struct.i2c_client* %24, %struct.i2c_client** %2, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  ret %struct.i2c_client* %26
}

declare dso_local i32 @I2C_BOARD_INFO(i8*, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @sil164_dbg(%struct.i2c_adapter*, i8*) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
