; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_srq_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_srq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_srq = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [32 x i8] c"Async event for bogus SRQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_srq_event(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_srq*, align 8
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
  %23 = call %struct.mthca_srq* @mthca_array_get(i32* %15, i32 %22)
  store %struct.mthca_srq* %23, %struct.mthca_srq** %7, align 8
  %24 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %25 = icmp ne %struct.mthca_srq* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %28 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %37 = icmp ne %struct.mthca_srq* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mthca_warn(%struct.mthca_dev* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %88

42:                                               ; preds = %31
  %43 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %44 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.ib_event*, i32)* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %69

49:                                               ; preds = %42
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %51 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 2
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %56 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %58, align 8
  %59 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %60 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %61, align 8
  %63 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %64 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %65 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %62(%struct.ib_event* %63, i32 %67)
  br label %69

69:                                               ; preds = %49, %48
  %70 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %71 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %75 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %69
  %80 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %81 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %80, i32 0, i32 0
  %82 = call i32 @wake_up(i32* %81)
  br label %83

83:                                               ; preds = %79, %69
  %84 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %85 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %83, %38
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mthca_srq* @mthca_array_get(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
