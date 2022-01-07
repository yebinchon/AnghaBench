; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_set_pkeys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_set_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_3__, i32 (%struct.qib_pportdata*, i32, i32)*, %struct.qib_ctxtdata**, %struct.qib_pportdata* }
%struct.TYPE_3__ = type { i32 }
%struct.qib_ctxtdata = type { i32* }
%struct.qib_pportdata = type { i64 }
%struct.ib_event = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@QIB_IB_CFG_PKEYS = common dso_local global i32 0, align 4
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32*)* @set_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pkeys(%struct.qib_devdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qib_pportdata*, align 8
  %8 = alloca %struct.qib_ctxtdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_event, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 3
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i64 %20
  store %struct.qib_pportdata* %21, %struct.qib_pportdata** %7, align 8
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 2
  %24 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %23, align 8
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %24, i64 %27
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %28, align 8
  store %struct.qib_ctxtdata* %29, %struct.qib_ctxtdata** %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %88, %3
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %33 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %30
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %44 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %88

54:                                               ; preds = %37
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 32767
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @rm_pkey(%struct.qib_pportdata* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 32767
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @add_pkey(%struct.qib_pportdata* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %79

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %83 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %53
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %30

91:                                               ; preds = %30
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 1
  %97 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %96, align 8
  %98 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %99 = load i32, i32* @QIB_IB_CFG_PKEYS, align 4
  %100 = call i32 %97(%struct.qib_pportdata* %98, i32 %99, i32 0)
  %101 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %102 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %14, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %104 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %14, i32 0, i32 1
  store i32* %105, i32** %106, align 8
  %107 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %14, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = call i32 @ib_dispatch_event(%struct.ib_event* %14)
  br label %110

110:                                              ; preds = %94, %91
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rm_pkey(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @add_pkey(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
