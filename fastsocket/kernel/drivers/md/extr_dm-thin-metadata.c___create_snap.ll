; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___create_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___create_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32, i32, i32 }
%struct.dm_thin_device = type { i32 }
%struct.disk_device_details = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, i32, i32)* @__create_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_snap(%struct.dm_pool_metadata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_pool_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_thin_device*, align 8
  %13 = alloca %struct.disk_device_details, align 4
  %14 = alloca %struct.disk_device_details, align 4
  %15 = alloca %struct.disk_device_details, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %19 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %18, i32 0, i32 1
  %20 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %21 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dm_btree_lookup(i32* %19, i32 %22, i32* %11, %struct.disk_device_details* %13)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %116

29:                                               ; preds = %3
  %30 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %31 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %30, i32 0, i32 3
  %32 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %33 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dm_btree_lookup(i32* %31, i32 %34, i32* %10, %struct.disk_device_details* %14)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %116

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.disk_device_details, %struct.disk_device_details* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le64_to_cpu(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %45 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dm_tm_inc(i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @cpu_to_le64(i32 %49)
  %51 = getelementptr inbounds %struct.disk_device_details, %struct.disk_device_details* %15, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.disk_device_details* %14 to i8*
  %53 = bitcast %struct.disk_device_details* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = call i32 @__dm_bless_for_disk(%struct.disk_device_details* %14)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %57 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %56, i32 0, i32 3
  %58 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %59 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %62 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %61, i32 0, i32 2
  %63 = call i32 @dm_btree_insert(i32* %57, i32 %60, i32* %10, %struct.disk_device_details* %14, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %40
  %67 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %68 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dm_tm_dec(i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %116

73:                                               ; preds = %40
  %74 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %75 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @__open_device(%struct.dm_pool_metadata* %78, i32 %79, i32 1, %struct.dm_thin_device** %12)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %98

84:                                               ; preds = %73
  %85 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %86 = load %struct.dm_thin_device*, %struct.dm_thin_device** %12, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %89 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @__set_snapshot_details(%struct.dm_pool_metadata* %85, %struct.dm_thin_device* %86, i32 %87, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.dm_thin_device*, %struct.dm_thin_device** %12, align 8
  %93 = call i32 @__close_device(%struct.dm_thin_device* %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %98

97:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %116

98:                                               ; preds = %96, %83
  %99 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %100 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %99, i32 0, i32 3
  %101 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %102 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %105 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %104, i32 0, i32 2
  %106 = call i32 @dm_btree_remove(i32* %100, i32 %103, i32* %10, i32* %105)
  %107 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %108 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %107, i32 0, i32 1
  %109 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %110 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %113 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %112, i32 0, i32 0
  %114 = call i32 @dm_btree_remove(i32* %108, i32 %111, i32* %10, i32* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %98, %97, %66, %38, %26
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @dm_btree_lookup(i32*, i32, i32*, %struct.disk_device_details*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dm_tm_inc(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__dm_bless_for_disk(%struct.disk_device_details*) #1

declare dso_local i32 @dm_btree_insert(i32*, i32, i32*, %struct.disk_device_details*, i32*) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @__open_device(%struct.dm_pool_metadata*, i32, i32, %struct.dm_thin_device**) #1

declare dso_local i32 @__set_snapshot_details(%struct.dm_pool_metadata*, %struct.dm_thin_device*, i32, i32) #1

declare dso_local i32 @__close_device(%struct.dm_thin_device*) #1

declare dso_local i32 @dm_btree_remove(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
