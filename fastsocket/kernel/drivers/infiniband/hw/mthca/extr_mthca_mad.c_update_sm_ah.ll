; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_update_sm_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_update_sm_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.ib_ah**, %struct.TYPE_4__*** }
%struct.ib_ah = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32, i32, i32)* @update_sm_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sm_ah(%struct.mthca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_ah*, align 8
  %10 = alloca %struct.ib_ah_attr, align 4
  %11 = alloca i64, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %14, i64 %17
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %88

24:                                               ; preds = %4
  %25 = call i32 @memset(%struct.ib_ah_attr* %10, i32 0, i32 12)
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %34, i64 %37
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ib_ah* @ib_create_ah(i32 %45, %struct.ib_ah_attr* %10)
  store %struct.ib_ah* %46, %struct.ib_ah** %9, align 8
  %47 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %48 = call i64 @IS_ERR(%struct.ib_ah* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  br label %88

51:                                               ; preds = %24
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %53 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %56, i32 0, i32 1
  %58 = load %struct.ib_ah**, %struct.ib_ah*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ib_ah*, %struct.ib_ah** %58, i64 %61
  %63 = load %struct.ib_ah*, %struct.ib_ah** %62, align 8
  %64 = icmp ne %struct.ib_ah* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %67 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %66, i32 0, i32 1
  %68 = load %struct.ib_ah**, %struct.ib_ah*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ib_ah*, %struct.ib_ah** %68, i64 %71
  %73 = load %struct.ib_ah*, %struct.ib_ah** %72, align 8
  %74 = call i32 @ib_destroy_ah(%struct.ib_ah* %73)
  br label %75

75:                                               ; preds = %65, %51
  %76 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %77, i32 0, i32 1
  %79 = load %struct.ib_ah**, %struct.ib_ah*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ib_ah*, %struct.ib_ah** %79, i64 %82
  store %struct.ib_ah* %76, %struct.ib_ah** %83, align 8
  %84 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %85 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %75, %50, %23
  ret void
}

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local %struct.ib_ah* @ib_create_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ib_destroy_ah(%struct.ib_ah*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
