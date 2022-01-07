; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_add_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_add_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_mc_mac = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@IPA_CMD_SETVMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i32*, i32)* @qeth_l2_add_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l2_add_mc(%struct.qeth_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_mc_mac*, align 8
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.qeth_mc_mac* @kmalloc(i32 16, i32 %9)
  store %struct.qeth_mc_mac* %10, %struct.qeth_mc_mac** %7, align 8
  %11 = load %struct.qeth_mc_mac*, %struct.qeth_mc_mac** %7, align 8
  %12 = icmp ne %struct.qeth_mc_mac* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.qeth_mc_mac*, %struct.qeth_mc_mac** %7, align 8
  %16 = getelementptr inbounds %struct.qeth_mc_mac, %struct.qeth_mc_mac* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @OSA_ADDR_LEN, align 4
  %20 = call i32 @memcpy(i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* @OSA_ADDR_LEN, align 4
  %22 = load %struct.qeth_mc_mac*, %struct.qeth_mc_mac** %7, align 8
  %23 = getelementptr inbounds %struct.qeth_mc_mac, %struct.qeth_mc_mac* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.qeth_mc_mac*, %struct.qeth_mc_mac** %7, align 8
  %26 = getelementptr inbounds %struct.qeth_mc_mac, %struct.qeth_mc_mac* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @IPA_CMD_SETVMAC, align 4
  %33 = call i32 @qeth_l2_send_setdelmac(%struct.qeth_card* %30, i32* %31, i32 %32, i32* null)
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %14
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @qeth_l2_send_setgroupmac(%struct.qeth_card* %35, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.qeth_mc_mac*, %struct.qeth_mc_mac** %7, align 8
  %43 = getelementptr inbounds %struct.qeth_mc_mac, %struct.qeth_mc_mac* %42, i32 0, i32 1
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %50

47:                                               ; preds = %38
  %48 = load %struct.qeth_mc_mac*, %struct.qeth_mc_mac** %7, align 8
  %49 = call i32 @kfree(%struct.qeth_mc_mac* %48)
  br label %50

50:                                               ; preds = %13, %47, %41
  ret void
}

declare dso_local %struct.qeth_mc_mac* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qeth_l2_send_setdelmac(%struct.qeth_card*, i32*, i32, i32*) #1

declare dso_local i32 @qeth_l2_send_setgroupmac(%struct.qeth_card*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.qeth_mc_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
