; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c___of_address_to_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c___of_address_to_resource.c"
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
  br label %77

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
  br label %77

33:                                               ; preds = %23
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i32 @memset(%struct.resource* %34, i32 0, i32 24)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @IORESOURCE_IO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @pci_address_to_pio(i64 %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %77

48:                                               ; preds = %40
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.resource*, %struct.resource** %11, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %54, 1
  %56 = load %struct.resource*, %struct.resource** %11, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  br label %68

58:                                               ; preds = %33
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.resource*, %struct.resource** %11, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %62, %63
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.resource*, %struct.resource** %11, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %58, %48
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.resource*, %struct.resource** %11, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.device_node*, %struct.device_node** %7, align 8
  %73 = getelementptr inbounds %struct.device_node, %struct.device_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.resource*, %struct.resource** %11, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %68, %45, %30, %20
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @of_translate_address(%struct.device_node*, i32*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i64 @pci_address_to_pio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
