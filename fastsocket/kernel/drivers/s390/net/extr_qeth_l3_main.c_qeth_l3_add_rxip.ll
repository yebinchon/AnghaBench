; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_rxip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_rxip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, i32*, i32 }
%struct.qeth_ipaddr = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"addrxip4\00", align 1
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"addrxip6\00", align 1
@QETH_IP_TYPE_RXIP = common dso_local global i32 0, align 4
@QETH_IPA_SETIP_TAKEOVER_FLAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l3_add_rxip(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qeth_ipaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %11)
  store %struct.qeth_ipaddr* %12, %struct.qeth_ipaddr** %8, align 8
  %13 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %14 = icmp ne %struct.qeth_ipaddr* %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QETH_PROT_IPV4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* @TRACE, align 4
  %21 = call i32 @QETH_DBF_TEXT(i32 %20, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %23 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 4)
  %28 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %29 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %50

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @QETH_PROT_IPV6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* @TRACE, align 4
  %38 = call i32 @QETH_DBF_TEXT(i32 %37, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %40 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @memcpy(i32* %42, i32* %43, i32 16)
  %45 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %46 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %36, %32
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* @QETH_IP_TYPE_RXIP, align 4
  %52 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %53 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @QETH_IPA_SETIP_TAKEOVER_FLAG, align 4
  %55 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %56 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %58 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %102

62:                                               ; preds = %50
  %63 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 2
  %69 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %70 = call i64 @qeth_l3_address_exists_in_list(i32* %68, %struct.qeth_ipaddr* %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %77 = call i64 @qeth_l3_address_exists_in_list(i32* %75, %struct.qeth_ipaddr* %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72, %62
  %80 = load i32, i32* @EEXIST, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %102

91:                                               ; preds = %82
  %92 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %93 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %94 = call i32 @qeth_l3_add_ip(%struct.qeth_card* %92, %struct.qeth_ipaddr* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %98 = call i32 @kfree(%struct.qeth_ipaddr* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %101 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %89, %59
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qeth_l3_address_exists_in_list(i32*, %struct.qeth_ipaddr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qeth_l3_add_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
