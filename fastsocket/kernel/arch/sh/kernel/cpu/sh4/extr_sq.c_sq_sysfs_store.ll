; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_sysfs_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_sysfs_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.sq_sysfs_attr = type { i32 (i8*, i64)* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @sq_sysfs_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_sysfs_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sq_sysfs_attr*, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.attribute*, %struct.attribute** %7, align 8
  %12 = call %struct.sq_sysfs_attr* @to_sq_sysfs_attr(%struct.attribute* %11)
  store %struct.sq_sysfs_attr* %12, %struct.sq_sysfs_attr** %10, align 8
  %13 = load %struct.sq_sysfs_attr*, %struct.sq_sysfs_attr** %10, align 8
  %14 = getelementptr inbounds %struct.sq_sysfs_attr, %struct.sq_sysfs_attr* %13, i32 0, i32 0
  %15 = load i32 (i8*, i64)*, i32 (i8*, i64)** %14, align 8
  %16 = call i64 @likely(i32 (i8*, i64)* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.sq_sysfs_attr*, %struct.sq_sysfs_attr** %10, align 8
  %20 = getelementptr inbounds %struct.sq_sysfs_attr, %struct.sq_sysfs_attr* %19, i32 0, i32 0
  %21 = load i32 (i8*, i64)*, i32 (i8*, i64)** %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 %21(i8* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.sq_sysfs_attr* @to_sq_sysfs_attr(%struct.attribute*) #1

declare dso_local i64 @likely(i32 (i8*, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
