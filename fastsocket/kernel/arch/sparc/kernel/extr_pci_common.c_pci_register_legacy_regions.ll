; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_pci_register_legacy_regions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_pci_register_legacy_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i8*, i8*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Video RAM area\00", align 1
@IORESOURCE_BUSY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"System ROM\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Video ROM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource*, %struct.resource*)* @pci_register_legacy_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_register_legacy_regions(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.resource* @kzalloc(i32 32, i32 %6)
  store %struct.resource* %7, %struct.resource** %5, align 8
  %8 = load %struct.resource*, %struct.resource** %5, align 8
  %9 = icmp ne %struct.resource* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %84

11:                                               ; preds = %2
  %12 = load %struct.resource*, %struct.resource** %5, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.resource*, %struct.resource** %4, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 655360
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.resource*, %struct.resource** %5, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 131071
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load i8*, i8** @IORESOURCE_BUSY, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @request_resource(%struct.resource* %29, %struct.resource* %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.resource* @kzalloc(i32 32, i32 %32)
  store %struct.resource* %33, %struct.resource** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %11
  br label %84

37:                                               ; preds = %11
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 983040
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 65535
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** @IORESOURCE_BUSY, align 8
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = call i32 @request_resource(%struct.resource* %55, %struct.resource* %56)
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.resource* @kzalloc(i32 32, i32 %58)
  store %struct.resource* %59, %struct.resource** %5, align 8
  %60 = load %struct.resource*, %struct.resource** %5, align 8
  %61 = icmp ne %struct.resource* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %37
  br label %84

63:                                               ; preds = %37
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.resource*, %struct.resource** %4, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 786432
  %70 = load %struct.resource*, %struct.resource** %5, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.resource*, %struct.resource** %5, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 32767
  %76 = load %struct.resource*, %struct.resource** %5, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load i8*, i8** @IORESOURCE_BUSY, align 8
  %79 = load %struct.resource*, %struct.resource** %5, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.resource*, %struct.resource** %4, align 8
  %82 = load %struct.resource*, %struct.resource** %5, align 8
  %83 = call i32 @request_resource(%struct.resource* %81, %struct.resource* %82)
  br label %84

84:                                               ; preds = %63, %62, %36, %10
  ret void
}

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
