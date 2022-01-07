; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_pages.c_ipath_release_user_pages_on_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_pages.c_ipath_release_user_pages_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ipath_user_pages_work = type { i64, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@user_pages_account = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_release_user_pages_on_close(%struct.page** %0, i64 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipath_user_pages_work*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  store %struct.page** %0, %struct.page*** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.page**, %struct.page*** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @__ipath_release_user_pages(%struct.page** %7, i64 %8, i32 1)
  %10 = load i32, i32* @current, align 4
  %11 = call %struct.mm_struct* @get_task_mm(i32 %10)
  store %struct.mm_struct* %11, %struct.mm_struct** %6, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %13 = icmp ne %struct.mm_struct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ipath_user_pages_work* @kmalloc(i32 24, i32 %16)
  store %struct.ipath_user_pages_work* %17, %struct.ipath_user_pages_work** %5, align 8
  %18 = load %struct.ipath_user_pages_work*, %struct.ipath_user_pages_work** %5, align 8
  %19 = icmp ne %struct.ipath_user_pages_work* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.ipath_user_pages_work*, %struct.ipath_user_pages_work** %5, align 8
  %23 = getelementptr inbounds %struct.ipath_user_pages_work, %struct.ipath_user_pages_work* %22, i32 0, i32 1
  %24 = load i32, i32* @user_pages_account, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %27 = load %struct.ipath_user_pages_work*, %struct.ipath_user_pages_work** %5, align 8
  %28 = getelementptr inbounds %struct.ipath_user_pages_work, %struct.ipath_user_pages_work* %27, i32 0, i32 2
  store %struct.mm_struct* %26, %struct.mm_struct** %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.ipath_user_pages_work*, %struct.ipath_user_pages_work** %5, align 8
  %31 = getelementptr inbounds %struct.ipath_user_pages_work, %struct.ipath_user_pages_work* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @ib_wq, align 4
  %33 = load %struct.ipath_user_pages_work*, %struct.ipath_user_pages_work** %5, align 8
  %34 = getelementptr inbounds %struct.ipath_user_pages_work, %struct.ipath_user_pages_work* %33, i32 0, i32 1
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  br label %39

36:                                               ; preds = %20
  %37 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %38 = call i32 @mmput(%struct.mm_struct* %37)
  br label %39

39:                                               ; preds = %36, %21, %14
  ret void
}

declare dso_local i32 @__ipath_release_user_pages(%struct.page**, i64, i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(i32) #1

declare dso_local %struct.ipath_user_pages_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
