; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_ctxtdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_ctxtdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i64, i32, i32, i32, i32, i32, %struct.qib_devdata*, %struct.qib_pportdata*, i32 }
%struct.qib_devdata = type { i32, i32 (%struct.qib_ctxtdata.0*)*, %struct.qib_ctxtdata** }
%struct.qib_ctxtdata.0 = type opaque
%struct.qib_pportdata = type { %struct.qib_devdata* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_ctxtdata* @qib_create_ctxtdata(%struct.qib_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 0
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qib_ctxtdata* @kzalloc(i32 64, i32 %10)
  store %struct.qib_ctxtdata* %11, %struct.qib_ctxtdata** %6, align 8
  %12 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %13 = icmp ne %struct.qib_ctxtdata* %12, null
  br i1 %13, label %14, label %80

14:                                               ; preds = %2
  %15 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %16 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %15, i32 0, i32 9
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %19 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %20 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %19, i32 0, i32 8
  store %struct.qib_pportdata* %18, %struct.qib_pportdata** %20, align 8
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %22 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %23 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %22, i32 0, i32 7
  store %struct.qib_devdata* %21, %struct.qib_devdata** %23, align 8
  %24 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %25 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %28 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 2
  %32 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %32, i64 %33
  store %struct.qib_ctxtdata* %29, %struct.qib_ctxtdata** %34, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 1
  %37 = load i32 (%struct.qib_ctxtdata.0*)*, i32 (%struct.qib_ctxtdata.0*)** %36, align 8
  %38 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %39 = bitcast %struct.qib_ctxtdata* %38 to %struct.qib_ctxtdata.0*
  %40 = call i32 %37(%struct.qib_ctxtdata.0* %39)
  %41 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %42 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %41, i32 0, i32 2
  store i32 32768, i32* %42, align 8
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %44 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %45, %48
  %50 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %51 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %53 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %56 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %61 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  %64 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %65 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %67 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @is_power_of_2(i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %75 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ilog2(i32 %76)
  %78 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %79 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %14, %2
  %81 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  ret %struct.qib_ctxtdata* %81
}

declare dso_local %struct.qib_ctxtdata* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
