; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_pages.c___qib_get_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_pages.c___qib_get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.page**, %struct.vm_area_struct**)* @__qib_get_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qib_get_user_pages(i64 %0, i64 %1, %struct.page** %2, %struct.vm_area_struct** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.vm_area_struct**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  store %struct.vm_area_struct** %3, %struct.vm_area_struct*** %8, align 8
  %12 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %13 = call i64 @rlimit(i32 %12)
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @CAP_IPC_LOCK, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %70

26:                                               ; preds = %19, %4
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = mul i64 %37, %38
  %40 = add i64 %36, %39
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %41, %42
  %44 = load %struct.page**, %struct.page*** %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %45
  %47 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %48 = call i32 @get_user_pages(%struct.TYPE_4__* %32, %struct.TYPE_5__* %35, i64 %40, i64 %43, i32 1, i32 1, %struct.page** %46, %struct.vm_area_struct** %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %66

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %27

58:                                               ; preds = %27
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %59
  store i64 %65, i64* %63, align 8
  store i32 0, i32* %11, align 4
  br label %70

66:                                               ; preds = %51
  %67 = load %struct.page**, %struct.page*** %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @__qib_release_user_pages(%struct.page** %67, i64 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %58, %23
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_4__*, %struct.TYPE_5__*, i64, i64, i32, i32, %struct.page**, %struct.vm_area_struct**) #1

declare dso_local i32 @__qib_release_user_pages(%struct.page**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
