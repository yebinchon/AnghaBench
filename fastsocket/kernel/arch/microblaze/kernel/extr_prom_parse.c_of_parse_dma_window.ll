; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c_of_parse_dma_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c_of_parse_dma_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ibm,#dma-address-cells\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ibm,#dma-size-cells\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_parse_dma_window(%struct.device_node* %0, i8* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %11, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %17, i64** %11, align 8
  %18 = load i64, i64* %16, align 8
  %19 = load i64*, i64** %8, align 8
  store i64 %18, i64* %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i8* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i8* @of_get_property(%struct.device_node* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %26, i8** %13, align 8
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %13, align 8
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 8
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i64 @of_n_addr_cells(%struct.device_node* %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %33, %30 ], [ %36, %34 ]
  store i64 %38, i64* %12, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @of_read_number(i64* %39, i64 %40)
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %43
  store i64* %45, i64** %11, align 8
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i8* @of_get_property(%struct.device_node* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i8*, i8** %13, align 8
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %52, align 8
  br label %57

54:                                               ; preds = %37
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = call i64 @of_n_size_cells(%struct.device_node* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %53, %50 ], [ %56, %54 ]
  store i64 %58, i64* %12, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @of_read_number(i64* %59, i64 %60)
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  ret void
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_n_addr_cells(%struct.device_node*) #1

declare dso_local i64 @of_read_number(i64*, i64) #1

declare dso_local i64 @of_n_size_cells(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
