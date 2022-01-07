; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_stp_request_pio_data_out_trasmit_data_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_stp_request_pio_data_out_trasmit_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.scu_task_context*, %struct.TYPE_8__ }
%struct.scu_task_context = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.isci_stp_request }
%struct.isci_stp_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.scu_sgl_element_pair = type { %struct.scu_sgl_element, %struct.scu_sgl_element }
%struct.scu_sgl_element = type { i32, i32 }

@SCU_SGL_ELEMENT_PAIR_A = common dso_local global i64 0, align 8
@FIS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_request*, i32)* @sci_stp_request_pio_data_out_trasmit_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_stp_request_pio_data_out_trasmit_data_frame(%struct.isci_request* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_stp_request*, align 8
  %6 = alloca %struct.scu_task_context*, align 8
  %7 = alloca %struct.scu_sgl_element_pair*, align 8
  %8 = alloca %struct.scu_sgl_element*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %10 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.isci_stp_request* %11, %struct.isci_stp_request** %5, align 8
  %12 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %13 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %12, i32 0, i32 0
  %14 = load %struct.scu_task_context*, %struct.scu_task_context** %13, align 8
  store %struct.scu_task_context* %14, %struct.scu_task_context** %6, align 8
  %15 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %16 = load %struct.isci_stp_request*, %struct.isci_stp_request** %5, align 8
  %17 = getelementptr inbounds %struct.isci_stp_request, %struct.isci_stp_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request* %15, i32 %19)
  store %struct.scu_sgl_element_pair* %20, %struct.scu_sgl_element_pair** %7, align 8
  %21 = load %struct.isci_stp_request*, %struct.isci_stp_request** %5, align 8
  %22 = getelementptr inbounds %struct.isci_stp_request, %struct.isci_stp_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCU_SGL_ELEMENT_PAIR_A, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %7, align 8
  %29 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %28, i32 0, i32 1
  store %struct.scu_sgl_element* %29, %struct.scu_sgl_element** %8, align 8
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.scu_sgl_element_pair*, %struct.scu_sgl_element_pair** %7, align 8
  %32 = getelementptr inbounds %struct.scu_sgl_element_pair, %struct.scu_sgl_element_pair* %31, i32 0, i32 0
  store %struct.scu_sgl_element* %32, %struct.scu_sgl_element** %8, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %8, align 8
  %35 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %38 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %8, align 8
  %40 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %43 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %46 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @FIS_DATA, align 4
  %48 = load %struct.scu_task_context*, %struct.scu_task_context** %6, align 8
  %49 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %53 = call i32 @sci_controller_continue_io(%struct.isci_request* %52)
  ret i32 %53
}

declare dso_local %struct.scu_sgl_element_pair* @to_sgl_element_pair(%struct.isci_request*, i32) #1

declare dso_local i32 @sci_controller_continue_io(%struct.isci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
