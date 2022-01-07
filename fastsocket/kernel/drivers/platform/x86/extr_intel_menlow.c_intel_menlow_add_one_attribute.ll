; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_add_one_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_add_one_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_menlow_attribute = type { i32, %struct.TYPE_4__, i32, %struct.device* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_menlow_attr_lock = common dso_local global i32 0, align 4
@intel_menlow_attr_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, %struct.device*, i32)* @intel_menlow_add_one_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_menlow_add_one_attribute(i8* %0, i32 %1, i8* %2, i8* %3, %struct.device* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_menlow_attribute*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.device* %4, %struct.device** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.intel_menlow_attribute* @kzalloc(i32 56, i32 %16)
  store %struct.intel_menlow_attribute* %17, %struct.intel_menlow_attribute** %14, align 8
  %18 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %19 = icmp ne %struct.intel_menlow_attribute* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %62

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %26 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %31 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %36 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %40 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.device*, %struct.device** %12, align 8
  %43 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %44 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %43, i32 0, i32 3
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %47 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %12, align 8
  %49 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %50 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %49, i32 0, i32 1
  %51 = call i32 @device_create_file(%struct.device* %48, %struct.TYPE_4__* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %23
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %7, align 4
  br label %62

56:                                               ; preds = %23
  %57 = call i32 @mutex_lock(i32* @intel_menlow_attr_lock)
  %58 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %14, align 8
  %59 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %58, i32 0, i32 0
  %60 = call i32 @list_add_tail(i32* %59, i32* @intel_menlow_attr_list)
  %61 = call i32 @mutex_unlock(i32* @intel_menlow_attr_lock)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %56, %54, %20
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.intel_menlow_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
