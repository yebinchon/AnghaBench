; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_get_credit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_get_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@IPATH_AETH_CREDIT_SHIFT = common dso_local global i64 0, align 8
@IPATH_AETH_CREDIT_MASK = common dso_local global i64 0, align 8
@IPATH_AETH_CREDIT_INVAL = common dso_local global i64 0, align 8
@credit_table = common dso_local global i64* null, align 8
@IPATH_MSN_MASK = common dso_local global i64 0, align 8
@IPATH_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_get_credit(%struct.ipath_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @IPATH_AETH_CREDIT_SHIFT, align 8
  %8 = lshr i64 %6, %7
  %9 = load i64, i64* @IPATH_AETH_CREDIT_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @IPATH_AETH_CREDIT_INVAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 0
  store i64 -1, i64* %16, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %19 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = load i64*, i64** @credit_table, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %23, %27
  %29 = load i64, i64* @IPATH_MSN_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %33 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ipath_cmp24(i64 %31, i64 %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %40 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %22
  br label %42

42:                                               ; preds = %41, %17
  br label %43

43:                                               ; preds = %42, %14
  %44 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IPATH_S_WAIT_SSN_CREDIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %52 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %55 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %60 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %65 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %66 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.TYPE_2__* @get_swqe_ptr(%struct.ipath_qp* %64, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %72 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = call i64 @ipath_cmp24(i64 %70, i64 %74)
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63, %58
  %78 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %79 = call i32 @ipath_schedule_send(%struct.ipath_qp* %78)
  br label %80

80:                                               ; preds = %77, %63, %50, %43
  ret void
}

declare dso_local i64 @ipath_cmp24(i64, i64) #1

declare dso_local %struct.TYPE_2__* @get_swqe_ptr(%struct.ipath_qp*, i64) #1

declare dso_local i32 @ipath_schedule_send(%struct.ipath_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
