; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_slave_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_slave_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.mlx4_vhcr_cmd* }
%struct.mlx4_vhcr_cmd = type { i32, i8*, i8*, i8*, i8*, i32, i8* }

@CMD_POLL_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"response expected whileoutput mailbox is NULL for command 0x%x\0A\00", align 1
@CMD_STAT_BAD_PARAM = common dso_local global i8* null, align 8
@MLX4_COMM_CMD_VHCR_POST = common dso_local global i32 0, align 4
@MLX4_COMM_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"failed execution of VHCR_POST commandopcode 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32*, i32, i32, i64, i32, i64)* @mlx4_slave_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_slave_cmd(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i64 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.mlx4_priv*, align 8
  %18 = alloca %struct.mlx4_vhcr_cmd*, align 8
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %21 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %20)
  store %struct.mlx4_priv* %21, %struct.mlx4_priv** %17, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %17, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %24, align 8
  store %struct.mlx4_vhcr_cmd* %25, %struct.mlx4_vhcr_cmd** %18, align 8
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %17, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @cpu_to_be64(i32 %30)
  %32 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %33 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be64(i32 %38)
  br label %41

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ null, %40 ]
  %43 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %44 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %48 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %14, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 12
  %52 = load i32, i32* %15, align 4
  %53 = and i32 %52, 4095
  %54 = or i32 %51, %53
  %55 = call i8* @cpu_to_be16(i32 %54)
  %56 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %57 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @CMD_POLL_TOKEN, align 4
  %59 = call i8* @cpu_to_be16(i32 %58)
  %60 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %61 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %63 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %62, i32 0, i32 1
  store i8* null, i8** %63, align 8
  %64 = load %struct.mlx4_priv*, %struct.mlx4_priv** %17, align 8
  %65 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = shl i32 %71, 6
  %73 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %74 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %76 = call i64 @mlx4_is_master(%struct.mlx4_dev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %41
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %85 = call i32 @mlx4_master_process_vhcr(%struct.mlx4_dev* %79, i32 %83, %struct.mlx4_vhcr_cmd* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %96 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @be64_to_cpu(i8* %97)
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  br label %107

100:                                              ; preds = %91
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @mlx4_err(%struct.mlx4_dev* %101, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i8*, i8** @CMD_STAT_BAD_PARAM, align 8
  %105 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %106 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %100, %94
  br label %108

108:                                              ; preds = %107, %88
  %109 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %110 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @mlx4_status_to_errno(i8* %111)
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %108, %78
  br label %153

114:                                              ; preds = %41
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %116 = load i32, i32* @MLX4_COMM_CMD_VHCR_POST, align 4
  %117 = load i64, i64* @MLX4_COMM_TIME, align 8
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %117, %118
  %120 = call i32 @mlx4_comm_cmd(%struct.mlx4_dev* %115, i32 %116, i32 0, i64 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %148, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load i32*, i32** %11, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %131 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @be64_to_cpu(i8* %132)
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  br label %142

135:                                              ; preds = %126
  %136 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @mlx4_err(%struct.mlx4_dev* %136, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** @CMD_STAT_BAD_PARAM, align 8
  %140 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %141 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %135, %129
  br label %143

143:                                              ; preds = %142, %123
  %144 = load %struct.mlx4_vhcr_cmd*, %struct.mlx4_vhcr_cmd** %18, align 8
  %145 = getelementptr inbounds %struct.mlx4_vhcr_cmd, %struct.mlx4_vhcr_cmd* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @mlx4_status_to_errno(i8* %146)
  store i32 %147, i32* %19, align 4
  br label %152

148:                                              ; preds = %114
  %149 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @mlx4_err(%struct.mlx4_dev* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %113
  %154 = load %struct.mlx4_priv*, %struct.mlx4_priv** %17, align 8
  %155 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %19, align 4
  ret i32 %158
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_process_vhcr(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr_cmd*) #1

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_status_to_errno(i8*) #1

declare dso_local i32 @mlx4_comm_cmd(%struct.mlx4_dev*, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
