; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_delete_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_delete_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8 }
%struct.TYPE_4__ = type { i8 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"delip\00", align 1
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l3_delete_ip(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_ipaddr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QETH_PROT_IPV4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @TRACE, align 4
  %16 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @QETH_DBF_HEX(i32 %15, i32 4, i8* %19, i32 4)
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @TRACE, align 4
  %23 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @QETH_DBF_HEX(i32 %22, i32 4, i8* %26, i32 8)
  %28 = load i32, i32* @TRACE, align 4
  %29 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %30 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @QETH_DBF_HEX(i32 %28, i32 4, i8* %33, i32 8)
  br label %35

35:                                               ; preds = %21, %14
  %36 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %41 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %42 = call i32 @__qeth_l3_insert_ip_todo(%struct.qeth_card* %40, %struct.qeth_ipaddr* %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__qeth_l3_insert_ip_todo(%struct.qeth_card*, %struct.qeth_ipaddr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
