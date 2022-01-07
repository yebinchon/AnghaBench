; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_card_remove_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_card_remove_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, i32, i32 }
%struct.pnp_card_driver = type { %struct.TYPE_2__, i32 (i32)* }
%struct.TYPE_2__ = type { i32 (%struct.pnp_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @card_remove_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @card_remove_first(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.pnp_card_driver*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.pnp_card_driver* @to_pnp_card_driver(i32 %6)
  store %struct.pnp_card_driver* %7, %struct.pnp_card_driver** %3, align 8
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %3, align 8
  %14 = icmp ne %struct.pnp_card_driver* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %39

16:                                               ; preds = %12
  %17 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %3, align 8
  %18 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %17, i32 0, i32 1
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %3, align 8
  %23 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %22, i32 0, i32 1
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %26 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %24(i32 %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.pnp_card_driver*, %struct.pnp_card_driver** %3, align 8
  %31 = getelementptr inbounds %struct.pnp_card_driver, %struct.pnp_card_driver* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 (%struct.pnp_dev*)* @card_remove, i32 (%struct.pnp_dev*)** %32, align 8
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %38 = call i32 @card_remove(%struct.pnp_dev* %37)
  br label %39

39:                                               ; preds = %29, %15
  ret void
}

declare dso_local %struct.pnp_card_driver* @to_pnp_card_driver(i32) #1

declare dso_local i32 @card_remove(%struct.pnp_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
