; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_disable_after_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_disable_after_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i64, i32*, i32 (%struct.qib_pportdata*, i32)*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32* }

@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_IB_LINKDOWN_DISABLE = common dso_local global i32 0, align 4
@QIB_STATUS_IB_READY = common dso_local global i32 0, align 4
@QIB_STATUS_HWERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_disable_after_error(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @QIB_INITTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %1
  %12 = load i32, i32* @QIB_INITTED, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 4
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  %21 = icmp ne %struct.qib_pportdata* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 4
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i64 %33
  store %struct.qib_pportdata* %34, %struct.qib_pportdata** %4, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QIB_PRESENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %43 = load i32, i32* @QIB_IB_LINKDOWN_DISABLE, align 4
  %44 = call i32 @qib_set_linkstate(%struct.qib_pportdata* %42, i32 %43)
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 3
  %47 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %46, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %49 = call i32 %47(%struct.qib_pportdata* %48, i32 0)
  br label %50

50:                                               ; preds = %41, %29
  %51 = load i32, i32* @QIB_STATUS_IB_READY, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %54 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %3, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %23

61:                                               ; preds = %23
  br label %62

62:                                               ; preds = %61, %11
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @QIB_STATUS_HWERROR, align 4
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @qib_set_linkstate(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
