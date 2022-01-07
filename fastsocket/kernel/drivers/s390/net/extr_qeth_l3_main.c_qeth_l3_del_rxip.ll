; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_del_rxip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_del_rxip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"addrxip4\00", align 1
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"addrxip6\00", align 1
@QETH_IP_TYPE_RXIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_l3_del_rxip(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qeth_ipaddr*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %8)
  store %struct.qeth_ipaddr* %9, %struct.qeth_ipaddr** %7, align 8
  %10 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %11 = icmp ne %struct.qeth_ipaddr* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @QETH_PROT_IPV4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, i32* @TRACE, align 4
  %18 = call i32 @QETH_DBF_TEXT(i32 %17, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @memcpy(i32* %22, i32* %23, i32 4)
  %25 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %26 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %47

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @QETH_PROT_IPV6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* @TRACE, align 4
  %35 = call i32 @QETH_DBF_TEXT(i32 %34, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %37 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @memcpy(i32* %39, i32* %40, i32 16)
  %42 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %43 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %33, %29
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* @QETH_IP_TYPE_RXIP, align 4
  %49 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %50 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %52

51:                                               ; preds = %3
  br label %63

52:                                               ; preds = %47
  %53 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %54 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %55 = call i32 @qeth_l3_delete_ip(%struct.qeth_card* %53, %struct.qeth_ipaddr* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %59 = call i32 @kfree(%struct.qeth_ipaddr* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %62 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %61)
  br label %63

63:                                               ; preds = %60, %51
  ret void
}

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qeth_l3_delete_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
