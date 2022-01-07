; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_has_remote_devices_stopping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_has_remote_devices_stopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SCI_DEV_STOPPING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_controller_has_remote_devices_stopping(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %8 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %5
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %21 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCI_DEV_STOPPING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %19, %11
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %5

36:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
