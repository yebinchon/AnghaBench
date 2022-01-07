; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_free_remote_node_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_free_remote_node_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32, %struct.isci_remote_device** }
%struct.isci_remote_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_controller_free_remote_node_context(%struct.isci_host* %0, %struct.isci_remote_device* %1, i64 %2) #0 {
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.isci_remote_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %9 = call i32 @sci_remote_device_node_count(%struct.isci_remote_device* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 1
  %12 = load %struct.isci_remote_device**, %struct.isci_remote_device*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.isci_remote_device*, %struct.isci_remote_device** %12, i64 %13
  %15 = load %struct.isci_remote_device*, %struct.isci_remote_device** %14, align 8
  %16 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %17 = icmp eq %struct.isci_remote_device* %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %20 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %19, i32 0, i32 1
  %21 = load %struct.isci_remote_device**, %struct.isci_remote_device*** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.isci_remote_device*, %struct.isci_remote_device** %21, i64 %22
  store %struct.isci_remote_device* null, %struct.isci_remote_device** %23, align 8
  %24 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %25 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @sci_remote_node_table_release_remote_node_index(i32* %25, i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @sci_remote_device_node_count(%struct.isci_remote_device*) #1

declare dso_local i32 @sci_remote_node_table_release_remote_node_index(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
