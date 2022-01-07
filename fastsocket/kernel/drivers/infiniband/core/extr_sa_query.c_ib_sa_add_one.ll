; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_ib_sa_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_ib_sa_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.ib_sa_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }

@RDMA_TRANSPORT_IB = common dso_local global i64 0, align 8
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i32 0, align 4
@send_handler = common dso_local global i32 0, align 4
@recv_handler = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@ib_sa_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_sa_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_sa_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_sa_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @rdma_node_get_transport(i64 %9)
  %11 = load i64, i64* @RDMA_TRANSPORT_IB, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %193

14:                                               ; preds = %1
  %15 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %25

21:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 24, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ib_sa_device* @kzalloc(i32 %33, i32 %34)
  store %struct.ib_sa_device* %35, %struct.ib_sa_device** %3, align 8
  %36 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %37 = icmp ne %struct.ib_sa_device* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %193

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %42 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %45 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %122, %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %48, %49
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %125

52:                                               ; preds = %46
  %53 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %54 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %61, i32 %63)
  %65 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %122

68:                                               ; preds = %52
  %69 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %70 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %80 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @IB_QPT_GSI, align 4
  %91 = load i32, i32* @send_handler, align 4
  %92 = load i32, i32* @recv_handler, align 4
  %93 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %94 = call i32 @ib_register_mad_agent(%struct.ib_device* %86, i32 %89, i32 %90, i32* null, i32 0, i32 %91, i32 %92, %struct.ib_sa_device* %93)
  %95 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %96 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  %102 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %103 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @IS_ERR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %68
  br label %167

113:                                              ; preds = %68
  %114 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %115 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = call i32 @INIT_WORK(i32* %120, i32 (i32*)* @update_sm_ah)
  br label %122

122:                                              ; preds = %113, %67
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %46

125:                                              ; preds = %46
  %126 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %127 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %128 = call i32 @ib_set_client_data(%struct.ib_device* %126, i32* @sa_client, %struct.ib_sa_device* %127)
  %129 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %130 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %129, i32 0, i32 3
  %131 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %132 = load i32, i32* @ib_sa_event, align 4
  %133 = call i32 @INIT_IB_EVENT_HANDLER(i32* %130, %struct.ib_device* %131, i32 %132)
  %134 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %135 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %134, i32 0, i32 3
  %136 = call i64 @ib_register_event_handler(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %167

139:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %4, align 4
  %144 = sub nsw i32 %142, %143
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %140
  %147 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  %150 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %147, i32 %149)
  %151 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %155 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = call i32 @update_sm_ah(i32* %160)
  br label %162

162:                                              ; preds = %153, %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %140

166:                                              ; preds = %140
  br label %193

167:                                              ; preds = %138, %112
  br label %168

168:                                              ; preds = %189, %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %6, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %168
  %173 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  %176 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %173, i32 %175)
  %177 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %172
  %180 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %181 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ib_unregister_mad_agent(i32 %187)
  br label %189

189:                                              ; preds = %179, %172
  br label %168

190:                                              ; preds = %168
  %191 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %192 = call i32 @kfree(%struct.ib_sa_device* %191)
  br label %193

193:                                              ; preds = %190, %166, %38, %13
  ret void
}

declare dso_local i64 @rdma_node_get_transport(i64) #1

declare dso_local %struct.ib_sa_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_mad_agent(%struct.ib_device*, i32, i32, i32*, i32, i32, i32, %struct.ib_sa_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @update_sm_ah(i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_sa_device*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i64 @ib_register_event_handler(i32*) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kfree(%struct.ib_sa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
