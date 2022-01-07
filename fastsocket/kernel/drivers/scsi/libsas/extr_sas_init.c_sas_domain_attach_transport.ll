; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_sas_domain_attach_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_sas_domain_attach_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_transport_template = type { i32, i32, i32 }
%struct.sas_domain_function_template = type { i32 }
%struct.sas_internal = type { %struct.sas_domain_function_template* }

@sft = common dso_local global i32 0, align 4
@sas_scsi_timed_out = common dso_local global i32 0, align 4
@sas_scsi_recover_host = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_transport_template* @sas_domain_attach_transport(%struct.sas_domain_function_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.sas_domain_function_template*, align 8
  %4 = alloca %struct.scsi_transport_template*, align 8
  %5 = alloca %struct.sas_internal*, align 8
  store %struct.sas_domain_function_template* %0, %struct.sas_domain_function_template** %3, align 8
  %6 = call %struct.scsi_transport_template* @sas_attach_transport(i32* @sft)
  store %struct.scsi_transport_template* %6, %struct.scsi_transport_template** %4, align 8
  %7 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  %8 = icmp ne %struct.scsi_transport_template* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  store %struct.scsi_transport_template* %10, %struct.scsi_transport_template** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  %13 = call %struct.sas_internal* @to_sas_internal(%struct.scsi_transport_template* %12)
  store %struct.sas_internal* %13, %struct.sas_internal** %5, align 8
  %14 = load %struct.sas_domain_function_template*, %struct.sas_domain_function_template** %3, align 8
  %15 = load %struct.sas_internal*, %struct.sas_internal** %5, align 8
  %16 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %15, i32 0, i32 0
  store %struct.sas_domain_function_template* %14, %struct.sas_domain_function_template** %16, align 8
  %17 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @sas_scsi_timed_out, align 4
  %20 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @sas_scsi_recover_host, align 4
  %23 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %4, align 8
  store %struct.scsi_transport_template* %25, %struct.scsi_transport_template** %2, align 8
  br label %26

26:                                               ; preds = %11, %9
  %27 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  ret %struct.scsi_transport_template* %27
}

declare dso_local %struct.scsi_transport_template* @sas_attach_transport(i32*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(%struct.scsi_transport_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
