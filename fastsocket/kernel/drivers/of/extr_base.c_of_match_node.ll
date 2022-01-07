; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_match_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_match_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { i64*, i64*, i64* }
%struct.device_node = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.of_device_id*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.of_device_id* %0, %struct.of_device_id** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  br label %7

7:                                                ; preds = %104, %2
  %8 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %9 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %21, %14, %7
  %29 = phi i1 [ true, %14 ], [ true, %7 ], [ %27, %21 ]
  br i1 %29, label %30, label %107

30:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  %31 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = getelementptr inbounds %struct.device_node, %struct.device_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %44 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = getelementptr inbounds %struct.device_node, %struct.device_node* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @strcmp(i64* %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %42, %37
  %53 = phi i1 [ false, %37 ], [ %51, %42 ]
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %30
  %58 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %59 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %71 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = getelementptr inbounds %struct.device_node, %struct.device_node* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @strcmp(i64* %72, i64 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %69, %64
  %80 = phi i1 [ false, %64 ], [ %78, %69 ]
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %57
  %85 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %86 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %94 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = call i32 @of_device_is_compatible(%struct.device_node* %92, i64* %95)
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %91, %84
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  store %struct.of_device_id* %103, %struct.of_device_id** %3, align 8
  br label %108

104:                                              ; preds = %99
  %105 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %106 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %105, i32 1
  store %struct.of_device_id* %106, %struct.of_device_id** %4, align 8
  br label %7

107:                                              ; preds = %28
  store %struct.of_device_id* null, %struct.of_device_id** %3, align 8
  br label %108

108:                                              ; preds = %107, %102
  %109 = load %struct.of_device_id*, %struct.of_device_id** %3, align 8
  ret %struct.of_device_id* %109
}

declare dso_local i32 @strcmp(i64*, i64) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
