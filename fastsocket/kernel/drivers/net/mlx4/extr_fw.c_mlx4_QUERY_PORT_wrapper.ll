; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_PORT_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_fw.c_mlx4_QUERY_PORT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32*, i32* }
%struct.mlx4_vhcr = type { i64 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_PORT_MAC_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_SUPPORTED_TYPE_OFFSET = common dso_local global i32 0, align 4
@MLX4_VF_PORT_NO_LINK_SENSE_MASK = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_PORT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca %struct.mlx4_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %19 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %18)
  store %struct.mlx4_priv* %19, %struct.mlx4_priv** %13, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %25 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %28 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %29 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %30 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %20, i32 0, i32 %23, i64 %26, i32 0, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %156, label %33

33:                                               ; preds = %6
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %156

40:                                               ; preds = %33
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %13, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %52 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %40
  %60 = load %struct.mlx4_priv*, %struct.mlx4_priv** %13, align 8
  %61 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %71 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  br label %104

77:                                               ; preds = %40
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %80 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @QUERY_PORT_MAC_OFFSET, align 4
  %83 = call i32 @MLX4_GET(i32 %78, i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.mlx4_priv*, %struct.mlx4_priv** %13, align 8
  %90 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %100 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 %88, i32* %103, align 4
  br label %104

104:                                              ; preds = %77, %59
  %105 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %106 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @QUERY_PORT_MAC_OFFSET, align 4
  %110 = call i32 @MLX4_PUT(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %113 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @QUERY_PORT_SUPPORTED_TYPE_OFFSET, align 4
  %116 = call i32 @MLX4_GET(i32 %111, i32 %114, i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = and i32 %117, 224
  store i32 %118, i32* %15, align 4
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %120 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %124 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 3
  %129 = load i32, i32* %15, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %15, align 4
  %131 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %132 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @QUERY_PORT_SUPPORTED_TYPE_OFFSET, align 4
  %136 = call i32 @MLX4_PUT(i32 %133, i32 %134, i32 %135)
  store i32 1, i32* %16, align 4
  %137 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %138 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @MLX4_PUT(i32 %139, i32 %140, i32 14)
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %143 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %147 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %16, align 4
  %151 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %152 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @MLX4_PUT(i32 %153, i32 %154, i32 12)
  br label %156

156:                                              ; preds = %104, %33, %6
  %157 = load i32, i32* %17, align 4
  ret i32 %157
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32, i32) #1

declare dso_local i32 @MLX4_PUT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
