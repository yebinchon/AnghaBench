; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @of_get_mac_address(%struct.device_node* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call %struct.property* @of_find_property(%struct.device_node* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %6, %struct.property** %4, align 8
  %7 = load %struct.property*, %struct.property** %4, align 8
  %8 = icmp ne %struct.property* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.property*, %struct.property** %4, align 8
  %11 = getelementptr inbounds %struct.property, %struct.property* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.property*, %struct.property** %4, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @is_valid_ether_addr(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.property*, %struct.property** %4, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %65

24:                                               ; preds = %14, %9, %1
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = call %struct.property* @of_find_property(%struct.device_node* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.property* %26, %struct.property** %4, align 8
  %27 = load %struct.property*, %struct.property** %4, align 8
  %28 = icmp ne %struct.property* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.property*, %struct.property** %4, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.property*, %struct.property** %4, align 8
  %36 = getelementptr inbounds %struct.property, %struct.property* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @is_valid_ether_addr(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.property*, %struct.property** %4, align 8
  %42 = getelementptr inbounds %struct.property, %struct.property* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %2, align 8
  br label %65

44:                                               ; preds = %34, %29, %24
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  %46 = call %struct.property* @of_find_property(%struct.device_node* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.property* %46, %struct.property** %4, align 8
  %47 = load %struct.property*, %struct.property** %4, align 8
  %48 = icmp ne %struct.property* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.property*, %struct.property** %4, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.property*, %struct.property** %4, align 8
  %56 = getelementptr inbounds %struct.property, %struct.property* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @is_valid_ether_addr(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.property*, %struct.property** %4, align 8
  %62 = getelementptr inbounds %struct.property, %struct.property* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %2, align 8
  br label %65

64:                                               ; preds = %54, %49, %44
  store i8* null, i8** %2, align 8
  br label %65

65:                                               ; preds = %64, %60, %40, %20
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
