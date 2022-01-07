; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@NUM_OF_RESET_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Sending reset\0A\00", align 1
@MLX4_COMM_CMD_RESET = common dso_local global i32 0, align 4
@MLX4_COMM_TIME = common dso_local global i32 0, align 4
@MLX4_DELAY_RESET_SLAVE = common dso_local global i32 0, align 4
@SLEEP_TIME_IN_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"slave is currently in themiddle of FLR. retrying...(try num:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"slave driver version is not supported by the master\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Sending vhcr0\0A\00", align 1
@MLX4_COMM_CMD_VHCR0 = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_VHCR1 = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_VHCR2 = common dso_local global i32 0, align 4
@MLX4_COMM_CMD_VHCR_EN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_init_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_slave(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %11 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %10)
  store %struct.mlx4_priv* %11, %struct.mlx4_priv** %4, align 8
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @NUM_OF_RESET_RETRIES, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %25 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %27 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %28 = load i32, i32* @MLX4_COMM_TIME, align 4
  %29 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %26, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %1
  %33 = load i32, i32* @MLX4_DELAY_RESET_SLAVE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load i32, i32* @SLEEP_TIME_IN_RESET, align 4
  %38 = call i32 @msleep(i32 %37)
  br label %39

39:                                               ; preds = %47, %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %60

47:                                               ; preds = %45
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %49 = load i32, i32* @NUM_OF_RESET_RETRIES, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  %52 = add nsw i32 %51, 1
  %53 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %48, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %55 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %56 = load i32, i32* @MLX4_COMM_TIME, align 4
  %57 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %54, i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %39

60:                                               ; preds = %45
  br label %62

61:                                               ; preds = %32
  br label %122

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %65 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @readl(i32* %68)
  %70 = call i32 @swab32(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = call i32 (...) @mlx4_comm_get_version()
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @MLX4_COMM_GET_IF_REV(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @MLX4_COMM_GET_IF_REV(i32 %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %79 = call i32 @mlx4_err(%struct.mlx4_dev* %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %122

80:                                               ; preds = %63
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %82 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %84 = load i32, i32* @MLX4_COMM_CMD_VHCR0, align 4
  %85 = load i32, i32* %5, align 4
  %86 = ashr i32 %85, 48
  %87 = load i32, i32* @MLX4_COMM_TIME, align 4
  %88 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %83, i32 %84, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %122

91:                                               ; preds = %80
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %93 = load i32, i32* @MLX4_COMM_CMD_VHCR1, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 32
  %96 = load i32, i32* @MLX4_COMM_TIME, align 4
  %97 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %92, i32 %93, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %122

100:                                              ; preds = %91
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %102 = load i32, i32* @MLX4_COMM_CMD_VHCR2, align 4
  %103 = load i32, i32* %5, align 4
  %104 = ashr i32 %103, 16
  %105 = load i32, i32* @MLX4_COMM_TIME, align 4
  %106 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %101, i32 %102, i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %122

109:                                              ; preds = %100
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %111 = load i32, i32* @MLX4_COMM_CMD_VHCR_EN, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @MLX4_COMM_TIME, align 4
  %114 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %110, i32 %111, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %122

117:                                              ; preds = %109
  %118 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %119 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  store i32 0, i32* %2, align 4
  br label %132

122:                                              ; preds = %116, %108, %99, %90, %77, %61
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %124 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %125 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %123, i32 %124, i32 0, i32 0)
  %126 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %127 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %122, %117
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_comm_cmd(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @mlx4_comm_get_version(...) #1

declare dso_local i64 @MLX4_COMM_GET_IF_REV(i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
