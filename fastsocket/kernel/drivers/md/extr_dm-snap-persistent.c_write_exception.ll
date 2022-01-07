; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_write_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_write_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i32 }
%struct.core_exception = type { i32, i32 }
%struct.disk_exception = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pstore*, i32, %struct.core_exception*)* @write_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_exception(%struct.pstore* %0, i32 %1, %struct.core_exception* %2) #0 {
  %4 = alloca %struct.pstore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.core_exception*, align 8
  %7 = alloca %struct.disk_exception*, align 8
  store %struct.pstore* %0, %struct.pstore** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.core_exception* %2, %struct.core_exception** %6, align 8
  %8 = load %struct.pstore*, %struct.pstore** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.disk_exception* @get_exception(%struct.pstore* %8, i32 %9)
  store %struct.disk_exception* %10, %struct.disk_exception** %7, align 8
  %11 = load %struct.core_exception*, %struct.core_exception** %6, align 8
  %12 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le64(i32 %13)
  %15 = load %struct.disk_exception*, %struct.disk_exception** %7, align 8
  %16 = getelementptr inbounds %struct.disk_exception, %struct.disk_exception* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.core_exception*, %struct.core_exception** %6, align 8
  %18 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le64(i32 %19)
  %21 = load %struct.disk_exception*, %struct.disk_exception** %7, align 8
  %22 = getelementptr inbounds %struct.disk_exception, %struct.disk_exception* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local %struct.disk_exception* @get_exception(%struct.pstore*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
