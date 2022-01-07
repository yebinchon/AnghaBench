; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, i32, i32, i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 (%struct.cnic_dev.0*)*, i32*, %struct.cnic_dev**, i32 }
%struct.cnic_dev.0 = type opaque

@cnic_delete_task = common dso_local global i32 0, align 4
@cnic_cm_create = common dso_local global i32 0, align 4
@cnic_cm_destroy = common dso_local global i32 0, align 4
@cnic_cm_connect = common dso_local global i32 0, align 4
@cnic_cm_abort = common dso_local global i32 0, align 4
@cnic_cm_close = common dso_local global i32 0, align 4
@cnic_cm_select_dev = common dso_local global i32 0, align 4
@CNIC_ULP_L4 = common dso_local global i64 0, align 8
@cm_ulp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_cm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_open(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 6
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %4, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = call i32 @cnic_cm_alloc_mem(%struct.cnic_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 0
  %18 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %17, align 8
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %20 = bitcast %struct.cnic_dev* %19 to %struct.cnic_dev.0*
  %21 = call i32 %18(%struct.cnic_dev.0* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %61

25:                                               ; preds = %15
  %26 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 3
  %28 = load i32, i32* @cnic_delete_task, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load i32, i32* @cnic_cm_create, align 4
  %31 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %32 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @cnic_cm_destroy, align 4
  %34 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %35 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @cnic_cm_connect, align 4
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %38 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @cnic_cm_abort, align 4
  %40 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %41 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @cnic_cm_close, align 4
  %43 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %44 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @cnic_cm_select_dev, align 4
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %49 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 2
  %51 = load %struct.cnic_dev**, %struct.cnic_dev*** %50, align 8
  %52 = load i64, i64* @CNIC_ULP_L4, align 8
  %53 = getelementptr inbounds %struct.cnic_dev*, %struct.cnic_dev** %51, i64 %52
  store %struct.cnic_dev* %48, %struct.cnic_dev** %53, align 8
  %54 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @CNIC_ULP_L4, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rcu_assign_pointer(i32 %59, i32* @cm_ulp_ops)
  store i32 0, i32* %2, align 4
  br label %65

61:                                               ; preds = %24
  %62 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %63 = call i32 @cnic_cm_free_mem(%struct.cnic_dev* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %25, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @cnic_cm_alloc_mem(%struct.cnic_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @cnic_cm_free_mem(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
