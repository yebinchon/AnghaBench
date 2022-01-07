; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_CLOSE_PORT_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_CLOSE_PORT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@MLX4_PORT_TYPE_IB = common dso_local global i64 0, align 8
@MLX4_CMD_CLOSE_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_CLOSE_PORT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %18 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %17)
  store %struct.mlx4_priv* %18, %struct.mlx4_priv** %14, align 8
  %19 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %20 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %15, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %176

37:                                               ; preds = %6
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MLX4_PORT_TYPE_IB, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %37
  %49 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %50 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @MLX4_CMD_CLOSE_PORT, align 4
  %63 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %64 = call i32 @mlx4_cmd(%struct.mlx4_dev* %60, i32 0, i32 %61, i32 0, i32 %62, i32 1000, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %7, align 4
  br label %176

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %75 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %73
  store i32 %84, i32* %82, align 4
  br label %165

85:                                               ; preds = %37
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %88 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %87)
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %149

90:                                               ; preds = %85
  %91 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %92 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %148, label %102

102:                                              ; preds = %90
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %102
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @MLX4_CMD_CLOSE_PORT, align 4
  %118 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %119 = call i32 @mlx4_cmd(%struct.mlx4_dev* %115, i32 0, i32 %116, i32 0, i32 %117, i32 1000, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %7, align 4
  br label %176

124:                                              ; preds = %114
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 1, %125
  %127 = xor i32 %126, -1
  %128 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %129 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %127
  store i32 %138, i32* %136, align 4
  %139 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %140 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %124, %102, %90
  br label %164

149:                                              ; preds = %85
  %150 = load i32, i32* %15, align 4
  %151 = shl i32 1, %150
  %152 = xor i32 %151, -1
  %153 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %154 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %152
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %149, %148
  br label %165

165:                                              ; preds = %164, %70
  %166 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %167 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %165, %122, %67, %36
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
