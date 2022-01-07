; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_al7230b_switch_radio_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_al7230b_switch_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }

@al7230b_switch_radio_off.ioreqs = internal constant [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 129, i32 4 }, %struct.zd_ioreq16 { i32 128, i32 47 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*)* @al7230b_switch_radio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al7230b_switch_radio_off(%struct.zd_rf* %0) #0 {
  %2 = alloca %struct.zd_rf*, align 8
  %3 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %2, align 8
  %4 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %5 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %4)
  store %struct.zd_chip* %5, %struct.zd_chip** %3, align 8
  %6 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* @al7230b_switch_radio_off.ioreqs, i64 0, i64 0))
  %8 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %6, %struct.zd_ioreq16* getelementptr inbounds ([2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* @al7230b_switch_radio_off.ioreqs, i64 0, i64 0), i32 %7)
  ret i32 %8
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
