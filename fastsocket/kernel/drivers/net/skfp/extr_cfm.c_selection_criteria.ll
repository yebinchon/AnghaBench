; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_cfm.c_selection_criteria.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_cfm.c_selection_criteria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.s_phy = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PB = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.s_phy*)* @selection_criteria to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selection_criteria(%struct.s_smc* %0, %struct.s_phy* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.s_phy*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.s_phy* %1, %struct.s_phy** %4, align 8
  %5 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %6 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %44 [
    i32 131, label %10
    i32 130, label %32
    i32 128, label %36
    i32 129, label %40
  ]

10:                                               ; preds = %2
  %11 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %12 = call i32 @THRU_ENABLED(%struct.s_smc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @PB, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %26 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %31

27:                                               ; preds = %14, %10
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %30 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  br label %44

32:                                               ; preds = %2
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %35 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %44

36:                                               ; preds = %2
  %37 = load i8*, i8** @FALSE, align 8
  %38 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %39 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %44

40:                                               ; preds = %2
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %43 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %2, %40, %36, %32, %31
  ret void
}

declare dso_local i32 @THRU_ENABLED(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
