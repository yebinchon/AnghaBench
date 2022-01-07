; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_unregister_ib_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_unregister_ib_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_ibdev = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32, i32*, %struct.ib_device }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pending list not empty!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"piowait list not empty!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"rnrwait list not empty!\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"multicast table memory leak!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"QP memory leak! %u still in use\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_unregister_ib_device(%struct.ipath_ibdev* %0) #0 {
  %2 = alloca %struct.ipath_ibdev*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i64, align 8
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %2, align 8
  %5 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %6 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %5, i32 0, i32 7
  store %struct.ib_device* %6, %struct.ib_device** %3, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = call i32 @ib_unregister_device(%struct.ib_device* %7)
  %9 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @disable_timer(i32 %11)
  %13 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %21 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26, %19, %1
  %34 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %35 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @ipath_dev_err(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %40 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %39, i32 0, i32 5
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %45 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @ipath_dev_err(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %50 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %49, i32 0, i32 4
  %51 = call i32 @list_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %55 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @ipath_dev_err(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = call i32 (...) @ipath_mcast_tree_empty()
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %63 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @ipath_dev_err(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %68 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %67, i32 0, i32 2
  %69 = call i64 @ipath_free_all_qps(%struct.TYPE_4__* %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %74 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %4, align 8
  %77 = call i32 (i32, i8*, ...) @ipath_dev_err(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %80 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @kfree(i32 %82)
  %84 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %85 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @kfree(i32 %87)
  %89 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %2, align 8
  %90 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @kfree(i32 %91)
  %93 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %94 = call i32 @ib_dealloc_device(%struct.ib_device* %93)
  ret void
}

declare dso_local i32 @ib_unregister_device(%struct.ib_device*) #1

declare dso_local i32 @disable_timer(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ipath_dev_err(i32, i8*, ...) #1

declare dso_local i32 @ipath_mcast_tree_empty(...) #1

declare dso_local i64 @ipath_free_all_qps(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dealloc_device(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
