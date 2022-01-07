; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_do_device_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_do_device_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, i32, i8*, i8* }
%struct.vio_resource = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"/vdevice/%s@%08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"linux,unit_address\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"linux,vio_rsrcname\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"linux,vio_type\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"linux,vio_model\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*, i8*, i32, i32, i8*, i8*, %struct.vio_resource*)* @do_device_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @do_device_node(%struct.device_node* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, %struct.vio_resource* %6) #0 {
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.vio_resource*, align 8
  %16 = alloca %struct.device_node*, align 8
  %17 = alloca [32 x i8], align 16
  store %struct.device_node* %0, %struct.device_node** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.vio_resource* %6, %struct.vio_resource** %15, align 8
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @snprintf(i8* %18, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %23 = load %struct.device_node*, %struct.device_node** %9, align 8
  %24 = call %struct.device_node* @new_node(i8* %22, %struct.device_node* %23)
  store %struct.device_node* %24, %struct.device_node** %16, align 8
  %25 = load %struct.device_node*, %struct.device_node** %16, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store %struct.device_node* null, %struct.device_node** %8, align 8
  br label %93

28:                                               ; preds = %7
  %29 = load %struct.device_node*, %struct.device_node** %16, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @add_string_property(%struct.device_node* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.device_node*, %struct.device_node** %16, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @add_string_property(%struct.device_node* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.device_node*, %struct.device_node** %16, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @add_string_property(%struct.device_node* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.device_node*, %struct.device_node** %16, align 8
  %45 = call i32 @add_raw_property(%struct.device_node* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 4, i32* %11)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.device_node*, %struct.device_node** %16, align 8
  %49 = call i32 @add_raw_property(%struct.device_node* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* %12)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %43, %38, %33, %28
  br label %90

52:                                               ; preds = %47
  %53 = load %struct.vio_resource*, %struct.vio_resource** %15, align 8
  %54 = icmp ne %struct.vio_resource* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load %struct.device_node*, %struct.device_node** %16, align 8
  %57 = load %struct.vio_resource*, %struct.vio_resource** %15, align 8
  %58 = getelementptr inbounds %struct.vio_resource, %struct.vio_resource* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @add_raw_property(%struct.device_node* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 8, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.device_node*, %struct.device_node** %16, align 8
  %64 = load %struct.vio_resource*, %struct.vio_resource** %15, align 8
  %65 = getelementptr inbounds %struct.vio_resource, %struct.vio_resource* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @add_raw_property(%struct.device_node* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 8, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.device_node*, %struct.device_node** %16, align 8
  %71 = load %struct.vio_resource*, %struct.vio_resource** %15, align 8
  %72 = getelementptr inbounds %struct.vio_resource, %struct.vio_resource* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @add_raw_property(%struct.device_node* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 8, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69, %62, %55
  br label %90

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.device_node*, %struct.device_node** %16, align 8
  %80 = call i8* @of_get_property(%struct.device_node* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %81 = load %struct.device_node*, %struct.device_node** %16, align 8
  %82 = getelementptr inbounds %struct.device_node, %struct.device_node* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.device_node*, %struct.device_node** %16, align 8
  %84 = call i8* @of_get_property(%struct.device_node* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %85 = load %struct.device_node*, %struct.device_node** %16, align 8
  %86 = getelementptr inbounds %struct.device_node, %struct.device_node* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.device_node*, %struct.device_node** %16, align 8
  %88 = call i32 @of_attach_node(%struct.device_node* %87)
  %89 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %89, %struct.device_node** %8, align 8
  br label %93

90:                                               ; preds = %76, %51
  %91 = load %struct.device_node*, %struct.device_node** %16, align 8
  %92 = call i32 @free_node(%struct.device_node* %91)
  store %struct.device_node* null, %struct.device_node** %8, align 8
  br label %93

93:                                               ; preds = %90, %78, %27
  %94 = load %struct.device_node*, %struct.device_node** %8, align 8
  ret %struct.device_node* %94
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local %struct.device_node* @new_node(i8*, %struct.device_node*) #1

declare dso_local i32 @add_string_property(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @add_raw_property(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_attach_node(%struct.device_node*) #1

declare dso_local i32 @free_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
