; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_txstat_read_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_txstat_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.b43_txstatus_log }
%struct.b43_txstatus_log = type { i32, %struct.b43_txstatus* }
%struct.b43_txstatus = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Nothing transmitted, yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [151 x i8] c"b43 TX status reports:\0A\0Aindex | cookie | seq | phy_stat | frame_count | rts_count | supp_reason | pm_indicated | intermediate | for_ampdu | acked\0A---\0A\00", align 1
@B43_NR_LOGGED_TXSTATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"%03d | 0x%04X | 0x%04X | 0x%02X | 0x%X | 0x%X | %u | %u | %u | %u | %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i8*, i64)* @txstat_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txstat_read_file(%struct.b43_wldev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.b43_txstatus_log*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.b43_txstatus*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.b43_txstatus_log* %15, %struct.b43_txstatus_log** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %7, align 8
  %17 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @fappend(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %90

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @fappend(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %7, align 8
  %25 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %22, %86
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @B43_NR_LOGGED_TXSTATUS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %7, align 8
  %35 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %34, i32 0, i32 1
  %36 = load %struct.b43_txstatus*, %struct.b43_txstatus** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %36, i64 %38
  store %struct.b43_txstatus* %39, %struct.b43_txstatus** %11, align 8
  %40 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %41 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %47 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %50 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %53 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %56 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %59 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %62 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %65 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %68 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %71 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.b43_txstatus*, %struct.b43_txstatus** %11, align 8
  %74 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @fappend(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %45, i64 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %44, %33
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %7, align 8
  %82 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %28

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %20
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @fappend(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
