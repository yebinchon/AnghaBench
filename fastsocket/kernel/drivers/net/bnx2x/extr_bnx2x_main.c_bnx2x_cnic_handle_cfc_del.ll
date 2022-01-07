; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_handle_cfc_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_handle_cfc_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%union.event_ring_elem = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"got delete ramrod for CNIC CID %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"got delete ramrod for CNIC CID %d with error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64, %union.event_ring_elem*)* @bnx2x_cnic_handle_cfc_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cnic_handle_cfc_del(%struct.bnx2x* %0, i64 %1, %union.event_ring_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.event_ring_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i64 %1, i64* %6, align 8
  store %union.event_ring_elem* %2, %union.event_ring_elem** %7, align 8
  %9 = load %union.event_ring_elem*, %union.event_ring_elem** %7, align 8
  %10 = bitcast %union.event_ring_elem* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %3
  store i32 1, i32* %4, align 4
  br label %50

33:                                               ; preds = %25, %18
  %34 = load i32, i32* @BNX2X_MSG_SP, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @DP(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %44 = call i32 @bnx2x_panic_dump(%struct.bnx2x* %43, i32 0)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @bnx2x_cnic_cfc_comp(%struct.bnx2x* %46, i64 %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %32
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @DP(i32, i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @bnx2x_panic_dump(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_cnic_cfc_comp(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
