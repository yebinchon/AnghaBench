; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_prot_queue_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_prot_queue_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"deleted PEB %d from the protection queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @prot_queue_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prot_queue_del(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 0
  %9 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, i64 %11
  %13 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %12, align 8
  store %struct.ubi_wl_entry* %13, %struct.ubi_wl_entry** %6, align 8
  %14 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %15 = icmp ne %struct.ubi_wl_entry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %22 = call i64 @paranoid_check_in_pq(%struct.ubi_device* %20, %struct.ubi_wl_entry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dbg_wl(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %24, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @paranoid_check_in_pq(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dbg_wl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
