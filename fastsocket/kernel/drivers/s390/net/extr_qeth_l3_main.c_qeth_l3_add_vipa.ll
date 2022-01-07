; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_vipa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_vipa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, i32*, i32 }
%struct.qeth_ipaddr = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"addvipa4\00", align 1
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"addvipa6\00", align 1
@QETH_IP_TYPE_VIPA = common dso_local global i32 0, align 4
@QETH_IPA_SETIP_VIPA_FLAG = common dso_local global i32 0, align 4
@QETH_IPA_DELIP_VIPA_FLAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l3_add_vipa(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
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
  br i1 %14, label %15, label %60

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
  %51 = load i32, i32* @QETH_IP_TYPE_VIPA, align 4
  %52 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %53 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @QETH_IPA_SETIP_VIPA_FLAG, align 4
  %55 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %56 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @QETH_IPA_DELIP_VIPA_FLAG, align 4
  %58 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %59 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %104

63:                                               ; preds = %50
  %64 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 0
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 2
  %70 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %71 = call i64 @qeth_l3_address_exists_in_list(i32* %69, %struct.qeth_ipaddr* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %78 = call i64 @qeth_l3_address_exists_in_list(i32* %76, %struct.qeth_ipaddr* %77, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %63
  %81 = load i32, i32* @EEXIST, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 0
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %104

92:                                               ; preds = %83
  %93 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %94 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %95 = call i32 @qeth_l3_add_ip(%struct.qeth_card* %93, %struct.qeth_ipaddr* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %8, align 8
  %99 = call i32 @kfree(%struct.qeth_ipaddr* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %102 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %90, %60
  %105 = load i32, i32* %4, align 4
  ret i32 %105
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
