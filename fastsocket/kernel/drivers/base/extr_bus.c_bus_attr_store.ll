; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_attr_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.bus_attribute = type { i32 (i32, i8*, i64)* }
%struct.bus_type_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @bus_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_attr_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bus_attribute*, align 8
  %10 = alloca %struct.bus_type_private*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.attribute*, %struct.attribute** %6, align 8
  %13 = call %struct.bus_attribute* @to_bus_attr(%struct.attribute* %12)
  store %struct.bus_attribute* %13, %struct.bus_attribute** %9, align 8
  %14 = load %struct.kobject*, %struct.kobject** %5, align 8
  %15 = call %struct.bus_type_private* @to_bus(%struct.kobject* %14)
  store %struct.bus_type_private* %15, %struct.bus_type_private** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.bus_attribute*, %struct.bus_attribute** %9, align 8
  %17 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %16, i32 0, i32 0
  %18 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %17, align 8
  %19 = icmp ne i32 (i32, i8*, i64)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.bus_attribute*, %struct.bus_attribute** %9, align 8
  %22 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %21, i32 0, i32 0
  %23 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %22, align 8
  %24 = load %struct.bus_type_private*, %struct.bus_type_private** %10, align 8
  %25 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 %23(i32 %26, i8* %27, i64 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %20, %4
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local %struct.bus_attribute* @to_bus_attr(%struct.attribute*) #1

declare dso_local %struct.bus_type_private* @to_bus(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
