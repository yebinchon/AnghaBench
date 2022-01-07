; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.qeth_card*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"alloccrd\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"iptbdnom\00", align 1
@qeth_core_sl_print = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_card* ()* @qeth_alloc_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_card* @qeth_alloc_card() #0 {
  %1 = alloca %struct.qeth_card*, align 8
  %2 = alloca %struct.qeth_card*, align 8
  %3 = load i32, i32* @SETUP, align 4
  %4 = call i32 @QETH_DBF_TEXT(i32 %3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @GFP_DMA, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = or i32 %5, %6
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.qeth_card*
  store %struct.qeth_card* %9, %struct.qeth_card** %2, align 8
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = icmp ne %struct.qeth_card* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %64

13:                                               ; preds = %0
  %14 = load i32, i32* @SETUP, align 4
  %15 = call i32 @QETH_DBF_HEX(i32 %14, i32 2, %struct.qeth_card** %2, i32 8)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 4, i32 %16)
  %18 = bitcast i8* %17 to %struct.qeth_card*
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 0
  store %struct.qeth_card* %18, %struct.qeth_card** %20, align 8
  %21 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = load %struct.qeth_card*, %struct.qeth_card** %22, align 8
  %24 = icmp ne %struct.qeth_card* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* @SETUP, align 4
  %27 = call i32 @QETH_DBF_TEXT(i32 %26, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %61

28:                                               ; preds = %13
  %29 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 1
  %31 = call i64 @qeth_setup_channel(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %56

34:                                               ; preds = %28
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 4
  %37 = call i64 @qeth_setup_channel(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %34
  %41 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load i32, i32* @qeth_core_sl_print, align 4
  %45 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 2
  %50 = call i32 @register_service_level(%struct.TYPE_4__* %49)
  %51 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  store %struct.qeth_card* %51, %struct.qeth_card** %1, align 8
  br label %65

52:                                               ; preds = %39
  %53 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 1
  %55 = call i32 @qeth_clean_channel(i32* %54)
  br label %56

56:                                               ; preds = %52, %33
  %57 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 0
  %59 = load %struct.qeth_card*, %struct.qeth_card** %58, align 8
  %60 = call i32 @kfree(%struct.qeth_card* %59)
  br label %61

61:                                               ; preds = %56, %25
  %62 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %63 = call i32 @kfree(%struct.qeth_card* %62)
  br label %64

64:                                               ; preds = %61, %12
  store %struct.qeth_card* null, %struct.qeth_card** %1, align 8
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.qeth_card*, %struct.qeth_card** %1, align 8
  ret %struct.qeth_card* %66
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i64 @qeth_setup_channel(i32*) #1

declare dso_local i32 @register_service_level(%struct.TYPE_4__*) #1

declare dso_local i32 @qeth_clean_channel(i32*) #1

declare dso_local i32 @kfree(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
