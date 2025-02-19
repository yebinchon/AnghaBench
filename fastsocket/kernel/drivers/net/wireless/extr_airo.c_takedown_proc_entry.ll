; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_takedown_proc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_takedown_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.airo_info = type { i8*, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [6 x i8] c"Stats\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"StatsDelta\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"APList\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"BSSList\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"WepKey\00", align 1
@airo_entry = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.airo_info*)* @takedown_proc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @takedown_proc_entry(%struct.net_device* %0, %struct.airo_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.airo_info* %1, %struct.airo_info** %5, align 8
  %6 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %7 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %16)
  %18 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %19 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %20)
  %22 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %24)
  %26 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %27 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %28)
  %30 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %31 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %32)
  %34 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %35 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_3__* %36)
  %38 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %39 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_3__* %40)
  %42 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_3__* %44)
  %46 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %47 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @airo_entry, align 8
  %50 = call i32 @remove_proc_entry(i8* %48, %struct.TYPE_3__* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %13, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @remove_proc_entry(i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
