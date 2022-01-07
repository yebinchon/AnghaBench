; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_init_fill_rq1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_init_fill_rq1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"NR_RQ1A bigger than skb array len\0A\00", align 1
@EHEA_L_PKT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"No enough memory to allocate skb array\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port_res*, i32)* @ehea_init_fill_rq1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_init_fill_rq1(%struct.ehea_port_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_port_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %9 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  store %struct.sk_buff** %11, %struct.sk_buff*** %5, align 8
  %12 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %13 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %19 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @ehea_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %57

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load i32, i32* @EHEA_L_PKT_SIZE, align 4
  %33 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %31, i32 %32)
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  store %struct.sk_buff* %33, %struct.sk_buff** %37, align 8
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = call i32 @ehea_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %50

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %26

50:                                               ; preds = %44, %26
  %51 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %52 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @ehea_update_rq1a(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_info(i8*) #1

declare dso_local i32 @ehea_update_rq1a(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
