; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_intf_remove_component.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_intf_remove_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.enclosure_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @ses_intf_remove_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_intf_remove_component(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.enclosure_device*, align 8
  %4 = alloca %struct.enclosure_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  store %struct.enclosure_device* null, %struct.enclosure_device** %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %11 = call %struct.enclosure_device* @enclosure_find(i32* %9, %struct.enclosure_device* %10)
  store %struct.enclosure_device* %11, %struct.enclosure_device** %3, align 8
  %12 = icmp ne %struct.enclosure_device* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  store %struct.enclosure_device* %14, %struct.enclosure_device** %4, align 8
  %15 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = call i32 @enclosure_remove_device(%struct.enclosure_device* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %13
  br label %5

22:                                               ; preds = %20, %5
  %23 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %24 = icmp ne %struct.enclosure_device* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %27 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %26, i32 0, i32 0
  %28 = call i32 @put_device(i32* %27)
  br label %29

29:                                               ; preds = %25, %22
  ret void
}

declare dso_local %struct.enclosure_device* @enclosure_find(i32*, %struct.enclosure_device*) #1

declare dso_local i32 @enclosure_remove_device(%struct.enclosure_device*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
