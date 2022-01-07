; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_alloc_cmb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_alloc_cmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.cmb*, i32 }
%struct.cmb = type { i32 }
%struct.ccw_device = type { i32 }
%struct.cmb_data = type { i32, %struct.cmb_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmb_area = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @alloc_cmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmb(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmb_data*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 16, i32 %8)
  %10 = bitcast i8* %9 to %struct.cmb_data*
  store %struct.cmb_data* %10, %struct.cmb_data** %7, align 8
  %11 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %12 = icmp ne %struct.cmb_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %97

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 4, i32 %17)
  %19 = bitcast i8* %18 to %struct.cmb_data*
  %20 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %21 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %20, i32 0, i32 1
  store %struct.cmb_data* %19, %struct.cmb_data** %21, align 8
  %22 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %23 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %22, i32 0, i32 1
  %24 = load %struct.cmb_data*, %struct.cmb_data** %23, align 8
  %25 = icmp ne %struct.cmb_data* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %28 = call i32 @kfree(%struct.cmb_data* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %97

31:                                               ; preds = %16
  %32 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %33 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  %35 = load %struct.cmb*, %struct.cmb** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  %36 = icmp ne %struct.cmb* %35, null
  br i1 %36, label %80, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 0), align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = call i32 @list_empty(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 3))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load i32, i32* @GFP_DMA, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @get_order(i32 %51)
  %53 = call i64 @__get_free_pages(i32 %50, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = bitcast i8* %54 to %struct.cmb*
  store %struct.cmb* %55, %struct.cmb** %5, align 8
  %56 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  %57 = load %struct.cmb*, %struct.cmb** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  %58 = icmp ne %struct.cmb* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %37
  %60 = load %struct.cmb*, %struct.cmb** %5, align 8
  %61 = ptrtoint %struct.cmb* %60 to i64
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @get_order(i32 %62)
  %64 = call i32 @free_pages(i64 %61, i32 %63)
  br label %79

65:                                               ; preds = %37
  %66 = load %struct.cmb*, %struct.cmb** %5, align 8
  %67 = icmp ne %struct.cmb* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %84

71:                                               ; preds = %65
  %72 = load %struct.cmb*, %struct.cmb** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @memset(%struct.cmb* %72, i32 0, i32 %73)
  %75 = load %struct.cmb*, %struct.cmb** %5, align 8
  store %struct.cmb* %75, %struct.cmb** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  %76 = load %struct.cmb*, %struct.cmb** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 2), align 8
  %77 = call i32 @cmf_activate(%struct.cmb* %76, i32 1)
  br label %78

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %31
  %81 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %82 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %83 = call i32 @alloc_cmb_single(%struct.ccw_device* %81, %struct.cmb_data* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %68
  %85 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmb_area, i32 0, i32 1))
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %90 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %89, i32 0, i32 1
  %91 = load %struct.cmb_data*, %struct.cmb_data** %90, align 8
  %92 = call i32 @kfree(%struct.cmb_data* %91)
  %93 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %94 = call i32 @kfree(%struct.cmb_data* %93)
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %26, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmb_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @memset(%struct.cmb*, i32, i32) #1

declare dso_local i32 @cmf_activate(%struct.cmb*, i32) #1

declare dso_local i32 @alloc_cmb_single(%struct.ccw_device*, %struct.cmb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
