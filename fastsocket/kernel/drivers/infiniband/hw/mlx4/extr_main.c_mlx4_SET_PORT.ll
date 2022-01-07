; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_SET_PORT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_SET_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }
%struct.mlx4_cmd_mailbox = type { i32, i64 }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i64, i32, i32)* @mlx4_SET_PORT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_SET_PORT(%struct.mlx4_ib_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %12, align 8
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_6__* %28)
  store %struct.mlx4_cmd_mailbox* %29, %struct.mlx4_cmd_mailbox** %10, align 8
  %30 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %31 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %34)
  store i32 %35, i32* %5, align 4
  br label %106

36:                                               ; preds = %4
  %37 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %38 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @memset(i64 %39, i32 0, i32 256)
  %41 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = shl i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %58 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 %56, i64* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @cpu_to_be32(i32 %61)
  %63 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %64 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %62, i32* %67, align 4
  br label %87

68:                                               ; preds = %36
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %76 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i64*
  %79 = getelementptr inbounds i64, i64* %78, i64 3
  store i64 %74, i64* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @cpu_to_be32(i32 %80)
  %82 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %83 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %68, %49
  %88 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %92 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %97 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %98 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %99 = call i32 @mlx4_cmd(%struct.TYPE_6__* %90, i32 %93, i64 %94, i64 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %104 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_6__* %102, %struct.mlx4_cmd_mailbox* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %87, %33
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.TYPE_6__*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.TYPE_6__*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
