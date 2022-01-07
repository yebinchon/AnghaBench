; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_issue_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_issue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32, i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.dm_io_region = type { i32, i32, i32 }

@DM_IO_KMEM = common dso_local global i32 0, align 4
@WRITE_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bufio_issue_flush(%struct.dm_bufio_client* %0) #0 {
  %2 = alloca %struct.dm_bufio_client*, align 8
  %3 = alloca %struct.dm_io_request, align 8
  %4 = alloca %struct.dm_io_region, align 4
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %2, align 8
  %5 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %3, i32 0, i32 0
  %6 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %7 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 8
  %9 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %13 = load i32, i32* @DM_IO_KMEM, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %3, i32 0, i32 2
  %15 = load i32, i32* @WRITE_FLUSH, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %4, i32 0, i32 2
  %19 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %20 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = call i32 (...) @dm_bufio_in_request()
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = call i32 @dm_io(%struct.dm_io_request* %3, i32 1, %struct.dm_io_region* %4, i32* null)
  ret i32 %24
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bufio_in_request(...) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
