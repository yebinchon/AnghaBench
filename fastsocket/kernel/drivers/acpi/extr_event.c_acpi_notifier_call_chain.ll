; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_event.c_acpi_notifier_call_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_event.c_acpi_notifier_call_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_bus_event = type { i8*, i8*, i32, i32 }

@acpi_chain_head = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_notifier_call_chain(%struct.acpi_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_bus_event, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %9, i32 %13)
  %15 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %7, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %16, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %7, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %7, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast %struct.acpi_bus_event* %7 to i8*
  %27 = call i64 @blocking_notifier_call_chain(i32* @acpi_chain_head, i32 0, i8* %26)
  %28 = load i64, i64* @NOTIFY_BAD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  ret i32 %35
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @blocking_notifier_call_chain(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
