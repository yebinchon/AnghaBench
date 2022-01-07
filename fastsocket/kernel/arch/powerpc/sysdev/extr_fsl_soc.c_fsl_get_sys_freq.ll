; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_soc.c_fsl_get_sys_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_soc.c_fsl_get_sys_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@sysfreq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_get_sys_freq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @sysfreq, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @sysfreq, align 4
  store i32 %8, i32* %1, align 4
  br label %44

9:                                                ; preds = %0
  %10 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %10, %struct.device_node** %2, align 8
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %44

14:                                               ; preds = %9
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = call i32* @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %19, %14
  %28 = load %struct.device_node*, %struct.device_node** %2, align 8
  %29 = call i32* @of_get_property(%struct.device_node* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @sysfreq, align 4
  br label %40

40:                                               ; preds = %37, %33, %30
  %41 = load %struct.device_node*, %struct.device_node** %2, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  %43 = load i32, i32* @sysfreq, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %40, %13, %7
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
