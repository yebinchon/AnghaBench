; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_mvm_rx_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_rx_handlers = type { i64, i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*, %struct.iwl_device_cmd.2*)*, i32 }
%struct.iwl_mvm.0 = type opaque
%struct.iwl_rx_cmd_buffer.1 = type opaque
%struct.iwl_device_cmd.2 = type opaque
%struct.iwl_op_mode = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32, i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_mvm = type { i32, i32, i32, i32 }
%struct.iwl_async_handler_entry = type { i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@iwl_mvm_rx_handlers = common dso_local global %struct.iwl_rx_handlers* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_op_mode*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* @iwl_mvm_rx_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_rx_dispatch(%struct.iwl_op_mode* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_op_mode*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_device_cmd*, align 8
  %8 = alloca %struct.iwl_rx_packet*, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iwl_rx_handlers*, align 8
  %12 = alloca %struct.iwl_async_handler_entry*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %6, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %7, align 8
  %13 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %14 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %13)
  store %struct.iwl_rx_packet* %14, %struct.iwl_rx_packet** %8, align 8
  %15 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %5, align 8
  %16 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %15)
  store %struct.iwl_mvm* %16, %struct.iwl_mvm** %9, align 8
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 3
  %19 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %20 = call i32 @iwl_notification_wait_notify(i32* %18, %struct.iwl_rx_packet* %19)
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %99, %3
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** @iwl_mvm_rx_handlers, align 8
  %24 = call i64 @ARRAY_SIZE(%struct.iwl_rx_handlers* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %102

26:                                               ; preds = %21
  %27 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** @iwl_mvm_rx_handlers, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %27, i64 %28
  store %struct.iwl_rx_handlers* %29, %struct.iwl_rx_handlers** %11, align 8
  %30 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %11, align 8
  %31 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %99

39:                                               ; preds = %26
  %40 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %11, align 8
  %41 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %11, align 8
  %46 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %45, i32 0, i32 1
  %47 = load i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*, %struct.iwl_device_cmd.2*)*, i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*, %struct.iwl_device_cmd.2*)** %46, align 8
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %49 = bitcast %struct.iwl_mvm* %48 to %struct.iwl_mvm.0*
  %50 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %51 = bitcast %struct.iwl_rx_cmd_buffer* %50 to %struct.iwl_rx_cmd_buffer.1*
  %52 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %7, align 8
  %53 = bitcast %struct.iwl_device_cmd* %52 to %struct.iwl_device_cmd.2*
  %54 = call i32 %47(%struct.iwl_mvm.0* %49, %struct.iwl_rx_cmd_buffer.1* %51, %struct.iwl_device_cmd.2* %53)
  store i32 %54, i32* %4, align 4
  br label %103

55:                                               ; preds = %39
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call %struct.iwl_async_handler_entry* @kzalloc(i32 24, i32 %56)
  store %struct.iwl_async_handler_entry* %57, %struct.iwl_async_handler_entry** %12, align 8
  %58 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %12, align 8
  %59 = icmp ne %struct.iwl_async_handler_entry* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %103

61:                                               ; preds = %55
  %62 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %63 = call i32 @rxb_steal_page(%struct.iwl_rx_cmd_buffer* %62)
  %64 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %12, align 8
  %65 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %12, align 8
  %71 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %12, align 8
  %77 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.iwl_rx_handlers*, %struct.iwl_rx_handlers** %11, align 8
  %80 = getelementptr inbounds %struct.iwl_rx_handlers, %struct.iwl_rx_handlers* %79, i32 0, i32 1
  %81 = load i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*, %struct.iwl_device_cmd.2*)*, i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*, %struct.iwl_device_cmd.2*)** %80, align 8
  %82 = bitcast i32 (%struct.iwl_mvm.0*, %struct.iwl_rx_cmd_buffer.1*, %struct.iwl_device_cmd.2*)* %81 to i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)*
  %83 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %12, align 8
  %84 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %83, i32 0, i32 0
  store i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)* %82, i32 (%struct.iwl_mvm*, %struct.iwl_rx_cmd_buffer*, %struct.iwl_device_cmd*)** %84, align 8
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %85, i32 0, i32 1
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.iwl_async_handler_entry*, %struct.iwl_async_handler_entry** %12, align 8
  %89 = getelementptr inbounds %struct.iwl_async_handler_entry, %struct.iwl_async_handler_entry* %88, i32 0, i32 1
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 2
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 1
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 0
  %98 = call i32 @schedule_work(i32* %97)
  br label %102

99:                                               ; preds = %38
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %21

102:                                              ; preds = %61, %21
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %60, %44
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @iwl_notification_wait_notify(i32*, %struct.iwl_rx_packet*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.iwl_rx_handlers*) #1

declare dso_local %struct.iwl_async_handler_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @rxb_steal_page(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
