; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_unmap_cmd_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_unmap_cmd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_cmd = type { i32 }
%struct.srp_event_struct = type { i64 }
%struct.device = type { i32 }

@SRP_NO_DATA_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_cmd*, %struct.srp_event_struct*, %struct.device*)* @unmap_cmd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_cmd_data(%struct.srp_cmd* %0, %struct.srp_event_struct* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.srp_cmd*, align 8
  %5 = alloca %struct.srp_event_struct*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.srp_cmd* %0, %struct.srp_cmd** %4, align 8
  store %struct.srp_event_struct* %1, %struct.srp_event_struct** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %9 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SRP_NO_DATA_DESC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SRP_NO_DATA_DESC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %35

25:                                               ; preds = %20, %3
  %26 = load %struct.srp_event_struct*, %struct.srp_event_struct** %5, align 8
  %27 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.srp_event_struct*, %struct.srp_event_struct** %5, align 8
  %32 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @scsi_dma_unmap(i64 %33)
  br label %35

35:                                               ; preds = %24, %30, %25
  ret void
}

declare dso_local i32 @scsi_dma_unmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
