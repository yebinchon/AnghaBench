; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_pseries_energy.c_check_for_h_best_energy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_pseries_energy.c_check_for_h_best_energy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/rtas\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ibm,hypertas-functions\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"hcall-best-energy-1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_for_h_best_energy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_h_best_energy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device_node* null, %struct.device_node** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %2, align 8
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %44

11:                                               ; preds = %0
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = call i8* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = call i32 @of_node_put(%struct.device_node* %17)
  store i32 0, i32* %1, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %34, %19
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = icmp ult i8* %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 19)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %40

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %36, 1
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %4, align 8
  br label %21

40:                                               ; preds = %32, %21
  %41 = load %struct.device_node*, %struct.device_node** %2, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %40, %16, %10
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
