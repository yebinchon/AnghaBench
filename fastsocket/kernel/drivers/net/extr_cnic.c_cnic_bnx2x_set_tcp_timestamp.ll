; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_set_tcp_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_set_tcp_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.bnx2x = type { i32 }

@XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN = common dso_local global i32 0, align 4
@XSTORM_L5CM_TCP_FLAGS_TS_ENABLED = common dso_local global i32 0, align 4
@TSTORM_L5CM_TCP_FLAGS_TS_ENABLED = common dso_local global i32 0, align 4
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32)* @cnic_bnx2x_set_tcp_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_bnx2x_set_tcp_timestamp(%struct.cnic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 1
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %5, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bnx2x* @netdev_priv(i32 %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %6, align 8
  %16 = load i32, i32* @XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @XSTORM_L5CM_TCP_FLAGS_TS_ENABLED, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @TSTORM_L5CM_TCP_FLAGS_TS_ENABLED, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %28 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %29 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %30 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @XSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @CNIC_WR8(%struct.cnic_dev* %27, i64 %33, i32 %34)
  %36 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %37 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %38 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @TSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32 %40)
  %42 = add nsw i64 %37, %41
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @CNIC_WR16(%struct.cnic_dev* %36, i64 %42, i32 %43)
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
