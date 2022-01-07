; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osduld_put_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osduld_put_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.osd_uld_device* }
%struct.osd_uld_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osduld_put_device(%struct.osd_dev* %0) #0 {
  %2 = alloca %struct.osd_dev*, align 8
  %3 = alloca %struct.osd_uld_device*, align 8
  store %struct.osd_dev* %0, %struct.osd_dev** %2, align 8
  %4 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  %5 = icmp ne %struct.osd_dev* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  %8 = call i32 @IS_ERR(%struct.osd_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  %12 = getelementptr inbounds %struct.osd_dev, %struct.osd_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.osd_uld_device*, %struct.osd_uld_device** %14, align 8
  store %struct.osd_uld_device* %15, %struct.osd_uld_device** %3, align 8
  %16 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  %17 = getelementptr inbounds %struct.osd_dev, %struct.osd_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.osd_uld_device*, %struct.osd_uld_device** %3, align 8
  %20 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  %27 = getelementptr inbounds %struct.osd_dev, %struct.osd_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @fput(%struct.TYPE_4__* %28)
  %30 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  %31 = call i32 @kfree(%struct.osd_dev* %30)
  br label %32

32:                                               ; preds = %10, %6, %1
  ret void
}

declare dso_local i32 @IS_ERR(%struct.osd_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fput(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.osd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
