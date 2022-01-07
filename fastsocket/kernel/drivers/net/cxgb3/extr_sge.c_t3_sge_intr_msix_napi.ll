; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_intr_msix_napi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_intr_msix_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, %struct.sge_rspq }
%struct.sge_rspq = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @t3_sge_intr_msix_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_sge_intr_msix_napi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sge_qset*, align 8
  %6 = alloca %struct.sge_rspq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sge_qset*
  store %struct.sge_qset* %8, %struct.sge_qset** %5, align 8
  %9 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %10 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %9, i32 0, i32 1
  store %struct.sge_rspq* %10, %struct.sge_rspq** %6, align 8
  %11 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %12 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %15 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %18 = call i64 @handle_responses(i32 %16, %struct.sge_rspq* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %22 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %27 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @handle_responses(i32, %struct.sge_rspq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
