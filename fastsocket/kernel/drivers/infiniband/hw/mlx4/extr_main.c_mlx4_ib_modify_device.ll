; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_modify_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_modify = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IB_DEVICE_MODIFY_NODE_DESC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_CMD_SET_NODE = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)* @mlx4_ib_modify_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device_modify*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %90

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %90

24:                                               ; preds = %18
  %25 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %26 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @mlx4_is_slave(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %90

34:                                               ; preds = %24
  %35 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %36 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %44 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %42, i32 %45, i32 64)
  %47 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %48 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %53 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %55)
  store %struct.mlx4_cmd_mailbox* %56, %struct.mlx4_cmd_mailbox** %8, align 8
  %57 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %58 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %90

61:                                               ; preds = %34
  %62 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %63 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(i32 %64, i32 0, i32 256)
  %66 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %70 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32 %68, i32 %71, i32 64)
  %73 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %74 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %78 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MLX4_CMD_SET_NODE, align 4
  %81 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %82 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %83 = call i32 @mlx4_cmd(i32 %76, i32 %79, i32 1, i32 0, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %85 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %89 = call i32 @mlx4_free_cmd_mailbox(i32 %87, %struct.mlx4_cmd_mailbox* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %61, %60, %31, %23, %15
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @mlx4_is_slave(i32) #1

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
