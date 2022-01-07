; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_intf_remove_enclosure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_intf_remove_enclosure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.enclosure_device = type { i32, %struct.TYPE_2__*, %struct.ses_device* }
%struct.TYPE_2__ = type { %struct.ses_device* }
%struct.ses_device = type { %struct.ses_device*, %struct.ses_device*, %struct.ses_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @ses_intf_remove_enclosure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_intf_remove_enclosure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.enclosure_device*, align 8
  %4 = alloca %struct.ses_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = call %struct.enclosure_device* @enclosure_find(i32* %6, i32* null)
  store %struct.enclosure_device* %7, %struct.enclosure_device** %3, align 8
  %8 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %9 = icmp ne %struct.enclosure_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %13 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %12, i32 0, i32 2
  %14 = load %struct.ses_device*, %struct.ses_device** %13, align 8
  store %struct.ses_device* %14, %struct.ses_device** %4, align 8
  %15 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %16 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %15, i32 0, i32 2
  store %struct.ses_device* null, %struct.ses_device** %16, align 8
  %17 = load %struct.ses_device*, %struct.ses_device** %4, align 8
  %18 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %17, i32 0, i32 2
  %19 = load %struct.ses_device*, %struct.ses_device** %18, align 8
  %20 = call i32 @kfree(%struct.ses_device* %19)
  %21 = load %struct.ses_device*, %struct.ses_device** %4, align 8
  %22 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %21, i32 0, i32 1
  %23 = load %struct.ses_device*, %struct.ses_device** %22, align 8
  %24 = call i32 @kfree(%struct.ses_device* %23)
  %25 = load %struct.ses_device*, %struct.ses_device** %4, align 8
  %26 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %25, i32 0, i32 0
  %27 = load %struct.ses_device*, %struct.ses_device** %26, align 8
  %28 = call i32 @kfree(%struct.ses_device* %27)
  %29 = load %struct.ses_device*, %struct.ses_device** %4, align 8
  %30 = call i32 @kfree(%struct.ses_device* %29)
  %31 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %32 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.ses_device*, %struct.ses_device** %35, align 8
  %37 = call i32 @kfree(%struct.ses_device* %36)
  %38 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %39 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %38, i32 0, i32 0
  %40 = call i32 @put_device(i32* %39)
  %41 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %42 = call i32 @enclosure_unregister(%struct.enclosure_device* %41)
  br label %43

43:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.enclosure_device* @enclosure_find(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ses_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @enclosure_unregister(%struct.enclosure_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
