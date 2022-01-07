; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_validate_context_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_validate_context_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_context = type { i32 }
%union.scu_remote_node_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.isci_remote_device = type { %struct.TYPE_4__*, %struct.domain_device* }
%struct.TYPE_4__ = type { %struct.isci_host* }
%struct.isci_host = type { i32 }
%struct.domain_device = type { i64 }

@SCU_CONTEXT_COMMAND_POST_RNC_96 = common dso_local global i32 0, align 4
@SCU_CONTEXT_COMMAND_POST_RNC_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_context*)* @sci_remote_node_context_validate_context_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_context_validate_context_buffer(%struct.sci_remote_node_context* %0) #0 {
  %2 = alloca %struct.sci_remote_node_context*, align 8
  %3 = alloca %union.scu_remote_node_context*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.isci_host*, align 8
  store %struct.sci_remote_node_context* %0, %struct.sci_remote_node_context** %2, align 8
  %7 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %8 = call %struct.isci_remote_device* @rnc_to_dev(%struct.sci_remote_node_context* %7)
  store %struct.isci_remote_device* %8, %struct.isci_remote_device** %4, align 8
  %9 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %10 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %9, i32 0, i32 1
  %11 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  store %struct.domain_device* %11, %struct.domain_device** %5, align 8
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %13 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.isci_host*, %struct.isci_host** %15, align 8
  store %struct.isci_host* %16, %struct.isci_host** %6, align 8
  %17 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %18 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %19 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %union.scu_remote_node_context* @sci_rnc_by_id(%struct.isci_host* %17, i32 %20)
  store %union.scu_remote_node_context* %21, %union.scu_remote_node_context** %3, align 8
  %22 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %3, align 8
  %23 = bitcast %union.scu_remote_node_context* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %26 = call i64 @dev_is_sata(%struct.domain_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %30 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %35 = load i32, i32* @SCU_CONTEXT_COMMAND_POST_RNC_96, align 4
  %36 = call i32 @sci_remote_device_post_request(%struct.isci_remote_device* %34, i32 %35)
  br label %54

37:                                               ; preds = %28, %1
  %38 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %39 = load i32, i32* @SCU_CONTEXT_COMMAND_POST_RNC_32, align 4
  %40 = call i32 @sci_remote_device_post_request(%struct.isci_remote_device* %38, i32 %39)
  %41 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %47 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %50 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sci_port_setup_transports(%struct.TYPE_4__* %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53, %33
  ret void
}

declare dso_local %struct.isci_remote_device* @rnc_to_dev(%struct.sci_remote_node_context*) #1

declare dso_local %union.scu_remote_node_context* @sci_rnc_by_id(%struct.isci_host*, i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @sci_remote_device_post_request(%struct.isci_remote_device*, i32) #1

declare dso_local i32 @sci_port_setup_transports(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
