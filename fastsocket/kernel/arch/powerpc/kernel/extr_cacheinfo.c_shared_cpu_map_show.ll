; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_cacheinfo.c_shared_cpu_map_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_cacheinfo.c_shared_cpu_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.cache_index_dir = type { %struct.cache* }
%struct.cache = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @shared_cpu_map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shared_cpu_map_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cache_index_dir*, align 8
  %8 = alloca %struct.cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = call %struct.cache_index_dir* @kobj_to_cache_index_dir(%struct.kobject* %11)
  store %struct.cache_index_dir* %12, %struct.cache_index_dir** %7, align 8
  %13 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %14 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %13, i32 0, i32 0
  %15 = load %struct.cache*, %struct.cache** %14, align 8
  store %struct.cache* %15, %struct.cache** %8, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.cache*, %struct.cache** %8, align 8
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 0
  %25 = call i32 @cpumask_scnprintf(i8* %21, i32 %22, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 10, i8* %30, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %20, %3
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local %struct.cache_index_dir* @kobj_to_cache_index_dir(%struct.kobject*) #1

declare dso_local i32 @cpumask_scnprintf(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
