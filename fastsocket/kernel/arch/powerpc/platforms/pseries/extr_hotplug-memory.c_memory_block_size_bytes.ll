; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_memory_block_size_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_memory_block_size_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"/ibm,dynamic-reconfiguration-memory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ibm,lmb-size\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/memory@0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/memory@%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_block_size_bytes() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i8], align 16
  store i32 0, i32* %2, align 4
  %7 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %1, align 8
  %8 = load %struct.device_node*, %struct.device_node** %1, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %0
  %11 = load %struct.device_node*, %struct.device_node** %1, align 8
  %12 = call i8* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %3, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i64 [ %18, %16 ], [ 0, %19 ]
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  %23 = load %struct.device_node*, %struct.device_node** %1, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  br label %72

25:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %26 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %26, %struct.device_node** %1, align 8
  %27 = load %struct.device_node*, %struct.device_node** %1, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.device_node*, %struct.device_node** %1, align 8
  %31 = call i8* @of_get_property(%struct.device_node* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  store i32 %41, i32* %4, align 4
  %42 = load %struct.device_node*, %struct.device_node** %1, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  br label %44

44:                                               ; preds = %40, %25
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %52 = call %struct.device_node* @of_find_node_by_path(i8* %51)
  store %struct.device_node* %52, %struct.device_node** %1, align 8
  %53 = load %struct.device_node*, %struct.device_node** %1, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.device_node*, %struct.device_node** %1, align 8
  %57 = call i8* @of_get_property(%struct.device_node* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  store i32 %67, i32* %2, align 4
  %68 = load %struct.device_node*, %struct.device_node** %1, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  br label %70

70:                                               ; preds = %66, %47
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
