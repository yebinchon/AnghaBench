; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.ipath_portdata = type { i32 }

@IPATH_POLL_TYPE_URGENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @ipath_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.ipath_portdata*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.ipath_portdata* @port_fp(%struct.file* %7)
  store %struct.ipath_portdata* %8, %struct.ipath_portdata** %5, align 8
  %9 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %10 = icmp ne %struct.ipath_portdata* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %14 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IPATH_POLL_TYPE_URGENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %23 = call i32 @ipath_poll_urgent(%struct.ipath_portdata* %20, %struct.file* %21, %struct.poll_table_struct* %22)
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %12
  %25 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %28 = call i32 @ipath_poll_next(%struct.ipath_portdata* %25, %struct.file* %26, %struct.poll_table_struct* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.ipath_portdata* @port_fp(%struct.file*) #1

declare dso_local i32 @ipath_poll_urgent(%struct.ipath_portdata*, %struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @ipath_poll_next(%struct.ipath_portdata*, %struct.file*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
