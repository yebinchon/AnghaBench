; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_upgrade_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_upgrade_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dev_internal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dev_internal*, i32, %struct.mapped_device*)* @upgrade_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_mode(%struct.dm_dev_internal* %0, i32 %1, %struct.mapped_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_dev_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_dev_internal, align 8
  %10 = alloca %struct.dm_dev_internal, align 8
  store %struct.dm_dev_internal* %0, %struct.dm_dev_internal** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mapped_device* %2, %struct.mapped_device** %7, align 8
  %11 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %12 = bitcast %struct.dm_dev_internal* %10 to i8*
  %13 = bitcast %struct.dm_dev_internal* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = bitcast %struct.dm_dev_internal* %9 to i8*
  %15 = bitcast %struct.dm_dev_internal* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %24 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %30 = call i32 @open_dev(%struct.dm_dev_internal* %9, i32 %28, %struct.mapped_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %38 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %43 = call i32 @close_dev(%struct.dm_dev_internal* %10, %struct.mapped_device* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open_dev(%struct.dm_dev_internal*, i32, %struct.mapped_device*) #2

declare dso_local i32 @close_dev(%struct.dm_dev_internal*, %struct.mapped_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
