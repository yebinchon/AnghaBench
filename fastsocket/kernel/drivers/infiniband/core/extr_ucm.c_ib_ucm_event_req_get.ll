; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucm.c_ib_ucm_event_req_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucm.c_ib_ucm_event_req_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucm_req_event_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_cm_req_event_param = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_ucm_req_event_resp*, %struct.ib_cm_req_event_param*)* @ib_ucm_event_req_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_ucm_event_req_get(%struct.ib_ucm_req_event_resp* %0, %struct.ib_cm_req_event_param* %1) #0 {
  %3 = alloca %struct.ib_ucm_req_event_resp*, align 8
  %4 = alloca %struct.ib_cm_req_event_param*, align 8
  store %struct.ib_ucm_req_event_resp* %0, %struct.ib_ucm_req_event_resp** %3, align 8
  store %struct.ib_cm_req_event_param* %1, %struct.ib_cm_req_event_param** %4, align 8
  %5 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %6 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %9 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %8, i32 0, i32 15
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %11 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %14 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %16 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %19 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %21 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %24 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %26 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %29 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %31 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %34 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %36 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %39 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %41 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %44 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %46 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %49 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %51 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %54 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %56 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %59 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %61 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %64 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %66 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %69 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %71 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %74 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %76 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %75, i32 0, i32 1
  %77 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %78 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ib_copy_path_rec_to_user(i32* %76, i64 %79)
  %81 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %82 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %2
  %86 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %3, align 8
  %87 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %86, i32 0, i32 0
  %88 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %4, align 8
  %89 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ib_copy_path_rec_to_user(i32* %87, i64 %90)
  br label %92

92:                                               ; preds = %85, %2
  ret void
}

declare dso_local i32 @ib_copy_path_rec_to_user(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
