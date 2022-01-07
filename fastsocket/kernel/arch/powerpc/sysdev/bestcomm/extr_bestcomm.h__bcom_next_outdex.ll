; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h__bcom_next_outdex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h__bcom_next_outdex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcom_task*)* @_bcom_next_outdex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bcom_next_outdex(%struct.bcom_task* %0) #0 {
  %2 = alloca %struct.bcom_task*, align 8
  store %struct.bcom_task* %0, %struct.bcom_task** %2, align 8
  %3 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %4 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  %7 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %8 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %14 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i64 [ 0, %11 ], [ %16, %12 ]
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
