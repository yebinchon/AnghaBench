; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_schedule_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_schedule_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_wl_entry = type { i32, i32 }
%struct.ubi_work = type { i32, %struct.ubi_wl_entry*, i32* }

@.str = private unnamed_addr constant [46 x i8] c"schedule erasure of PEB %d, EC %d, torture %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@erase_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_wl_entry*, i32)* @schedule_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schedule_erase(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_work*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %10 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %13 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @dbg_wl(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %15)
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call %struct.ubi_work* @kmalloc(i32 24, i32 %17)
  store %struct.ubi_work* %18, %struct.ubi_work** %8, align 8
  %19 = load %struct.ubi_work*, %struct.ubi_work** %8, align 8
  %20 = icmp ne %struct.ubi_work* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.ubi_work*, %struct.ubi_work** %8, align 8
  %26 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %25, i32 0, i32 2
  store i32* @erase_worker, i32** %26, align 8
  %27 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %28 = load %struct.ubi_work*, %struct.ubi_work** %8, align 8
  %29 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %28, i32 0, i32 1
  store %struct.ubi_wl_entry* %27, %struct.ubi_wl_entry** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ubi_work*, %struct.ubi_work** %8, align 8
  %32 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %34 = load %struct.ubi_work*, %struct.ubi_work** %8, align 8
  %35 = call i32 @schedule_ubi_work(%struct.ubi_device* %33, %struct.ubi_work* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @dbg_wl(i8*, i32, i32, i32) #1

declare dso_local %struct.ubi_work* @kmalloc(i32, i32) #1

declare dso_local i32 @schedule_ubi_work(%struct.ubi_device*, %struct.ubi_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
