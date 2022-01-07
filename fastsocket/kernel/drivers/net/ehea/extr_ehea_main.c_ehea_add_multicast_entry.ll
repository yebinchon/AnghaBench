; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_add_multicast_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_add_multicast_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ehea_mc_list = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no mem for mcl_entry\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@H_REG_BCMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed registering mcast MAC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port*, i32*)* @ehea_add_multicast_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_add_multicast_entry(%struct.ehea_port* %0, i32* %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ehea_mc_list*, align 8
  %6 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ehea_mc_list* @kzalloc(i32 8, i32 %7)
  store %struct.ehea_mc_list* %8, %struct.ehea_mc_list** %5, align 8
  %9 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %10 = icmp ne %struct.ehea_mc_list* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @ehea_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %15 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %14, i32 0, i32 0
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %18 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %17, i32 0, i32 1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memcpy(i32* %18, i32* %19, i32 %20)
  %22 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %23 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %24 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @H_REG_BCMC, align 4
  %27 = call i32 @ehea_multicast_reg_helper(%struct.ehea_port* %22, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %13
  %31 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %32 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %31, i32 0, i32 0
  %33 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %34 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %32, i32* %36)
  br label %42

38:                                               ; preds = %13
  %39 = call i32 @ehea_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %41 = call i32 @kfree(%struct.ehea_mc_list* %40)
  br label %42

42:                                               ; preds = %11, %38, %30
  ret void
}

declare dso_local %struct.ehea_mc_list* @kzalloc(i32, i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ehea_multicast_reg_helper(%struct.ehea_port*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ehea_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
