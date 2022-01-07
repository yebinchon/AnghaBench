; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_cs.h_bfa_sm_to_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_cs.h_bfa_sm_to_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sm_table_s = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_sm_table_s*, i64)* @bfa_sm_to_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_sm_to_state(%struct.bfa_sm_table_s* %0, i64 %1) #0 {
  %3 = alloca %struct.bfa_sm_table_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.bfa_sm_table_s* %0, %struct.bfa_sm_table_s** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.bfa_sm_table_s*, %struct.bfa_sm_table_s** %3, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.bfa_sm_table_s, %struct.bfa_sm_table_s* %7, i64 %9
  %11 = getelementptr inbounds %struct.bfa_sm_table_s, %struct.bfa_sm_table_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = load %struct.bfa_sm_table_s*, %struct.bfa_sm_table_s** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bfa_sm_table_s, %struct.bfa_sm_table_s* %15, i64 %17
  %19 = getelementptr inbounds %struct.bfa_sm_table_s, %struct.bfa_sm_table_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %14, %6
  %24 = phi i1 [ false, %6 ], [ %22, %14 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %23
  %29 = load %struct.bfa_sm_table_s*, %struct.bfa_sm_table_s** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bfa_sm_table_s, %struct.bfa_sm_table_s* %29, i64 %31
  %33 = getelementptr inbounds %struct.bfa_sm_table_s, %struct.bfa_sm_table_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
