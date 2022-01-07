; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_table_deps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_table_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32 }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @table_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_deps(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca %struct.dm_table*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %9 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %8)
  store %struct.mapped_device* %9, %struct.mapped_device** %6, align 8
  %10 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %11 = icmp ne %struct.mapped_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %17 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %18 = call i32 @__dev_status(%struct.mapped_device* %16, %struct.dm_ioctl* %17)
  %19 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %20 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %21 = call %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device* %19, %struct.dm_ioctl* %20)
  store %struct.dm_table* %21, %struct.dm_table** %7, align 8
  %22 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  %23 = icmp ne %struct.dm_table* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  %26 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @retrieve_deps(%struct.dm_table* %25, %struct.dm_ioctl* %26, i64 %27)
  %29 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  %30 = call i32 @dm_table_put(%struct.dm_table* %29)
  br label %31

31:                                               ; preds = %24, %15
  %32 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %33 = call i32 @dm_put(%struct.mapped_device* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @retrieve_deps(%struct.dm_table*, %struct.dm_ioctl*, i64) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
