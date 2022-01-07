; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_process_pure_responses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_process_pure_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_qset = type { i64, %struct.sge_rspq }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, %struct.rsp_desc* }
%struct.rsp_desc = type { i32 }

@RSPD_CTRL_MASK = common dso_local global i32 0, align 4
@RSPD_GTS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_qset*, %struct.rsp_desc*)* @process_pure_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pure_responses(%struct.adapter* %0, %struct.sge_qset* %1, %struct.rsp_desc* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_qset*, align 8
  %6 = alloca %struct.rsp_desc*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %5, align 8
  store %struct.rsp_desc* %2, %struct.rsp_desc** %6, align 8
  %10 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %11 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %10, i32 0, i32 1
  store %struct.sge_rspq* %11, %struct.sge_rspq** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %87, %3
  %13 = load %struct.rsp_desc*, %struct.rsp_desc** %6, align 8
  %14 = getelementptr inbounds %struct.rsp_desc, %struct.rsp_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.rsp_desc*, %struct.rsp_desc** %6, align 8
  %18 = getelementptr inbounds %struct.rsp_desc, %struct.rsp_desc* %17, i32 1
  store %struct.rsp_desc* %18, %struct.rsp_desc** %6, align 8
  %19 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %20 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %24 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %12
  %31 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %32 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %34 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %38 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %37, i32 0, i32 5
  %39 = load %struct.rsp_desc*, %struct.rsp_desc** %38, align 8
  store %struct.rsp_desc* %39, %struct.rsp_desc** %6, align 8
  br label %40

40:                                               ; preds = %30, %12
  %41 = load %struct.rsp_desc*, %struct.rsp_desc** %6, align 8
  %42 = call i32 @prefetch(%struct.rsp_desc* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RSPD_CTRL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RSPD_GTS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @handle_rsp_cntrl_info(%struct.sge_qset* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %58 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %62 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %66 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 4
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %73 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %74 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @refill_rspq(%struct.adapter* %71, %struct.sge_rspq* %72, i32 %75)
  %77 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %78 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %56
  %80 = load %struct.rsp_desc*, %struct.rsp_desc** %6, align 8
  %81 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %82 = call i32 @is_new_response(%struct.rsp_desc* %80, %struct.sge_rspq* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %91

85:                                               ; preds = %79
  %86 = call i32 (...) @rmb()
  br label %87

87:                                               ; preds = %85
  %88 = load %struct.rsp_desc*, %struct.rsp_desc** %6, align 8
  %89 = call i64 @is_pure_response(%struct.rsp_desc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %12, label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @check_ring_db(%struct.adapter* %95, %struct.sge_qset* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = call i32 (...) @smp_mb()
  %101 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %102 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %110 = call i32 @restart_tx(%struct.sge_qset* %109)
  br label %111

111:                                              ; preds = %108, %99
  %112 = load %struct.rsp_desc*, %struct.rsp_desc** %6, align 8
  %113 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %114 = call i32 @is_new_response(%struct.rsp_desc* %112, %struct.sge_rspq* %113)
  ret i32 %114
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @prefetch(%struct.rsp_desc*) #1

declare dso_local i32 @handle_rsp_cntrl_info(%struct.sge_qset*, i32) #1

declare dso_local i32 @refill_rspq(%struct.adapter*, %struct.sge_rspq*, i32) #1

declare dso_local i32 @is_new_response(%struct.rsp_desc*, %struct.sge_rspq*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @is_pure_response(%struct.rsp_desc*) #1

declare dso_local i32 @check_ring_db(%struct.adapter*, %struct.sge_qset*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @restart_tx(%struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
