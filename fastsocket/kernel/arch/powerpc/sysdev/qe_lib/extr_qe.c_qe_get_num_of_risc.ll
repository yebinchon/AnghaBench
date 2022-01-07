; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_qe_get_num_of_risc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_qe_get_num_of_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"fsl,qe\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"qe\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"fsl,qe-num-riscs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_get_num_of_risc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 0, i32* %4, align 4
  %6 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %6, %struct.device_node** %2, align 8
  %7 = load %struct.device_node*, %struct.device_node** %2, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  %10 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %10, %struct.device_node** %2, align 8
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %1, align 4
  br label %32

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %0
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = call i32* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21, %16
  %29 = load %struct.device_node*, %struct.device_node** %2, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %28, %13
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
