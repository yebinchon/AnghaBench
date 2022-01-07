; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_has_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_has_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2_napi = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.status_block* }
%struct.status_block = type { i64, i32, i32 }

@STATUS_ATTN_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2_napi*)* @bnx2_has_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_has_work(%struct.bnx2_napi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2_napi*, align 8
  %4 = alloca %struct.status_block*, align 8
  store %struct.bnx2_napi* %0, %struct.bnx2_napi** %3, align 8
  %5 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.status_block*, %struct.status_block** %7, align 8
  store %struct.status_block* %8, %struct.status_block** %4, align 8
  %9 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %10 = call i64 @bnx2_has_fast_work(%struct.bnx2_napi* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.status_block*, %struct.status_block** %4, align 8
  %15 = getelementptr inbounds %struct.status_block, %struct.status_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @STATUS_ATTN_EVENTS, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.status_block*, %struct.status_block** %4, align 8
  %20 = getelementptr inbounds %struct.status_block, %struct.status_block* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STATUS_ATTN_EVENTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @bnx2_has_fast_work(%struct.bnx2_napi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
