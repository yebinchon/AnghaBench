; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_compute_aeth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_compute_aeth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.qib_rwq* }
%struct.qib_rwq = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@QIB_MSN_MASK = common dso_local global i64 0, align 8
@QIB_AETH_CREDIT_INVAL = common dso_local global i64 0, align 8
@QIB_AETH_CREDIT_SHIFT = common dso_local global i64 0, align 8
@credit_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_compute_aeth(%struct.qib_qp* %0) #0 {
  %2 = alloca %struct.qib_qp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qib_rwq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %2, align 8
  %11 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %12 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QIB_MSN_MASK, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %3, align 8
  %16 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %17 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i64, i64* @QIB_AETH_CREDIT_INVAL, align 8
  %23 = load i64, i64* @QIB_AETH_CREDIT_SHIFT, align 8
  %24 = shl i64 %22, %23
  %25 = load i64, i64* %3, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %104

27:                                               ; preds = %1
  %28 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %29 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.qib_rwq*, %struct.qib_rwq** %30, align 8
  store %struct.qib_rwq* %31, %struct.qib_rwq** %8, align 8
  %32 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %33 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %37 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %44 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %48 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %62 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %60, %53
  store i64 0, i64* %4, align 8
  store i64 31, i64* %5, align 8
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %69, %70
  %72 = sdiv i64 %71, 2
  store i64 %72, i64* %6, align 8
  %73 = load i64*, i64** @credit_table, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %98

80:                                               ; preds = %68
  %81 = load i64*, i64** @credit_table, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %5, align 8
  br label %97

89:                                               ; preds = %80
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %98

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %87
  br label %68

98:                                               ; preds = %93, %79
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @QIB_AETH_CREDIT_SHIFT, align 8
  %101 = shl i64 %99, %100
  %102 = load i64, i64* %3, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %98, %21
  %105 = load i64, i64* %3, align 8
  %106 = call i32 @cpu_to_be32(i64 %105)
  ret i32 %106
}

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
