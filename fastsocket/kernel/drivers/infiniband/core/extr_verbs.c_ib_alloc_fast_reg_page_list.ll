; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { i32, %struct.ib_device* }
%struct.ib_device = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fast_reg_page_list* @ib_alloc_fast_reg_page_list(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fast_reg_page_list*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)**
  %10 = load %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)*, %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)** %9, align 8
  %11 = icmp ne %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %14)
  store %struct.ib_fast_reg_page_list* %15, %struct.ib_fast_reg_page_list** %3, align 8
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %18 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)**
  %20 = load %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)*, %struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)** %19, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.ib_fast_reg_page_list* %20(%struct.ib_device* %21, i32 %22)
  store %struct.ib_fast_reg_page_list* %23, %struct.ib_fast_reg_page_list** %6, align 8
  %24 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %25 = call i32 @IS_ERR(%struct.ib_fast_reg_page_list* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %29 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %30 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %29, i32 0, i32 1
  store %struct.ib_device* %28, %struct.ib_device** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %33 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %16
  %35 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  store %struct.ib_fast_reg_page_list* %35, %struct.ib_fast_reg_page_list** %3, align 8
  br label %36

36:                                               ; preds = %34, %12
  %37 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %37
}

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_fast_reg_page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
