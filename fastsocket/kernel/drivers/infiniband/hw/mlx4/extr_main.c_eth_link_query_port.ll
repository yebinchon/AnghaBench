; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_eth_link_query_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_eth_link_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__*, %struct.mlx4_ib_iboe }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.mlx4_ib_iboe = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.mlx4_cmd_mailbox = type { i64, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_SPEED_QDR = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i8* null, align 8
@IB_MTU_256 = common dso_local global i8* null, align 8
@IB_PORT_ACTIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*, i32)* @eth_link_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_link_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_port_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.mlx4_ib_iboe*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %10, align 8
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 1
  store %struct.mlx4_ib_iboe* %19, %struct.mlx4_ib_iboe** %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_6__* %22)
  store %struct.mlx4_cmd_mailbox* %23, %struct.mlx4_cmd_mailbox** %14, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %25 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %29 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %28)
  store i32 %29, i32* %5, align 4
  br label %171

30:                                               ; preds = %4
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %35 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %39 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %40 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %41 = call i32 @mlx4_cmd_box(%struct.TYPE_6__* %33, i32 0, i32 %36, i32 %37, i32 0, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %164

45:                                               ; preds = %30
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %47 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @IB_WIDTH_4X, align 4
  br label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @IB_WIDTH_1X, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %60 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @IB_SPEED_QDR, align 4
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %65 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %66 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %78 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %86 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %88 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* @IB_MTU_4096, align 4
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 1
  store i32 2, i32* %93, align 4
  %94 = load i8*, i8** @IB_PORT_DOWN, align 8
  %95 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %96 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %98 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @state_to_phys_state(i8* %99)
  %101 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %102 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @IB_MTU_256, align 8
  %104 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %105 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  %106 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %11, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %106, i32 0, i32 0
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %11, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %109, i32 0, i32 1
  %111 = load %struct.net_device**, %struct.net_device*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.net_device*, %struct.net_device** %111, i64 %114
  %116 = load %struct.net_device*, %struct.net_device** %115, align 8
  store %struct.net_device* %116, %struct.net_device** %12, align 8
  %117 = load %struct.net_device*, %struct.net_device** %12, align 8
  %118 = icmp ne %struct.net_device* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %57
  br label %160

120:                                              ; preds = %57
  %121 = load %struct.net_device*, %struct.net_device** %12, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @iboe_get_mtu(i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %129 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i8* @min(i32 %130, i32 %131)
  br label %135

133:                                              ; preds = %120
  %134 = load i8*, i8** @IB_MTU_256, align 8
  br label %135

135:                                              ; preds = %133, %127
  %136 = phi i8* [ %132, %127 ], [ %134, %133 ]
  %137 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %138 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %12, align 8
  %140 = call i64 @netif_running(%struct.net_device* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.net_device*, %struct.net_device** %12, align 8
  %144 = call i64 @netif_carrier_ok(%struct.net_device* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i8*, i8** @IB_PORT_ACTIVE, align 8
  br label %150

148:                                              ; preds = %142, %135
  %149 = load i8*, i8** @IB_PORT_DOWN, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i8* [ %147, %146 ], [ %149, %148 ]
  %152 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %153 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %155 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @state_to_phys_state(i8* %156)
  %158 = load %struct.ib_port_attr*, %struct.ib_port_attr** %8, align 8
  %159 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %150, %119
  %161 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %11, align 8
  %162 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock(i32* %162)
  br label %164

164:                                              ; preds = %160, %44
  %165 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %166 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %169 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_6__* %167, %struct.mlx4_cmd_mailbox* %168)
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %164, %27
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @state_to_phys_state(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.TYPE_6__*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
