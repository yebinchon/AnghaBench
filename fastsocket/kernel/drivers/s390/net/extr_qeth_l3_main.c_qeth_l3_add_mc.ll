; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.in_device = type { i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { i32, %struct.ip_mc_list* }
%struct.qeth_ipaddr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"addmc\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.in_device*)* @qeth_l3_add_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_add_mc(%struct.qeth_card* %0, %struct.in_device* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.in_device*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  %6 = alloca %struct.ip_mc_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.in_device* %1, %struct.in_device** %4, align 8
  %9 = load i32, i32* @MAX_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i32, i32* @TRACE, align 4
  %14 = call i32 @QETH_DBF_TEXT(i32 %13, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.in_device*, %struct.in_device** %4, align 8
  %16 = getelementptr inbounds %struct.in_device, %struct.in_device* %15, i32 0, i32 1
  %17 = load %struct.ip_mc_list*, %struct.ip_mc_list** %16, align 8
  store %struct.ip_mc_list* %17, %struct.ip_mc_list** %6, align 8
  br label %18

18:                                               ; preds = %57, %2
  %19 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %20 = icmp ne %struct.ip_mc_list* %19, null
  br i1 %20, label %21, label %61

21:                                               ; preds = %18
  %22 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %23 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.in_device*, %struct.in_device** %4, align 8
  %26 = getelementptr inbounds %struct.in_device, %struct.in_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @qeth_l3_get_mac_for_ipm(i32 %24, i8* %12, i32 %27)
  %29 = load i32, i32* @QETH_PROT_IPV4, align 4
  %30 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %29)
  store %struct.qeth_ipaddr* %30, %struct.qeth_ipaddr** %5, align 8
  %31 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %32 = icmp ne %struct.qeth_ipaddr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %57

34:                                               ; preds = %21
  %35 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %36 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %39 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %43 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OSA_ADDR_LEN, align 4
  %46 = call i32 @memcpy(i32 %44, i8* %12, i32 %45)
  %47 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %48 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %50 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %51 = call i32 @qeth_l3_add_ip(%struct.qeth_card* %49, %struct.qeth_ipaddr* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %34
  %54 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %55 = call i32 @kfree(%struct.qeth_ipaddr* %54)
  br label %56

56:                                               ; preds = %53, %34
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  %59 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %58, i32 0, i32 1
  %60 = load %struct.ip_mc_list*, %struct.ip_mc_list** %59, align 8
  store %struct.ip_mc_list* %60, %struct.ip_mc_list** %6, align 8
  br label %18

61:                                               ; preds = %18
  %62 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #2

declare dso_local i32 @qeth_l3_get_mac_for_ipm(i32, i8*, i32) #2

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @qeth_l3_add_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #2

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
