; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_pfunc_base.c_macio_gpio_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_pfunc_base.c_macio_gpio_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_chip = type { %struct.device_node*, i64 }
%struct.device_node = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Installing GPIO functions for macio %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@macio_gpio_handlers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Calling initial GPIO functions for macio %s\0A\00", align 1
@PMF_FLAGS_ON_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macio_chip*)* @macio_gpio_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macio_gpio_init_one(%struct.macio_chip* %0) #0 {
  %2 = alloca %struct.macio_chip*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.macio_chip* %0, %struct.macio_chip** %2, align 8
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %9 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call %struct.device_node* @of_get_next_child(%struct.device_node* %10, %struct.device_node* %11)
  store %struct.device_node* %12, %struct.device_node** %3, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = getelementptr inbounds %struct.device_node, %struct.device_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %7

22:                                               ; preds = %20, %7
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = icmp eq %struct.device_node* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %78

26:                                               ; preds = %22
  %27 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %28 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %33

33:                                               ; preds = %52, %43, %26
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call %struct.device_node* @of_get_next_child(%struct.device_node* %34, %struct.device_node* %35)
  store %struct.device_node* %36, %struct.device_node** %4, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i64* @of_get_property(%struct.device_node* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i64* %40, i64** %5, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %33

44:                                               ; preds = %38
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %47, 80
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 80
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %54 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @pmf_register_driver(%struct.device_node* %58, i32* @macio_gpio_handlers, i8* %60)
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.macio_chip*, %struct.macio_chip** %2, align 8
  %64 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %63, i32 0, i32 0
  %65 = load %struct.device_node*, %struct.device_node** %64, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %69

69:                                               ; preds = %74, %62
  %70 = load %struct.device_node*, %struct.device_node** %3, align 8
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = call %struct.device_node* @of_get_next_child(%struct.device_node* %70, %struct.device_node* %71)
  store %struct.device_node* %72, %struct.device_node** %4, align 8
  %73 = icmp ne %struct.device_node* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = load i32, i32* @PMF_FLAGS_ON_INIT, align 4
  %77 = call i32 @pmf_do_functions(%struct.device_node* %75, i32* null, i32 0, i32 %76, i32* null)
  br label %69

78:                                               ; preds = %25, %69
  ret void
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pmf_register_driver(%struct.device_node*, i32*, i8*) #1

declare dso_local i32 @pmf_do_functions(%struct.device_node*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
