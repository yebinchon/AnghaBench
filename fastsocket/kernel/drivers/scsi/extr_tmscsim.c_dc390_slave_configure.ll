; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dc390_acb = type { i32, i64 }
%struct.dc390_dcb = type { i32, i32 }

@TAG_QUEUEING_ = common dso_local global i32 0, align 4
@EN_TAG_QUEUEING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @dc390_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc390_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.dc390_acb*, align 8
  %4 = alloca %struct.dc390_dcb*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dc390_acb*
  store %struct.dc390_acb* %10, %struct.dc390_acb** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dc390_dcb*
  store %struct.dc390_dcb* %14, %struct.dc390_dcb** %4, align 8
  %15 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %16 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %23 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TAG_QUEUEING_, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32, i32* @EN_TAG_QUEUEING, align 4
  %30 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %31 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %35 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %36 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @scsi_activate_tcq(%struct.scsi_device* %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %21, %1
  ret i32 0
}

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
