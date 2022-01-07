; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_link_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_link_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Link UP\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Link DOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_link_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_link_check(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %5 = load %struct.enic*, %struct.enic** %2, align 8
  %6 = getelementptr inbounds %struct.enic, %struct.enic* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @vnic_dev_link_status(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.enic*, %struct.enic** %2, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_carrier_ok(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load %struct.enic*, %struct.enic** %2, align 8
  %20 = getelementptr inbounds %struct.enic, %struct.enic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_info(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.enic*, %struct.enic** %2, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_carrier_on(i32 %25)
  br label %43

27:                                               ; preds = %15, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.enic*, %struct.enic** %2, align 8
  %35 = getelementptr inbounds %struct.enic, %struct.enic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netdev_info(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.enic*, %struct.enic** %2, align 8
  %39 = getelementptr inbounds %struct.enic, %struct.enic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_carrier_off(i32 %40)
  br label %42

42:                                               ; preds = %33, %30, %27
  br label %43

43:                                               ; preds = %42, %18
  ret void
}

declare dso_local i32 @vnic_dev_link_status(i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
