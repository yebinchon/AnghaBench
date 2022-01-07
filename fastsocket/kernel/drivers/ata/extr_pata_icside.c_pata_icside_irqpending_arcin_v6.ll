; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_icside.c_pata_icside_irqpending_arcin_v6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_icside.c_pata_icside_irqpending_arcin_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { %struct.pata_icside_state* }
%struct.pata_icside_state = type { i64 }

@ICS_ARCIN_V6_INTRSTAT_1 = common dso_local global i64 0, align 8
@ICS_ARCIN_V6_INTRSTAT_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expansion_card*)* @pata_icside_irqpending_arcin_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_icside_irqpending_arcin_v6(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.pata_icside_state*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %4 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %5 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %4, i32 0, i32 0
  %6 = load %struct.pata_icside_state*, %struct.pata_icside_state** %5, align 8
  store %struct.pata_icside_state* %6, %struct.pata_icside_state** %3, align 8
  %7 = load %struct.pata_icside_state*, %struct.pata_icside_state** %3, align 8
  %8 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ICS_ARCIN_V6_INTRSTAT_1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.pata_icside_state*, %struct.pata_icside_state** %3, align 8
  %17 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICS_ARCIN_V6_INTRSTAT_2, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readb(i64 %20)
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %15, %1
  %25 = phi i1 [ true, %1 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
