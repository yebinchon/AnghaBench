; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_numa.c_of_get_assoc_arrays.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_numa.c_of_get_assoc_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.assoc_arrays = type { i32, i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"ibm,associativity-lookup-arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.assoc_arrays*)* @of_get_assoc_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_get_assoc_arrays(%struct.device_node* %0, %struct.assoc_arrays* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.assoc_arrays*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.assoc_arrays* %1, %struct.assoc_arrays** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32* @of_get_property(%struct.device_node* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %46

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load %struct.assoc_arrays*, %struct.assoc_arrays** %5, align 8
  %22 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load %struct.assoc_arrays*, %struct.assoc_arrays** %5, align 8
  %27 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.assoc_arrays*, %struct.assoc_arrays** %5, align 8
  %31 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.assoc_arrays*, %struct.assoc_arrays** %5, align 8
  %34 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = icmp ult i64 %29, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %46

42:                                               ; preds = %17
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.assoc_arrays*, %struct.assoc_arrays** %5, align 8
  %45 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %41, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
