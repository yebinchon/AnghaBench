; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_get_qe_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_get_qe_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@qebase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fsl,qe\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"qe\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_qe_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @qebase, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @qebase, align 4
  store i32 %8, i32* %1, align 4
  br label %37

9:                                                ; preds = %0
  %10 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %10, %struct.device_node** %2, align 8
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %14, %struct.device_node** %2, align 8
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @qebase, align 4
  store i32 %18, i32* %1, align 4
  br label %37

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.device_node*, %struct.device_node** %2, align 8
  %22 = call i32* @of_get_property(%struct.device_node* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.device_node*, %struct.device_node** %2, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @of_translate_address(%struct.device_node* %30, i32* %31)
  store i32 %32, i32* @qebase, align 4
  br label %33

33:                                               ; preds = %29, %25, %20
  %34 = load %struct.device_node*, %struct.device_node** %2, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* @qebase, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %33, %17, %7
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_translate_address(%struct.device_node*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
