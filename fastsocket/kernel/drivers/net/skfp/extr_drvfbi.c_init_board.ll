; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_drvfbi.c_init_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_drvfbi.c_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@B0_DAS = common dso_local global i32 0, align 4
@DAS_AVAIL = common dso_local global i32 0, align 4
@SMT_SAS = common dso_local global i32 0, align 4
@SMT_DAS = common dso_local global i32 0, align 4
@DAS_BYP_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_board(%struct.s_smc* %0, i32* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %6 = call i32 @card_start(%struct.s_smc* %5)
  %7 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @read_address(%struct.s_smc* %7, i32* %8)
  %10 = load i32, i32* @B0_DAS, align 4
  %11 = call i32 @ADDR(i32 %10)
  %12 = call i32 @inp(i32 %11)
  %13 = load i32, i32* @DAS_AVAIL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @SMT_SAS, align 4
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @SMT_DAS, align 4
  %23 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %24 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @B0_DAS, align 4
  %28 = call i32 @ADDR(i32 %27)
  %29 = call i32 @inp(i32 %28)
  %30 = load i32, i32* @DAS_BYP_ST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %39 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @card_start(%struct.s_smc*) #1

declare dso_local i32 @read_address(%struct.s_smc*, i32*) #1

declare dso_local i32 @inp(i32) #1

declare dso_local i32 @ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
