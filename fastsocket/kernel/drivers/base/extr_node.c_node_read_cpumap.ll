; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_node_read_cpumap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_node_read_cpumap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cpumask = type { i32 }

@NR_CPUS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, i32, i8*)* @node_read_cpumap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_read_cpumap(%struct.sys_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sys_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.sys_device*, %struct.sys_device** %4, align 8
  %11 = call %struct.node* @to_node(%struct.sys_device* %10)
  store %struct.node* %11, %struct.node** %7, align 8
  %12 = load %struct.node*, %struct.node** %7, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cpumask* @cpumask_of_node(i32 %15)
  store %struct.cpumask* %16, %struct.cpumask** %8, align 8
  %17 = load i32, i32* @NR_CPUS, align 4
  %18 = sdiv i32 %17, 32
  %19 = mul nsw i32 %18, 9
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sub nsw i32 %29, 2
  %31 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %32 = call i32 @cpulist_scnprintf(i8* %28, i32 %30, %struct.cpumask* %31)
  br label %39

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sub nsw i32 %35, 2
  %37 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %38 = call i32 @cpumask_scnprintf(i8* %34, i32 %36, %struct.cpumask* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %32, %27 ], [ %38, %33 ]
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 10, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.node* @to_node(%struct.sys_device*) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @cpulist_scnprintf(i8*, i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_scnprintf(i8*, i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
