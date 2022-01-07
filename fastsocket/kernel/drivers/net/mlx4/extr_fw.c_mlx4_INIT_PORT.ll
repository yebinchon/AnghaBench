; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_INIT_PORT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_INIT_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@MLX4_CMD_INIT_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@INIT_PORT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_IN_SIZE = common dso_local global i32 0, align 4
@INIT_PORT_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_MTU_OFFSET = common dso_local global i32 0, align 4
@INIT_PORT_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@INIT_PORT_VL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT_PORT(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %2
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %18)
  store %struct.mlx4_cmd_mailbox* %19, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %24)
  store i32 %25, i32* %3, align 4
  br label %114

26:                                               ; preds = %17
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @memset(i32* %30, i32 0, i32 256)
  store i32 0, i32* %9, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = shl i32 %40, 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MLX4_PUT(i32* %56, i32 %57, i32 0)
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 128, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @MLX4_PUT(i32* %68, i32 %69, i32 4)
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @MLX4_PUT(i32* %79, i32 %80, i32 6)
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @MLX4_PUT(i32* %90, i32 %91, i32 10)
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %94 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @MLX4_CMD_INIT_PORT, align 4
  %99 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %100 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %101 = call i32 @mlx4_cmd(%struct.mlx4_dev* %93, i32 %96, i32 %97, i32 0, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %103 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %104 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %102, %struct.mlx4_cmd_mailbox* %103)
  br label %112

105:                                              ; preds = %2
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MLX4_CMD_INIT_PORT, align 4
  %109 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %110 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %111 = call i32 @mlx4_cmd(%struct.mlx4_dev* %106, i32 0, i32 %107, i32 0, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %105, %26
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX4_PUT(i32*, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
