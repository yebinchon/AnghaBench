; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_of_device_common.c_of_bus_sbus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_of_device_common.c_of_bus_sbus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"sbus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sbi\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_bus_sbus_match(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %5, %struct.device_node** %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @strcmp(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @strcmp(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %9
  store i32 1, i32* %2, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32* @of_find_property(%struct.device_node* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %31

27:                                               ; preds = %22
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 0
  %30 = load %struct.device_node*, %struct.device_node** %29, align 8
  store %struct.device_node* %30, %struct.device_node** %4, align 8
  br label %6

31:                                               ; preds = %26, %6
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32* @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
