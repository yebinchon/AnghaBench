; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_get_stat_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_get_stat_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_group = type { i32 }
%struct.cgroup_map_cb = type { i32 (%struct.cgroup_map_cb*, i8*, i64)* }

@MAX_KEY_LEN = common dso_local global i32 0, align 4
@BLKIO_STAT_CPU_SECTORS = common dso_local global i32 0, align 4
@BLKIO_STAT_READ = common dso_local global i32 0, align 4
@BLKIO_STAT_TOTAL = common dso_local global i32 0, align 4
@BLKIO_STAT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blkio_group*, %struct.cgroup_map_cb*, i32, i32)* @blkio_get_stat_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blkio_get_stat_cpu(%struct.blkio_group* %0, %struct.cgroup_map_cb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.blkio_group*, align 8
  %7 = alloca %struct.cgroup_map_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.blkio_group* %0, %struct.blkio_group** %6, align 8
  store %struct.cgroup_map_cb* %1, %struct.cgroup_map_cb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MAX_KEY_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BLKIO_STAT_CPU_SECTORS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @blkio_read_stat_cpu(%struct.blkio_group* %24, i32 %25, i32 0)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* @MAX_KEY_LEN, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @blkio_fill_stat(i8* %19, i32 %28, i64 %29, %struct.cgroup_map_cb* %30, i32 %31)
  store i64 %32, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %78

33:                                               ; preds = %4
  %34 = load i32, i32* @BLKIO_STAT_READ, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %54, %33
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @BLKIO_STAT_TOTAL, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MAX_KEY_LEN, align 4
  %43 = call i32 @blkio_get_key_name(i32 %40, i32 %41, i8* %19, i32 %42, i32 0)
  %44 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @blkio_read_stat_cpu(%struct.blkio_group* %44, i32 %45, i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %49 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %48, i32 0, i32 0
  %50 = load i32 (%struct.cgroup_map_cb*, i8*, i64)*, i32 (%struct.cgroup_map_cb*, i8*, i64)** %49, align 8
  %51 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 %50(%struct.cgroup_map_cb* %51, i8* %19, i64 %52)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %14, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @BLKIO_STAT_READ, align 4
  %61 = call i64 @blkio_read_stat_cpu(%struct.blkio_group* %58, i32 %59, i32 %60)
  %62 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @BLKIO_STAT_WRITE, align 4
  %65 = call i64 @blkio_read_stat_cpu(%struct.blkio_group* %62, i32 %63, i32 %64)
  %66 = add nsw i64 %61, %65
  store i64 %66, i64* %10, align 8
  %67 = load i32, i32* @BLKIO_STAT_TOTAL, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MAX_KEY_LEN, align 4
  %70 = call i32 @blkio_get_key_name(i32 %67, i32 %68, i8* %19, i32 %69, i32 0)
  %71 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %72 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %71, i32 0, i32 0
  %73 = load i32 (%struct.cgroup_map_cb*, i8*, i64)*, i32 (%struct.cgroup_map_cb*, i8*, i64)** %72, align 8
  %74 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 %73(%struct.cgroup_map_cb* %74, i8* %19, i64 %75)
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %78

78:                                               ; preds = %57, %23
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @blkio_read_stat_cpu(%struct.blkio_group*, i32, i32) #2

declare dso_local i64 @blkio_fill_stat(i8*, i32, i64, %struct.cgroup_map_cb*, i32) #2

declare dso_local i32 @blkio_get_key_name(i32, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
