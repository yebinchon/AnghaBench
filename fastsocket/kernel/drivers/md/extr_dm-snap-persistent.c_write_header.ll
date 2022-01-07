; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_write_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i32, i32, %struct.disk_header*, %struct.TYPE_2__* }
%struct.disk_header = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@SNAP_MAGIC = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(%struct.pstore* %0) #0 {
  %2 = alloca %struct.pstore*, align 8
  %3 = alloca %struct.disk_header*, align 8
  store %struct.pstore* %0, %struct.pstore** %2, align 8
  %4 = load %struct.pstore*, %struct.pstore** %2, align 8
  %5 = getelementptr inbounds %struct.pstore, %struct.pstore* %4, i32 0, i32 2
  %6 = load %struct.disk_header*, %struct.disk_header** %5, align 8
  %7 = load %struct.pstore*, %struct.pstore** %2, align 8
  %8 = getelementptr inbounds %struct.pstore, %struct.pstore* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SECTOR_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = call i32 @memset(%struct.disk_header* %6, i32 0, i32 %13)
  %15 = load %struct.pstore*, %struct.pstore** %2, align 8
  %16 = getelementptr inbounds %struct.pstore, %struct.pstore* %15, i32 0, i32 2
  %17 = load %struct.disk_header*, %struct.disk_header** %16, align 8
  store %struct.disk_header* %17, %struct.disk_header** %3, align 8
  %18 = load i32, i32* @SNAP_MAGIC, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.disk_header*, %struct.disk_header** %3, align 8
  %21 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.pstore*, %struct.pstore** %2, align 8
  %23 = getelementptr inbounds %struct.pstore, %struct.pstore* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.disk_header*, %struct.disk_header** %3, align 8
  %27 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.pstore*, %struct.pstore** %2, align 8
  %29 = getelementptr inbounds %struct.pstore, %struct.pstore* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.disk_header*, %struct.disk_header** %3, align 8
  %33 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.pstore*, %struct.pstore** %2, align 8
  %35 = getelementptr inbounds %struct.pstore, %struct.pstore* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.disk_header*, %struct.disk_header** %3, align 8
  %41 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.pstore*, %struct.pstore** %2, align 8
  %43 = load %struct.pstore*, %struct.pstore** %2, align 8
  %44 = getelementptr inbounds %struct.pstore, %struct.pstore* %43, i32 0, i32 2
  %45 = load %struct.disk_header*, %struct.disk_header** %44, align 8
  %46 = load i32, i32* @WRITE, align 4
  %47 = call i32 @chunk_io(%struct.pstore* %42, %struct.disk_header* %45, i32 0, i32 %46, i32 1)
  ret i32 %47
}

declare dso_local i32 @memset(%struct.disk_header*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @chunk_io(%struct.pstore*, %struct.disk_header*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
