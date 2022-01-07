; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_GEN_EQE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_GEN_EQE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_eqe = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mlx4_slave_event_eq_info* }
%struct.mlx4_slave_event_eq_info = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.res_eq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RES_EQ = common dso_local global i32 0, align 4
@RES_EQ_HW = common dso_local global i64 0, align 8
@MLX4_EVENT_TYPE_CMD = common dso_local global i64 0, align 8
@MLX4_CMD_GEN_EQE = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_GEN_EQE(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_eqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_eqe*, align 8
  %8 = alloca %struct.mlx4_priv*, align 8
  %9 = alloca %struct.mlx4_slave_event_eq_info*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.res_eq*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_eqe* %2, %struct.mlx4_eqe** %7, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %15)
  store %struct.mlx4_priv* %16, %struct.mlx4_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %167

26:                                               ; preds = %3
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %35, align 8
  %37 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %36, i64 %39
  store %struct.mlx4_slave_event_eq_info* %40, %struct.mlx4_slave_event_eq_info** %9, align 8
  %41 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %42 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %167

46:                                               ; preds = %26
  %47 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 8
  %58 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @RES_EQ, align 4
  %66 = call i32 @get_res(%struct.mlx4_dev* %62, i32 %63, i32 %64, i32 %65, %struct.res_eq** %14)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  br label %156

70:                                               ; preds = %46
  %71 = load %struct.res_eq*, %struct.res_eq** %14, align 8
  %72 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RES_EQ_HW, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %150

80:                                               ; preds = %70
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %82 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %81)
  store %struct.mlx4_cmd_mailbox* %82, %struct.mlx4_cmd_mailbox** %10, align 8
  %83 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %84 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %88 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %87)
  store i32 %88, i32* %12, align 4
  br label %150

89:                                               ; preds = %80
  %90 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %91 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MLX4_EVENT_TYPE_CMD, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %97 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %101 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cpu_to_be16(i32 %102)
  %104 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %105 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  br label %108

108:                                              ; preds = %95, %89
  %109 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %110 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %113 = bitcast %struct.mlx4_eqe* %112 to i32*
  %114 = call i32 @memcpy(i32 %111, i32* %113, i32 28)
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 255
  %117 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %9, align 8
  %118 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 255
  %121 = shl i32 %120, 16
  %122 = or i32 %116, %121
  store i32 %122, i32* %11, align 4
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %124 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %125 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @MLX4_CMD_GEN_EQE, align 4
  %129 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %130 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %131 = call i32 @mlx4_cmd(%struct.mlx4_dev* %123, i32 %126, i32 %127, i32 0, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @RES_EQ, align 4
  %136 = call i32 @put_res(%struct.mlx4_dev* %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %138 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %147 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %148 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %146, %struct.mlx4_cmd_mailbox* %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %4, align 4
  br label %167

150:                                              ; preds = %86, %77
  %151 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @RES_EQ, align 4
  %155 = call i32 @put_res(%struct.mlx4_dev* %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %69
  %157 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %158 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %156, %108, %45, %23
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_eq**) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
