; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_macros.c_simple_child_attr_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_macros.c_simple_child_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.configfs_attribute = type { i32 }
%struct.simple_child = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, %struct.configfs_attribute*, i8*, i64)* @simple_child_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simple_child_attr_store(%struct.config_item* %0, %struct.configfs_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.configfs_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.simple_child*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %6, align 8
  store %struct.configfs_attribute* %1, %struct.configfs_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.config_item*, %struct.config_item** %6, align 8
  %14 = call %struct.simple_child* @to_simple_child(%struct.config_item* %13)
  store %struct.simple_child* %14, %struct.simple_child** %10, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call i64 @simple_strtoul(i8* %16, i8** %12, i32 10)
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i8*, i8** %12, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i8*, i8** %12, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %45

33:                                               ; preds = %25, %20
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @INT_MAX, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* @ERANGE, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %45

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.simple_child*, %struct.simple_child** %10, align 8
  %43 = getelementptr inbounds %struct.simple_child, %struct.simple_child* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %40, %37, %30
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local %struct.simple_child* @to_simple_child(%struct.config_item*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
