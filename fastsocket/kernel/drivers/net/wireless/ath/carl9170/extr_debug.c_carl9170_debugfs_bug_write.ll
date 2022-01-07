; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_bug_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_bug_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CARL9170_RR_USER_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ar9170*, i8*, i64)* @carl9170_debugfs_bug_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @carl9170_debugfs_bug_write(%struct.ar9170* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* @EINVAL, align 8
  %13 = sub i64 0, %12
  store i64 %13, i64* %4, align 8
  br label %72

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %63 [
    i32 70, label %19
    i32 82, label %22
    i32 77, label %32
    i32 80, label %41
  ]

19:                                               ; preds = %14
  %20 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %21 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %66

22:                                               ; preds = %14
  %23 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %24 = call i32 @IS_STARTED(%struct.ar9170* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %70

29:                                               ; preds = %22
  %30 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %66

32:                                               ; preds = %14
  %33 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %34 = call i32 @carl9170_mac_reset(%struct.ar9170* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %37, %32
  br label %70

41:                                               ; preds = %14
  %42 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %43 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %51 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_6__* %54)
  %56 = call i32 @carl9170_set_channel(%struct.ar9170* %42, i32 %49, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %59, %41
  br label %70

63:                                               ; preds = %14
  %64 = load i64, i64* @EINVAL, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %4, align 8
  br label %72

66:                                               ; preds = %29, %19
  %67 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %68 = load i32, i32* @CARL9170_RR_USER_REQUEST, align 4
  %69 = call i32 @carl9170_restart(%struct.ar9170* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62, %40, %26
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %63, %11
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @IS_STARTED(%struct.ar9170*) #1

declare dso_local i32 @carl9170_mac_reset(%struct.ar9170*) #1

declare dso_local i32 @carl9170_set_channel(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_6__*) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
