; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ipath_cq = type { i32, %struct.TYPE_2__, %struct.ipath_cq_wc*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ipath_cq_wc = type { i64, i64, %struct.ib_wc* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.ipath_cq*, align 8
  %8 = alloca %struct.ipath_cq_wc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %13 = call %struct.ipath_cq* @to_icq(%struct.ib_cq* %12)
  store %struct.ipath_cq* %13, %struct.ipath_cq** %7, align 8
  %14 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %15 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %88

21:                                               ; preds = %3
  %22 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %23 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %27 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %26, i32 0, i32 2
  %28 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %27, align 8
  store %struct.ipath_cq_wc* %28, %struct.ipath_cq_wc** %8, align 8
  %29 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %30 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %34 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %40 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %38, %21
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %51 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %80

55:                                               ; preds = %48
  %56 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %57 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %58 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %57, i32 0, i32 2
  %59 = load %struct.ib_wc*, %struct.ib_wc** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i64 %60
  %62 = bitcast %struct.ib_wc* %56 to i8*
  %63 = bitcast %struct.ib_wc* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %66 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  store i64 0, i64* %11, align 8
  br label %74

71:                                               ; preds = %55
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %71, %70
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %79 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %78, i32 1
  store %struct.ib_wc* %79, %struct.ib_wc** %6, align 8
  br label %44

80:                                               ; preds = %54, %44
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %8, align 8
  %83 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ipath_cq*, %struct.ipath_cq** %7, align 8
  %85 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %84, i32 0, i32 0
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %80, %18
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local %struct.ipath_cq* @to_icq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
