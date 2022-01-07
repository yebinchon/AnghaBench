; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_delete_mc_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_delete_mc_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"delmc\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dmcnomem\00", align 1
@QETH_IP_TYPE_DEL_ALL_MC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_delete_mc_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_delete_mc_addresses(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.qeth_ipaddr*, align 8
  %4 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @QETH_PROT_IPV4, align 4
  %8 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %7)
  store %struct.qeth_ipaddr* %8, %struct.qeth_ipaddr** %3, align 8
  %9 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %3, align 8
  %10 = icmp ne %struct.qeth_ipaddr* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @TRACE, align 4
  %13 = call i32 @QETH_DBF_TEXT(i32 %12, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @QETH_IP_TYPE_DEL_ALL_MC, align 4
  %16 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %3, align 8
  %17 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %23 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %3, align 8
  %24 = call i32 @__qeth_l3_insert_ip_todo(%struct.qeth_card* %22, %struct.qeth_ipaddr* %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %3, align 8
  %28 = call i32 @kfree(%struct.qeth_ipaddr* %27)
  br label %29

29:                                               ; preds = %26, %14
  %30 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__qeth_l3_insert_ip_todo(%struct.qeth_card*, %struct.qeth_ipaddr*, i32) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
