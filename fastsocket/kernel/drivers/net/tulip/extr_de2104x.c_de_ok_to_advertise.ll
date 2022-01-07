; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_ok_to_advertise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_ok_to_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32 }

@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_BNC = common dso_local global i32 0, align 4
@ADVERTISED_AUI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*, i32)* @de_ok_to_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_ok_to_advertise(%struct.de_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.de_private*, align 8
  %5 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %62 [
    i32 129, label %7
    i32 131, label %26
    i32 132, label %35
    i32 130, label %44
    i32 128, label %53
  ]

7:                                                ; preds = %2
  %8 = load %struct.de_private*, %struct.de_private** %4, align 8
  %9 = getelementptr inbounds %struct.de_private, %struct.de_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %63

15:                                               ; preds = %7
  %16 = load %struct.de_private*, %struct.de_private** %4, align 8
  %17 = getelementptr inbounds %struct.de_private, %struct.de_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %20 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %15
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.de_private*, %struct.de_private** %4, align 8
  %28 = getelementptr inbounds %struct.de_private, %struct.de_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ADVERTISED_BNC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

34:                                               ; preds = %26
  br label %62

35:                                               ; preds = %2
  %36 = load %struct.de_private*, %struct.de_private** %4, align 8
  %37 = getelementptr inbounds %struct.de_private, %struct.de_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ADVERTISED_AUI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %63

43:                                               ; preds = %35
  br label %62

44:                                               ; preds = %2
  %45 = load %struct.de_private*, %struct.de_private** %4, align 8
  %46 = getelementptr inbounds %struct.de_private, %struct.de_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %63

52:                                               ; preds = %44
  br label %62

53:                                               ; preds = %2
  %54 = load %struct.de_private*, %struct.de_private** %4, align 8
  %55 = getelementptr inbounds %struct.de_private, %struct.de_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %2, %61, %52, %43, %34, %25
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %51, %42, %33, %24, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
