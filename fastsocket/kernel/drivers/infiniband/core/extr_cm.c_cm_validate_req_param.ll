; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_validate_req_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_validate_req_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_req_param = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_CM_REQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_req_param*)* @cm_validate_req_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_validate_req_param(%struct.ib_cm_req_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_cm_req_param*, align 8
  store %struct.ib_cm_req_param* %0, %struct.ib_cm_req_param** %3, align 8
  %4 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %5 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %87

11:                                               ; preds = %1
  %12 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %13 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %11
  %20 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %21 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_QPT_RC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %27 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_QPT_UC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %33 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %87

40:                                               ; preds = %31, %25, %19
  %41 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %42 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %47 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IB_CM_REQ_PRIVATE_DATA_SIZE, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %87

54:                                               ; preds = %45, %40
  %55 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %56 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %61 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %66 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %73 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %3, align 8
  %78 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %71, %59
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %71, %54
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %83, %51, %37, %16, %8
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
