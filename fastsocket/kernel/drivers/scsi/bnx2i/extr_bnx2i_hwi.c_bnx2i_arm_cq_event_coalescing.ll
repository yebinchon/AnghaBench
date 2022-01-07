; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_arm_cq_event_coalescing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_arm_cq_event_coalescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_endpoint = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2i_5771x_cq_db = type { i32* }

@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@CNIC_ARM_CQE_FP = common dso_local global i64 0, align 8
@CNIC_ARM_CQE = common dso_local global i64 0, align 8
@event_coal_min = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2i_endpoint*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnx2i_5771x_cq_db*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2i_endpoint* %0, %struct.bnx2i_endpoint** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %11 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %10, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bnx2i_5771x_cq_db*
  store %struct.bnx2i_5771x_cq_db* %23, %struct.bnx2i_5771x_cq_db** %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @CNIC_ARM_CQE_FP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %18
  %28 = load %struct.bnx2i_5771x_cq_db*, %struct.bnx2i_5771x_cq_db** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2i_5771x_cq_db, %struct.bnx2i_5771x_cq_db* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.bnx2i_5771x_cq_db*, %struct.bnx2i_5771x_cq_db** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2i_5771x_cq_db, %struct.bnx2i_5771x_cq_db* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %114

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @CNIC_ARM_CQE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @CNIC_ARM_CQE_FP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47, %43
  %52 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %52, i32 0, i32 2
  %54 = call i32 @atomic_read(i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @event_coal_min, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %75

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %62 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %60, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @event_coal_min, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @event_coal_min, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %59
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %81 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %89 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 2
  %93 = icmp sgt i32 %87, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %79
  %95 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %4, align 8
  %96 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 2
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %79
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 1, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.bnx2i_5771x_cq_db*, %struct.bnx2i_5771x_cq_db** %6, align 8
  %109 = getelementptr inbounds %struct.bnx2i_5771x_cq_db, %struct.bnx2i_5771x_cq_db* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %47
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %41, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
