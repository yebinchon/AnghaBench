; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_create_attr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_create_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.attribute_set_obj = type { %struct.attribute_set, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute_set* (i32, i8*)* @create_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute_set* @create_attr_set(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.attribute_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.attribute_set_obj*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.attribute_set* null, %struct.attribute_set** %3, align 8
  br label %39

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = add i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.attribute_set_obj* @kzalloc(i32 %15, i32 %16)
  store %struct.attribute_set_obj* %17, %struct.attribute_set_obj** %6, align 8
  %18 = load %struct.attribute_set_obj*, %struct.attribute_set_obj** %6, align 8
  %19 = icmp ne %struct.attribute_set_obj* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  store %struct.attribute_set* null, %struct.attribute_set** %3, align 8
  br label %39

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.attribute_set_obj*, %struct.attribute_set_obj** %6, align 8
  %24 = getelementptr inbounds %struct.attribute_set_obj, %struct.attribute_set_obj* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.attribute_set_obj*, %struct.attribute_set_obj** %6, align 8
  %27 = getelementptr inbounds %struct.attribute_set_obj, %struct.attribute_set_obj* %26, i32 0, i32 1
  %28 = load %struct.attribute_set_obj*, %struct.attribute_set_obj** %6, align 8
  %29 = getelementptr inbounds %struct.attribute_set_obj, %struct.attribute_set_obj* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* %27, i32** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.attribute_set_obj*, %struct.attribute_set_obj** %6, align 8
  %34 = getelementptr inbounds %struct.attribute_set_obj, %struct.attribute_set_obj* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.attribute_set, %struct.attribute_set* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %32, i8** %36, align 8
  %37 = load %struct.attribute_set_obj*, %struct.attribute_set_obj** %6, align 8
  %38 = getelementptr inbounds %struct.attribute_set_obj, %struct.attribute_set_obj* %37, i32 0, i32 0
  store %struct.attribute_set* %38, %struct.attribute_set** %3, align 8
  br label %39

39:                                               ; preds = %21, %20, %9
  %40 = load %struct.attribute_set*, %struct.attribute_set** %3, align 8
  ret %struct.attribute_set* %40
}

declare dso_local %struct.attribute_set_obj* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
