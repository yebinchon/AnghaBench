; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_slot.c_make_slot_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_slot.c_make_slot_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pci_slots_kset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @make_slot_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_slot_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kobject*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kstrdup(i8* %9, i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %54

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 2
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %46, %15
  %20 = load i32, i32* @pci_slots_kset, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.kobject* @kset_find_obj(i32 %20, i8* %21)
  store %struct.kobject* %22, %struct.kobject** %8, align 8
  %23 = load %struct.kobject*, %struct.kobject** %8, align 8
  %24 = icmp ne %struct.kobject* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.kobject*, %struct.kobject** %8, align 8
  %28 = call i32 @kobject_put(%struct.kobject* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 10
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %52

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49)
  br label %19

52:                                               ; preds = %44, %25
  %53 = load i8*, i8** %4, align 8
  store i8* %53, i8** %2, align 8
  br label %54

54:                                               ; preds = %52, %14
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.kobject* @kset_find_obj(i32, i8*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
