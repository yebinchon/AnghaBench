; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_reset_vpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_reset_vpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@VXGE_HW_OK = common dso_local global i64 0, align 8
@__VXGE_STATE_RESET_CARD = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vxge_hw_vpath_recover_from_resetfailed for vpath:%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"vxge_hw_vpath_reset failed forvpath:%d\00", align 1
@VXGE_HW_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*, i32)* @vxge_reset_vpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_reset_vpath(%struct.vxgedev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxgedev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @VXGE_HW_OK, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %11 = call i64 @is_vxge_card_up(%struct.vxgedev* %10)
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

18:                                               ; preds = %2
  %19 = load i32, i32* @__VXGE_STATE_RESET_CARD, align 4
  %20 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %21 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %146

25:                                               ; preds = %18
  %26 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %27 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %25
  %36 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %37 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @vxge_hw_vpath_reset(i64 %43)
  %45 = load i64, i64* @VXGE_HW_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  %48 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %49 = call i64 @is_vxge_card_up(%struct.vxgedev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %53 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @vxge_hw_vpath_recover_from_reset(i64 %59)
  %61 = load i64, i64* @VXGE_HW_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load i32, i32* @VXGE_ERR, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @vxge_debug_init(i32 %64, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %146

68:                                               ; preds = %51, %47
  br label %74

69:                                               ; preds = %35
  %70 = load i32, i32* @VXGE_ERR, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @vxge_debug_init(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %146

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %25
  %76 = load i32, i32* @VXGE_HW_FAIL, align 4
  store i32 %76, i32* %3, align 4
  br label %146

77:                                               ; preds = %74
  %78 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %79 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = call i32 @vxge_restore_vpath_mac_addr(%struct.TYPE_5__* %83)
  %85 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %86 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = call i32 @vxge_restore_vpath_vid_table(%struct.TYPE_5__* %90)
  %92 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %93 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @vxge_hw_vpath_bcast_enable(i64 %99)
  %101 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @vxge_vpath_intr_enable(%struct.vxgedev* %101, i32 %102)
  %104 = call i32 (...) @smp_wmb()
  %105 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %106 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @vxge_hw_vpath_enable(i64 %112)
  %114 = call i32 (...) @smp_wmb()
  %115 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %116 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @vxge_hw_vpath_rx_doorbell_init(i64 %122)
  %124 = load i64, i64* @VXGE_HW_OK, align 8
  %125 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %126 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i64 %124, i64* %132, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %135 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %134, i32 0, i32 1
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  %137 = load %struct.vxgedev*, %struct.vxgedev** %4, align 8
  %138 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = call i32 @vxge_wake_tx_queue(i32* %143, i32* null)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %77, %75, %69, %63, %24, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_vxge_card_up(%struct.vxgedev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @vxge_hw_vpath_reset(i64) #1

declare dso_local i64 @vxge_hw_vpath_recover_from_reset(i64) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

declare dso_local i32 @vxge_restore_vpath_mac_addr(%struct.TYPE_5__*) #1

declare dso_local i32 @vxge_restore_vpath_vid_table(%struct.TYPE_5__*) #1

declare dso_local i32 @vxge_hw_vpath_bcast_enable(i64) #1

declare dso_local i32 @vxge_vpath_intr_enable(%struct.vxgedev*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @vxge_hw_vpath_enable(i64) #1

declare dso_local i32 @vxge_hw_vpath_rx_doorbell_init(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vxge_wake_tx_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
