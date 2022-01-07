; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_comm_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_comm_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd = type { i64, i32, i32, %struct.mlx4_cmd_context*, i64 }
%struct.mlx4_cmd_context = type { i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_cmd }

@.str = private unnamed_addr constant [46 x i8] c"communication channel command 0x%x timed out\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CMD_STAT_MULTI_FUNC_REQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"command 0x%x failed: fw status = 0x%x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i64)* @mlx4_comm_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_comm_cmd_wait(%struct.mlx4_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx4_cmd*, align 8
  %10 = alloca %struct.mlx4_cmd_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.mlx4_cmd* %15, %struct.mlx4_cmd** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %17 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %16, i32 0, i32 1
  %18 = call i32 @down(i32* %17)
  %19 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %28, i32 0, i32 3
  %30 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %29, align 8
  %31 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %30, i64 %33
  store %struct.mlx4_cmd_context* %34, %struct.mlx4_cmd_context** %10, align 8
  %35 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %49 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %53, i32 0, i32 3
  %55 = call i32 @init_completion(i32* %54)
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @mlx4_comm_cmd_post(%struct.mlx4_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %61 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %60, i32 0, i32 3
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @msecs_to_jiffies(i64 %62)
  %64 = call i32 @wait_for_completion_timeout(i32* %61, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %4
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mlx4_warn(%struct.mlx4_dev* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %92

72:                                               ; preds = %4
  %73 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %74 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %80 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CMD_STAT_MULTI_FUNC_REQ, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %88 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @mlx4_err(%struct.mlx4_dev* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i64 %89)
  br label %92

91:                                               ; preds = %78, %72
  br label %92

92:                                               ; preds = %91, %84, %66
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @msecs_to_jiffies(i64 %93)
  %95 = load i64, i64* @jiffies, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %108, %92
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %99 = call i64 @comm_pending(%struct.mlx4_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i64, i64* @jiffies, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @time_before(i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %101, %97
  %107 = phi i1 [ false, %97 ], [ %105, %101 ]
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = call i32 (...) @cond_resched()
  br label %97

110:                                              ; preds = %106
  %111 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %112 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %111, i32 0, i32 2
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %115 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %118 = getelementptr inbounds %struct.mlx4_cmd_context, %struct.mlx4_cmd_context* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %10, align 8
  %120 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %121 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %120, i32 0, i32 3
  %122 = load %struct.mlx4_cmd_context*, %struct.mlx4_cmd_context** %121, align 8
  %123 = ptrtoint %struct.mlx4_cmd_context* %119 to i64
  %124 = ptrtoint %struct.mlx4_cmd_context* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 32
  %127 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %128 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %129, i32 0, i32 2
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %132, i32 0, i32 1
  %134 = call i32 @up(i32* %133)
  %135 = load i32, i32* %12, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mlx4_comm_cmd_post(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i64) #1

declare dso_local i64 @comm_pending(%struct.mlx4_dev*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
