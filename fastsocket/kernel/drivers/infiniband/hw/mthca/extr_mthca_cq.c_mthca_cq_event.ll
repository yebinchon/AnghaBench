; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_cq = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [31 x i8] c"Async event for bogus CQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cq_event(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_cq*, align 8
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
  %23 = call %struct.mthca_cq* @mthca_array_get(i32* %15, i32 %22)
  store %struct.mthca_cq* %23, %struct.mthca_cq** %7, align 8
  %24 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %25 = icmp ne %struct.mthca_cq* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %28 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %37 = icmp ne %struct.mthca_cq* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mthca_warn(%struct.mthca_dev* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %87

42:                                               ; preds = %31
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %44 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 2
  store i32* %44, i32** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %49 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %51, align 8
  %52 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %53 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.ib_event*, i32)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %42
  %58 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %59 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %60, align 8
  %62 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %63 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %64 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %61(%struct.ib_event* %62, i32 %66)
  br label %68

68:                                               ; preds = %57, %42
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %70 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %74 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = load %struct.mthca_cq*, %struct.mthca_cq** %7, align 8
  %80 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %79, i32 0, i32 0
  %81 = call i32 @wake_up(i32* %80)
  br label %82

82:                                               ; preds = %78, %68
  %83 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %84 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %82, %38
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mthca_cq* @mthca_array_get(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
