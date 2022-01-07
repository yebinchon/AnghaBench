; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_alloc_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_alloc_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { i8* }
%struct.ib_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fast_reg_page_list* @qib_alloc_fast_reg_page_list(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_fast_reg_page_list*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %17)
  store %struct.ib_fast_reg_page_list* %18, %struct.ib_fast_reg_page_list** %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 8, i32 %20)
  %22 = bitcast i8* %21 to %struct.ib_fast_reg_page_list*
  store %struct.ib_fast_reg_page_list* %22, %struct.ib_fast_reg_page_list** %7, align 8
  %23 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %7, align 8
  %24 = icmp ne %struct.ib_fast_reg_page_list* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %27)
  store %struct.ib_fast_reg_page_list* %28, %struct.ib_fast_reg_page_list** %3, align 8
  br label %48

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  %33 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %7, align 8
  %34 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %7, align 8
  %36 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %42

40:                                               ; preds = %29
  %41 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %7, align 8
  store %struct.ib_fast_reg_page_list* %41, %struct.ib_fast_reg_page_list** %3, align 8
  br label %48

42:                                               ; preds = %39
  %43 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %7, align 8
  %44 = call i32 @kfree(%struct.ib_fast_reg_page_list* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %46)
  store %struct.ib_fast_reg_page_list* %47, %struct.ib_fast_reg_page_list** %3, align 8
  br label %48

48:                                               ; preds = %42, %40, %25, %15
  %49 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %49
}

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_fast_reg_page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
