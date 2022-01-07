; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_cm_connect_cmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_cm_connect_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i64 }
%struct.bnx2i_endpoint = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADAPTER_STATE_GOING_DOWN = common dso_local global i32 0, align 4
@EP_STATE_CONNECT_FAILED = common dso_local global i8* null, align 8
@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@EP_STATE_CONNECT_COMPL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_sock*)* @bnx2i_cm_connect_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_cm_connect_cmpl(%struct.cnic_sock* %0) #0 {
  %2 = alloca %struct.cnic_sock*, align 8
  %3 = alloca %struct.bnx2i_endpoint*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %2, align 8
  %4 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %5 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.bnx2i_endpoint*
  store %struct.bnx2i_endpoint* %7, %struct.bnx2i_endpoint** %3, align 8
  %8 = load i32, i32* @ADAPTER_STATE_GOING_DOWN, align 4
  %9 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %8, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i8*, i8** @EP_STATE_CONNECT_FAILED, align 8
  %17 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %21 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %22 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** @EP_STATE_CONNECT_COMPL, align 8
  %27 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load i8*, i8** @EP_STATE_CONNECT_FAILED, align 8
  %31 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %35, i32 0, i32 0
  %37 = call i32 @wake_up_interruptible(i32* %36)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
