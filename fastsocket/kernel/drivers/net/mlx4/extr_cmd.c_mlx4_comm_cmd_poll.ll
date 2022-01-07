; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_comm_cmd_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_comm_cmd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Communication channel is not idle.my toggle is %d (cmd:0x%x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLX4_COMM_CMD_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Got slave FLRed from Communication channel (ret:0x%x)\0A\00", align 1
@MLX4_DELAY_RESET_SLAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Communication channel timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i64)* @mlx4_comm_cmd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_comm_cmd_poll(%struct.mlx4_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = call i32 @comm_pending(%struct.mlx4_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %81

29:                                               ; preds = %4
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @down(i32* %32)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mlx4_comm_cmd_post(%struct.mlx4_dev* %34, i32 %35, i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @msecs_to_jiffies(i64 %38)
  %40 = load i64, i64* @jiffies, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %53, %29
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %44 = call i32 @comm_pending(%struct.mlx4_dev* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @time_before(i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = call i32 (...) @cond_resched()
  br label %42

55:                                               ; preds = %51
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %57 = call i32 @comm_pending(%struct.mlx4_dev* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* @MLX4_COMM_CMD_RESET, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @MLX4_DELAY_RESET_SLAVE, align 4
  store i32 %68, i32* %12, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %71 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %77 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @up(i32* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %75, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @comm_pending(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @mlx4_comm_cmd_post(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
