; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_qp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_qp = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [34 x i8] c"Async event %d for bogus QP %08x\0A\00", align 1
@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_qp_event(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_qp*, align 8
  %8 = alloca %struct.ib_event.0, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %16, %21
  %23 = call %struct.mthca_qp* @mthca_array_get(i32* %15, i32 %22)
  store %struct.mthca_qp* %23, %struct.mthca_qp** %7, align 8
  %24 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %25 = icmp ne %struct.mthca_qp* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %28 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %37 = icmp ne %struct.mthca_qp* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mthca_warn(%struct.mthca_dev* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %98

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %49 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %52 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 2
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %60 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %62, align 8
  %63 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %64 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.ib_event*, i32)* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %53
  %69 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %70 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %71, align 8
  %73 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %74 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %75 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %72(%struct.ib_event* %73, i32 %77)
  br label %79

79:                                               ; preds = %68, %53
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %81 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %85 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %79
  %90 = load %struct.mthca_qp*, %struct.mthca_qp** %7, align 8
  %91 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %90, i32 0, i32 0
  %92 = call i32 @wake_up(i32* %91)
  br label %93

93:                                               ; preds = %89, %79
  %94 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  br label %98

98:                                               ; preds = %93, %38
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mthca_qp* @mthca_array_get(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
