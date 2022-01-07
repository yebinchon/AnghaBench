; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_alloc_cmbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_alloc_cmbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ccw_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.cmbe* }
%struct.cmbe = type { i32, %struct.cmbe*, %struct.cmbe* }
%struct.cmb_data = type { i32, %struct.cmb_data*, %struct.cmb_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cmb_area = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @alloc_cmbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmbe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.cmbe*, align 8
  %5 = alloca %struct.cmb_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 48, i32 %7)
  %9 = bitcast i8* %8 to %struct.cmbe*
  store %struct.cmbe* %9, %struct.cmbe** %4, align 8
  %10 = load %struct.cmbe*, %struct.cmbe** %4, align 8
  %11 = icmp ne %struct.cmbe* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 24, i32 %16)
  %18 = bitcast i8* %17 to %struct.cmb_data*
  store %struct.cmb_data* %18, %struct.cmb_data** %5, align 8
  %19 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %20 = icmp ne %struct.cmb_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %84

24:                                               ; preds = %15
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 24, i32 %25)
  %27 = bitcast i8* %26 to %struct.cmb_data*
  %28 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %29 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %28, i32 0, i32 1
  store %struct.cmb_data* %27, %struct.cmb_data** %29, align 8
  %30 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %31 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %30, i32 0, i32 1
  %32 = load %struct.cmb_data*, %struct.cmb_data** %31, align 8
  %33 = icmp ne %struct.cmb_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %84

37:                                               ; preds = %24
  %38 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %39 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %38, i32 0, i32 0
  store i32 24, i32* %39, align 8
  %40 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @spin_lock_irq(i32 %42)
  %44 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.cmbe*, %struct.cmbe** %47, align 8
  %49 = icmp ne %struct.cmbe* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %52 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @spin_unlock_irq(i32 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %84

57:                                               ; preds = %37
  %58 = load %struct.cmbe*, %struct.cmbe** %4, align 8
  %59 = bitcast %struct.cmbe* %58 to %struct.cmb_data*
  %60 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %61 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %60, i32 0, i32 2
  store %struct.cmb_data* %59, %struct.cmb_data** %61, align 8
  %62 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %63 = bitcast %struct.cmb_data* %62 to %struct.cmbe*
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store %struct.cmbe* %63, %struct.cmbe** %67, align 8
  %68 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %69 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @spin_unlock_irq(i32 %70)
  %72 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  %73 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 1))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = call i32 @cmf_activate(i32* null, i32 1)
  br label %77

77:                                               ; preds = %75, %57
  %78 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %79 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @list_add_tail(i32* %81, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 1))
  %83 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmb_area, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %100

84:                                               ; preds = %50, %34, %21
  %85 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %86 = icmp ne %struct.cmb_data* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %89 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %88, i32 0, i32 1
  %90 = load %struct.cmb_data*, %struct.cmb_data** %89, align 8
  %91 = bitcast %struct.cmb_data* %90 to %struct.cmbe*
  %92 = call i32 @kfree(%struct.cmbe* %91)
  br label %93

93:                                               ; preds = %87, %84
  %94 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %95 = bitcast %struct.cmb_data* %94 to %struct.cmbe*
  %96 = call i32 @kfree(%struct.cmbe* %95)
  %97 = load %struct.cmbe*, %struct.cmbe** %4, align 8
  %98 = call i32 @kfree(%struct.cmbe* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %93, %77, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cmf_activate(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cmbe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
