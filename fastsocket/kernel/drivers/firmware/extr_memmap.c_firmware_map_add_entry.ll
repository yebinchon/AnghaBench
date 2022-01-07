; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_memmap.c_firmware_map_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_memmap.c_firmware_map_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware_map_entry = type { i8*, i32, i32, i64, i64 }

@memmap_ktype = common dso_local global i32 0, align 4
@map_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, %struct.firmware_map_entry*)* @firmware_map_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_map_add_entry(i64 %0, i64 %1, i8* %2, %struct.firmware_map_entry* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.firmware_map_entry*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.firmware_map_entry* %3, %struct.firmware_map_entry** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp sgt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %8, align 8
  %16 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %15, i32 0, i32 4
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %8, align 8
  %19 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %8, align 8
  %22 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %8, align 8
  %24 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %8, align 8
  %27 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %26, i32 0, i32 2
  %28 = call i32 @kobject_init(i32* %27, i32* @memmap_ktype)
  %29 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %8, align 8
  %30 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %30, i32* @map_entries)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
