; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_hal_init_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_hal_init_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { %struct.cxio_hal_resource* }
%struct.cxio_hal_resource = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxio_hal_init_resource(%struct.cxio_rdev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxio_rdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cxio_hal_resource*, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.cxio_hal_resource* @kmalloc(i32 28, i32 %18)
  store %struct.cxio_hal_resource* %19, %struct.cxio_hal_resource** %17, align 8
  %20 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %21 = icmp ne %struct.cxio_hal_resource* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %83

25:                                               ; preds = %7
  %26 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %27 = load %struct.cxio_rdev*, %struct.cxio_rdev** %9, align 8
  %28 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %27, i32 0, i32 0
  store %struct.cxio_hal_resource* %26, %struct.cxio_hal_resource** %28, align 8
  %29 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %30 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %29, i32 0, i32 0
  %31 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %32 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %31, i32 0, i32 6
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @cxio_init_resource_fifo_random(i32* %30, i32* %32, i32 %33, i32 1, i32 0)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %80

38:                                               ; preds = %25
  %39 = load %struct.cxio_rdev*, %struct.cxio_rdev** %9, align 8
  %40 = call i32 @cxio_init_qpid_fifo(%struct.cxio_rdev* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %75

44:                                               ; preds = %38
  %45 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %46 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %45, i32 0, i32 2
  %47 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %48 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %47, i32 0, i32 5
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @cxio_init_resource_fifo(i32* %46, i32* %48, i32 %49, i32 1, i32 0)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %70

54:                                               ; preds = %44
  %55 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %56 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %55, i32 0, i32 4
  %57 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %58 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %57, i32 0, i32 3
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @cxio_init_resource_fifo(i32* %56, i32* %58, i32 %59, i32 1, i32 0)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %83

65:                                               ; preds = %63
  %66 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %67 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kfifo_free(i32 %68)
  br label %70

70:                                               ; preds = %65, %53
  %71 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %72 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @kfifo_free(i32 %73)
  br label %75

75:                                               ; preds = %70, %43
  %76 = load %struct.cxio_hal_resource*, %struct.cxio_hal_resource** %17, align 8
  %77 = getelementptr inbounds %struct.cxio_hal_resource, %struct.cxio_hal_resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @kfifo_free(i32 %78)
  br label %80

80:                                               ; preds = %75, %37
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %64, %22
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.cxio_hal_resource* @kmalloc(i32, i32) #1

declare dso_local i32 @cxio_init_resource_fifo_random(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cxio_init_qpid_fifo(%struct.cxio_rdev*) #1

declare dso_local i32 @cxio_init_resource_fifo(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @kfifo_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
