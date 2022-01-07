; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32*, i32* }
%struct.mlx4_cmd_mailbox = type { i32, i64 }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@MLX4_CHANGE_PORT_MTU_CAP = common dso_local global i32 0, align 4
@MLX4_CHANGE_PORT_VL_CAP = common dso_local global i32 0, align 4
@MLX4_CHANGE_PORT_PKEY_TBL_SZ = common dso_local global i32 0, align 4
@MLX4_SET_PORT_MTU_CAP = common dso_local global i32 0, align 4
@MLX4_SET_PORT_VL_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %119

22:                                               ; preds = %3
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %24 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %23)
  store %struct.mlx4_cmd_mailbox* %24, %struct.mlx4_cmd_mailbox** %8, align 8
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %26 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %29)
  store i32 %30, i32* %4, align 4
  br label %119

31:                                               ; preds = %22
  %32 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %33 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memset(i64 %34, i32 0, i32 256)
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %31
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %52 = call i64 @mlx4_is_master(%struct.mlx4_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @cpu_to_be16(i32 %55)
  %57 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 20
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %50, %31
  store i32 8, i32* %10, align 4
  br label %63

63:                                               ; preds = %111, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 1
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load i32, i32* @MLX4_CHANGE_PORT_MTU_CAP, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* @MLX4_CHANGE_PORT_VL_CAP, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @MLX4_CHANGE_PORT_PKEY_TBL_SZ, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %77 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MLX4_SET_PORT_MTU_CAP, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %75, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @MLX4_SET_PORT_VL_CAP, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  %90 = call i32 @cpu_to_be32(i32 %89)
  %91 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %92 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %90, i32* %95, align 4
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %97 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %98 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %102 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %103 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %104 = call i32 @mlx4_cmd(%struct.mlx4_dev* %96, i32 %99, i64 %100, i32 0, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %66
  br label %114

110:                                              ; preds = %66
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %63

114:                                              ; preds = %109, %63
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %116 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %117 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %115, %struct.mlx4_cmd_mailbox* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %114, %28, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
