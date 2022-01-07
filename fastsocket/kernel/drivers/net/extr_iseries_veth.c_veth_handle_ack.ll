; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_handle_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_handle_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32 }
%struct.veth_lpevent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@veth_cnx = common dso_local global %struct.veth_lpar_connection** null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unknown ack type %d from LPAR %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpevent*)* @veth_handle_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_handle_ack(%struct.veth_lpevent* %0) #0 {
  %2 = alloca %struct.veth_lpevent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.veth_lpar_connection*, align 8
  store %struct.veth_lpevent* %0, %struct.veth_lpevent** %2, align 8
  %5 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %6 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.veth_lpar_connection**, %struct.veth_lpar_connection*** @veth_cnx, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %9, i64 %10
  %12 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %11, align 8
  store %struct.veth_lpar_connection* %12, %struct.veth_lpar_connection** %4, align 8
  %13 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %14 = icmp ne %struct.veth_lpar_connection* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %19 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %30 [
    i32 129, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %1
  %23 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %24 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %25 = call i32 @veth_take_cap_ack(%struct.veth_lpar_connection* %23, %struct.veth_lpevent* %24)
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %28 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %29 = call i32 @veth_take_monitor_ack(%struct.veth_lpar_connection* %27, %struct.veth_lpevent* %28)
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %32 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @veth_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %30, %26, %22
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @veth_take_cap_ack(%struct.veth_lpar_connection*, %struct.veth_lpevent*) #1

declare dso_local i32 @veth_take_monitor_ack(%struct.veth_lpar_connection*, %struct.veth_lpevent*) #1

declare dso_local i32 @veth_error(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
