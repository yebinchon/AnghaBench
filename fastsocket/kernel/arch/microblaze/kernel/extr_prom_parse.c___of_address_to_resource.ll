; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c___of_address_to_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c___of_address_to_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.resource = type { i64, i32, i32, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32*, i64, i32, %struct.resource*)* @__of_address_to_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__of_address_to_resource(%struct.device_node* %0, i32* %1, i64 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @IORESOURCE_IO, align 4
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %75

23:                                               ; preds = %5
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @of_translate_address(%struct.device_node* %24, i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @OF_BAD_ADDR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %75

33:                                               ; preds = %23
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i32 @memset(%struct.resource* %34, i32 0, i32 24)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @IORESOURCE_IO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  store i64 -1, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %75

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.resource*, %struct.resource** %11, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = sub i64 %52, 1
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  br label %66

56:                                               ; preds = %33
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.resource*, %struct.resource** %11, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.resource*, %struct.resource** %11, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %46
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.resource*, %struct.resource** %11, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.device_node*, %struct.device_node** %7, align 8
  %71 = getelementptr inbounds %struct.device_node, %struct.device_node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.resource*, %struct.resource** %11, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %43, %30, %20
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @of_translate_address(%struct.device_node*, i32*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
