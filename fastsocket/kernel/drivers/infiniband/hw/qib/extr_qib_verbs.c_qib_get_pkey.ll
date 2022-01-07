; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_get_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_get_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_get_pkey(%struct.qib_ibport* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %10 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %9)
  store %struct.qib_pportdata* %10, %struct.qib_pportdata** %5, align 8
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  store %struct.qib_devdata* %13, %struct.qib_devdata** %6, align 8
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = icmp ne %struct.TYPE_2__** %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = icmp uge i32 %22, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21, %2
  store i32 0, i32* %8, align 4
  br label %49

35:                                               ; preds = %21
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %35, %34
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
