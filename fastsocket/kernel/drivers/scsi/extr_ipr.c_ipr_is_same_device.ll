; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_is_same_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_is_same_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_resource_entry = type { i64, i64, i64, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ipr_config_table_entry_wrapper = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_resource_entry*, %struct.ipr_config_table_entry_wrapper*)* @ipr_is_same_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_is_same_device(%struct.ipr_resource_entry* %0, %struct.ipr_config_table_entry_wrapper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipr_resource_entry*, align 8
  %5 = alloca %struct.ipr_config_table_entry_wrapper*, align 8
  store %struct.ipr_resource_entry* %0, %struct.ipr_resource_entry** %4, align 8
  store %struct.ipr_config_table_entry_wrapper* %1, %struct.ipr_config_table_entry_wrapper** %5, align 8
  %6 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %7 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %6, i32 0, i32 5
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %14 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %13, i32 0, i32 4
  %15 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %5, align 8
  %16 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = call i32 @memcmp(i32* %14, i32* %19, i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %12
  %23 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %24 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %5, align 8
  %27 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = call i32 @memcmp(i32* %25, i32* %30, i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %74

34:                                               ; preds = %22, %12
  br label %73

35:                                               ; preds = %2
  %36 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %37 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %5, align 8
  %40 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %38, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %35
  %48 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %49 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %5, align 8
  %52 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %50, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %61 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %5, align 8
  %64 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %74

72:                                               ; preds = %59, %47, %35
  br label %73

73:                                               ; preds = %72, %34
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %33
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
