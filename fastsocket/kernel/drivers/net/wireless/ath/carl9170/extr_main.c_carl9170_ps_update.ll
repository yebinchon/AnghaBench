; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_ps_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_ps_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_ps_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_ps_update(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %7 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %13 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %11, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %23 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %20
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @carl9170_powersave(%struct.ar9170* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %76

35:                                               ; preds = %27
  %36 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %37 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @jiffies, align 8
  %46 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %47 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %45 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @jiffies_to_msecs(i8* %53)
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  br label %58

58:                                               ; preds = %44, %41, %35
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** @jiffies, align 8
  %63 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %64 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** @jiffies, align 8
  %68 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %69 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %73 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %20
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %33
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @carl9170_powersave(%struct.ar9170*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
