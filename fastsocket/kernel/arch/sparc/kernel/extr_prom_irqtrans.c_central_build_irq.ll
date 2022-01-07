; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_prom_irqtrans.c_central_build_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_prom_irqtrans.c_central_build_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_device = type { %struct.resource* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clock-board\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32, i8*)* @central_build_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @central_build_irq(%struct.device_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.device_node*
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = call %struct.of_device* @of_find_device_by_node(%struct.device_node* %16)
  store %struct.of_device* %17, %struct.of_device** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.of_device*, %struct.of_device** %9, align 8
  %25 = getelementptr inbounds %struct.of_device, %struct.of_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %25, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i64 5
  store %struct.resource* %27, %struct.resource** %10, align 8
  br label %54

28:                                               ; preds = %3
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.of_device*, %struct.of_device** %9, align 8
  %36 = getelementptr inbounds %struct.of_device, %struct.of_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %36, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i64 4
  store %struct.resource* %38, %struct.resource** %10, align 8
  br label %53

39:                                               ; preds = %28
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = getelementptr inbounds %struct.device_node, %struct.device_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.of_device*, %struct.of_device** %9, align 8
  %47 = getelementptr inbounds %struct.of_device, %struct.of_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %47, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i64 3
  store %struct.resource* %49, %struct.resource** %10, align 8
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.resource*, %struct.resource** %10, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 0
  store i64 %59, i64* %11, align 8
  %60 = load %struct.resource*, %struct.resource** %10, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 16
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @upa_writel(i32 0, i64 %65)
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @upa_readl(i64 %67)
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @upa_readl(i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %71, 2147483647
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @upa_writel(i32 %73, i64 %74)
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @build_irq(i32 0, i64 %76, i64 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %54, %50
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.of_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @upa_writel(i32, i64) #1

declare dso_local i32 @upa_readl(i64) #1

declare dso_local i32 @build_irq(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
