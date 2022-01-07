; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_rpavscsi_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_rpavscsi_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32, i32 }
%struct.vio_dev = type { i32 }
%struct.viosrp_crq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rpavscsi_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpavscsi_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.viosrp_crq*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ibmvscsi_host_data*
  store %struct.ibmvscsi_host_data* %8, %struct.ibmvscsi_host_data** %3, align 8
  %9 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vio_dev* @to_vio_dev(i32 %11)
  store %struct.vio_dev* %12, %struct.vio_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %45, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %20 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %19, i32 0, i32 0
  %21 = call %struct.viosrp_crq* @crq_queue_next_crq(i32* %20)
  store %struct.viosrp_crq* %21, %struct.viosrp_crq** %5, align 8
  %22 = icmp ne %struct.viosrp_crq* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %25 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %26 = call i32 @ibmvscsi_handle_crq(%struct.viosrp_crq* %24, %struct.ibmvscsi_host_data* %25)
  %27 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %28 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %31 = call i32 @vio_enable_interrupts(%struct.vio_dev* %30)
  %32 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %33 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %32, i32 0, i32 0
  %34 = call %struct.viosrp_crq* @crq_queue_next_crq(i32* %33)
  store %struct.viosrp_crq* %34, %struct.viosrp_crq** %5, align 8
  %35 = icmp ne %struct.viosrp_crq* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %38 = call i32 @vio_disable_interrupts(%struct.vio_dev* %37)
  %39 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %40 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %41 = call i32 @ibmvscsi_handle_crq(%struct.viosrp_crq* %39, %struct.ibmvscsi_host_data* %40)
  %42 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %43 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %45

44:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %36
  br label %13

46:                                               ; preds = %13
  ret void
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local %struct.viosrp_crq* @crq_queue_next_crq(i32*) #1

declare dso_local i32 @ibmvscsi_handle_crq(%struct.viosrp_crq*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @vio_disable_interrupts(%struct.vio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
