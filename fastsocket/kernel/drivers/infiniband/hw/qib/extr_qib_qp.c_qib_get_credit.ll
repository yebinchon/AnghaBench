; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_get_credit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_get_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i64 }

@QIB_AETH_CREDIT_SHIFT = common dso_local global i64 0, align 8
@QIB_AETH_CREDIT_MASK = common dso_local global i64 0, align 8
@QIB_AETH_CREDIT_INVAL = common dso_local global i64 0, align 8
@QIB_S_UNLIMITED_CREDIT = common dso_local global i32 0, align 4
@QIB_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@credit_table = common dso_local global i64* null, align 8
@QIB_MSN_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_get_credit(%struct.qib_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @QIB_AETH_CREDIT_SHIFT, align 8
  %8 = lshr i64 %6, %7
  %9 = load i64, i64* @QIB_AETH_CREDIT_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @QIB_AETH_CREDIT_INVAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %16 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_S_UNLIMITED_CREDIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @QIB_S_UNLIMITED_CREDIT, align 4
  %23 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %24 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %28 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @QIB_S_WAIT_SSN_CREDIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load i32, i32* @QIB_S_WAIT_SSN_CREDIT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %37 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %41 = call i32 @qib_schedule_send(%struct.qib_qp* %40)
  br label %42

42:                                               ; preds = %33, %21
  br label %43

43:                                               ; preds = %42, %14
  br label %88

44:                                               ; preds = %2
  %45 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %46 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @QIB_S_UNLIMITED_CREDIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %87, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %4, align 8
  %53 = load i64*, i64** @credit_table, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %52, %56
  %58 = load i64, i64* @QIB_MSN_MASK, align 8
  %59 = and i64 %57, %58
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %62 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @qib_cmp24(i64 %60, i64 %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %51
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %69 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %71 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @QIB_S_WAIT_SSN_CREDIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32, i32* @QIB_S_WAIT_SSN_CREDIT, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %80 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %84 = call i32 @qib_schedule_send(%struct.qib_qp* %83)
  br label %85

85:                                               ; preds = %76, %66
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %44
  br label %88

88:                                               ; preds = %87, %43
  ret void
}

declare dso_local i32 @qib_schedule_send(%struct.qib_qp*) #1

declare dso_local i64 @qib_cmp24(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
