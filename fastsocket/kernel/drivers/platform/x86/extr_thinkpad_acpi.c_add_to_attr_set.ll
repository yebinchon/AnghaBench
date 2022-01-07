; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_add_to_attr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_add_to_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_set = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.attribute** }
%struct.attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_set*, %struct.attribute*)* @add_to_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_attr_set(%struct.attribute_set* %0, %struct.attribute* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_set*, align 8
  %5 = alloca %struct.attribute*, align 8
  store %struct.attribute_set* %0, %struct.attribute_set** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  %6 = load %struct.attribute_set*, %struct.attribute_set** %4, align 8
  %7 = icmp ne %struct.attribute_set* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.attribute*, %struct.attribute** %5, align 8
  %10 = icmp ne %struct.attribute* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %8
  %15 = load %struct.attribute_set*, %struct.attribute_set** %4, align 8
  %16 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.attribute_set*, %struct.attribute_set** %4, align 8
  %19 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %14
  %26 = load %struct.attribute*, %struct.attribute** %5, align 8
  %27 = load %struct.attribute_set*, %struct.attribute_set** %4, align 8
  %28 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.attribute**, %struct.attribute*** %29, align 8
  %31 = load %struct.attribute_set*, %struct.attribute_set** %4, align 8
  %32 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.attribute*, %struct.attribute** %30, i64 %33
  store %struct.attribute* %26, %struct.attribute** %34, align 8
  %35 = load %struct.attribute_set*, %struct.attribute_set** %4, align 8
  %36 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %22, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
