; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_get_last_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_get_last_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.cdrom_multisession = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_get_last_session(%struct.cdrom_device_info* %0, %struct.cdrom_multisession* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.cdrom_multisession*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.cdrom_multisession* %1, %struct.cdrom_multisession** %4, align 8
  %6 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %7 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %4, align 8
  %13 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %4, align 8
  %28 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
