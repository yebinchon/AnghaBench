; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_setifbcnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_setifbcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { i32, %struct.aoeif*, %struct.aoedev* }
%struct.aoeif = type { i32, %struct.net_device* }
%struct.aoedev = type { i32 }
%struct.net_device = type { i32 }

@NAOEIFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"aoe: device setifbcnt failure; too many interfaces.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoetgt*, %struct.net_device*, i32)* @setifbcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setifbcnt(%struct.aoetgt* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.aoetgt*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aoedev*, align 8
  %8 = alloca %struct.aoeif*, align 8
  %9 = alloca %struct.aoeif*, align 8
  %10 = alloca i32, align 4
  store %struct.aoetgt* %0, %struct.aoetgt** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.aoetgt*, %struct.aoetgt** %4, align 8
  %12 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %11, i32 0, i32 2
  %13 = load %struct.aoedev*, %struct.aoedev** %12, align 8
  store %struct.aoedev* %13, %struct.aoedev** %7, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.aoetgt*, %struct.aoetgt** %4, align 8
  %16 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %15, i32 0, i32 1
  %17 = load %struct.aoeif*, %struct.aoeif** %16, align 8
  store %struct.aoeif* %17, %struct.aoeif** %8, align 8
  %18 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %19 = load i32, i32* @NAOEIFS, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %18, i64 %20
  store %struct.aoeif* %21, %struct.aoeif** %9, align 8
  br label %22

22:                                               ; preds = %54, %3
  %23 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %24 = load %struct.aoeif*, %struct.aoeif** %9, align 8
  %25 = icmp ult %struct.aoeif* %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %28 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %27, i32 0, i32 1
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = icmp eq %struct.net_device* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %57

32:                                               ; preds = %26
  %33 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %34 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %33, i32 0, i32 1
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = icmp eq %struct.net_device* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %41 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %53

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %45 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %50 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %56 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %55, i32 1
  store %struct.aoeif* %56, %struct.aoeif** %8, align 8
  br label %22

57:                                               ; preds = %31, %22
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = icmp ne %struct.net_device* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %62 = load %struct.aoeif*, %struct.aoeif** %9, align 8
  %63 = icmp eq %struct.aoeif* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %81

66:                                               ; preds = %60
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i32 @dev_hold(%struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %71 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %70, i32 0, i32 1
  store %struct.net_device* %69, %struct.net_device** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %74 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %57
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.aoetgt*, %struct.aoetgt** %4, align 8
  %78 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %80 = call i32 @setdbcnt(%struct.aoedev* %79)
  br label %81

81:                                               ; preds = %75, %64
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @setdbcnt(%struct.aoedev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
