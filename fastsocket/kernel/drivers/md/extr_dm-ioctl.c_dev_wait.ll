; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32 }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @dev_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_wait(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_table*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %10 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %9)
  store %struct.mapped_device* %10, %struct.mapped_device** %7, align 8
  %11 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %12 = icmp ne %struct.mapped_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %18 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %19 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dm_wait_event(%struct.mapped_device* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %28 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %29 = call i32 @__dev_status(%struct.mapped_device* %27, %struct.dm_ioctl* %28)
  %30 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %31 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %32 = call %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device* %30, %struct.dm_ioctl* %31)
  store %struct.dm_table* %32, %struct.dm_table** %8, align 8
  %33 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %34 = icmp ne %struct.dm_table* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %37 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @retrieve_status(%struct.dm_table* %36, %struct.dm_ioctl* %37, i64 %38)
  %40 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %41 = call i32 @dm_table_put(%struct.dm_table* %40)
  br label %42

42:                                               ; preds = %35, %26
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %45 = call i32 @dm_put(%struct.mapped_device* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i64 @dm_wait_event(%struct.mapped_device*, i32) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @retrieve_status(%struct.dm_table*, %struct.dm_ioctl*, i64) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
