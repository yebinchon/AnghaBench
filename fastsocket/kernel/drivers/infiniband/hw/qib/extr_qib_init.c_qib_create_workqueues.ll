; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_workqueues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_workqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"qib%d_%d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"create_singlethread_workqueue failed for port %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_create_workqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_create_workqueues(%struct.qib_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca [8 x i8], align 1
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 2
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i64 %18
  store %struct.qib_pportdata* %19, %struct.qib_pportdata** %5, align 8
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @snprintf(i8* %25, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %32 = call i32* @create_singlethread_workqueue(i8* %31)
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  br label %46

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %7

45:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %81

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %75, %46
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 2
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %59, i64 %61
  store %struct.qib_pportdata* %62, %struct.qib_pportdata** %5, align 8
  %63 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %69 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @destroy_workqueue(i32* %70)
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %73 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %45
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
