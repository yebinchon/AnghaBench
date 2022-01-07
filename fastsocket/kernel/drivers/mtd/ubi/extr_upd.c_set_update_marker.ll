; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_upd.c_set_update_marker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_upd.c_set_update_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_volume = type { i64, i32 }
%struct.ubi_vtbl_record = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"set update marker for volume %d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"already set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_volume*)* @set_update_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_update_marker(%struct.ubi_device* %0, %struct.ubi_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_vtbl_record, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %9 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %13 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ubi_assert(i32 %25)
  %27 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %30 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %33 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = call i32 @memcpy(%struct.ubi_vtbl_record* %7, %struct.TYPE_2__* %35, i32 4)
  %37 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %7, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %39 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %42 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %43 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %41, i64 %44, %struct.ubi_vtbl_record* %7)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %47 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %28, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @memcpy(%struct.ubi_vtbl_record*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i64, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
