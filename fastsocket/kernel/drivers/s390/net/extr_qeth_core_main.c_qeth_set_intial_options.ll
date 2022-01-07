; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_set_intial_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_set_intial_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@NO_ROUTER = common dso_local global i8* null, align 8
@QETH_CHECKSUM_DEFAULT = common dso_local global i32 0, align 4
@QETH_TR_BROADCAST_ALLRINGS = common dso_local global i32 0, align 4
@QETH_TR_MACADDR_NONCANONICAL = common dso_local global i32 0, align 4
@DEFAULT_ADD_HHLEN = common dso_local global i32 0, align 4
@QETH_RX_SG_CB = common dso_local global i32 0, align 4
@ISOLATION_MODE_NONE = common dso_local global i32 0, align 4
@QETH_CQ_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_set_intial_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_set_intial_options(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load i8*, i8** @NO_ROUTER, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 10
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i8* %3, i8** %7, align 8
  %8 = load i8*, i8** @NO_ROUTER, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8* %8, i8** %12, align 8
  %13 = load i32, i32* @QETH_CHECKSUM_DEFAULT, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 8
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @QETH_TR_BROADCAST_ALLRINGS, align 4
  %18 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @QETH_TR_MACADDR_NONCANONICAL, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 6
  store i32 %21, i32* %24, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @DEFAULT_ADD_HHLEN, align 4
  %29 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @QETH_RX_SG_CB, align 4
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @ISOLATION_MODE_NONE, align 4
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @QETH_CQ_DISABLED, align 4
  %44 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
