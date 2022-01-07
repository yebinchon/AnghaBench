; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_device = type { i32, i32, i32, i32 }
%struct.cm_device = type { i32, %struct.cm_port**, i32, %struct.ib_device* }
%struct.cm_port = type { i32, i32, %struct.cm_device* }
%struct.ib_mad_reg_req = type { i32, i32, i32 }
%struct.ib_port_modify = type { i64, i64 }

@IB_CM_CLASS_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_CM = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i64 0, align 8
@RDMA_TRANSPORT_IB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@cm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IB_MGMT_METHOD_SEND = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@cm_send_handler = common dso_local global i32 0, align 4
@cm_recv_handler = common dso_local global i32 0, align 4
@cm_client = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @cm_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.cm_device*, align 8
  %4 = alloca %struct.cm_port*, align 8
  %5 = alloca %struct.ib_mad_reg_req, align 4
  %6 = alloca %struct.ib_port_modify, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 1
  %12 = load i32, i32* @IB_CM_CLASS_VERSION, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 2
  %14 = load i32, i32* @IB_MGMT_CLASS_CM, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 1
  %17 = load i64, i64* @IB_PORT_CM_SUP, align 8
  store i64 %17, i64* %16, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @rdma_node_get_transport(i32 %20)
  %22 = load i64, i64* @RDMA_TRANSPORT_IB, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %181

25:                                               ; preds = %1
  %26 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 16, %29
  %31 = add i64 32, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.cm_device*
  store %struct.cm_device* %35, %struct.cm_device** %3, align 8
  %36 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %37 = icmp ne %struct.cm_device* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %181

39:                                               ; preds = %25
  %40 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %41 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %42 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %41, i32 0, i32 3
  store %struct.ib_device* %40, %struct.ib_device** %42, align 8
  %43 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %44 = call i32 @cm_get_ack_delay(%struct.cm_device* %43)
  %45 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %46 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %45, i32 0, i32 2
  %47 = call i32 @MKDEV(i32 0, i32 0)
  %48 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %49 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_create(i32* @cm_class, i32* %46, i32 %47, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %53 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %55 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %39
  %60 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %61 = call i32 @kfree(%struct.cm_device* %60)
  br label %181

62:                                               ; preds = %39
  %63 = load i32, i32* @IB_MGMT_METHOD_SEND, align 4
  %64 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_bit(i32 %63, i32 %65)
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %124, %62
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %70 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %67
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kzalloc(i32 16, i32 %74)
  %76 = bitcast i8* %75 to %struct.cm_port*
  store %struct.cm_port* %76, %struct.cm_port** %4, align 8
  %77 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %78 = icmp ne %struct.cm_port* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %146

80:                                               ; preds = %73
  %81 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %82 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %83 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %82, i32 0, i32 1
  %84 = load %struct.cm_port**, %struct.cm_port*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cm_port*, %struct.cm_port** %84, i64 %87
  store %struct.cm_port* %81, %struct.cm_port** %88, align 8
  %89 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %90 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %91 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %90, i32 0, i32 2
  store %struct.cm_device* %89, %struct.cm_device** %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %94 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %96 = call i32 @cm_create_port_fs(%struct.cm_port* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  br label %146

100:                                              ; preds = %80
  %101 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @IB_QPT_GSI, align 4
  %104 = load i32, i32* @cm_send_handler, align 4
  %105 = load i32, i32* @cm_recv_handler, align 4
  %106 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %107 = call i32 @ib_register_mad_agent(%struct.ib_device* %101, i32 %102, i32 %103, %struct.ib_mad_reg_req* %5, i32 0, i32 %104, i32 %105, %struct.cm_port* %106)
  %108 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %109 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %111 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %143

116:                                              ; preds = %100
  %117 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @ib_modify_port(%struct.ib_device* %117, i32 %118, i32 0, %struct.ib_port_modify* %6)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %138

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %67

127:                                              ; preds = %67
  %128 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %129 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %130 = call i32 @ib_set_client_data(%struct.ib_device* %128, i32* @cm_client, %struct.cm_device* %129)
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @write_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %131)
  %133 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %134 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %133, i32 0, i32 2
  %135 = call i32 @list_add_tail(i32* %134, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 1))
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @write_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %136)
  br label %181

138:                                              ; preds = %122
  %139 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %140 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ib_unregister_mad_agent(i32 %141)
  br label %143

143:                                              ; preds = %138, %115
  %144 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %145 = call i32 @cm_remove_port_fs(%struct.cm_port* %144)
  br label %146

146:                                              ; preds = %143, %99, %79
  %147 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load i64, i64* @IB_PORT_CM_SUP, align 8
  %149 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  store i64 %148, i64* %149, align 8
  br label %150

150:                                              ; preds = %154, %146
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %150
  %155 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %156 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %155, i32 0, i32 1
  %157 = load %struct.cm_port**, %struct.cm_port*** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.cm_port*, %struct.cm_port** %157, i64 %160
  %162 = load %struct.cm_port*, %struct.cm_port** %161, align 8
  store %struct.cm_port* %162, %struct.cm_port** %4, align 8
  %163 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %164 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %165 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ib_modify_port(%struct.ib_device* %163, i32 %166, i32 0, %struct.ib_port_modify* %6)
  %168 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %169 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ib_unregister_mad_agent(i32 %170)
  %172 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %173 = call i32 @cm_remove_port_fs(%struct.cm_port* %172)
  br label %150

174:                                              ; preds = %150
  %175 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %176 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @device_unregister(i32 %177)
  %179 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %180 = call i32 @kfree(%struct.cm_device* %179)
  br label %181

181:                                              ; preds = %174, %127, %59, %38, %24
  ret void
}

declare dso_local i64 @rdma_node_get_transport(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cm_get_ack_delay(%struct.cm_device*) #1

declare dso_local i32 @device_create(i32*, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.cm_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cm_create_port_fs(%struct.cm_port*) #1

declare dso_local i32 @ib_register_mad_agent(%struct.ib_device*, i32, i32, %struct.ib_mad_reg_req*, i32, i32, i32, %struct.cm_port*) #1

declare dso_local i32 @ib_modify_port(%struct.ib_device*, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.cm_device*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @cm_remove_port_fs(%struct.cm_port*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
