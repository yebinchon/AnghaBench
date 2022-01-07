; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_control_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_control_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ap_data* }
%struct.ap_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.mac_entry = type { i8* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"MAC policy: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"MAC entries: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"MAC list:\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ap_control_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_control_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ap_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mac_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.ap_data*, %struct.ap_data** %10, align 8
  store %struct.ap_data* %11, %struct.ap_data** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.ap_data*, %struct.ap_data** %6, align 8
  %17 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %23 [
    i32 128, label %20
    i32 130, label %21
    i32 129, label %22
  ]

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %24

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %24

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %24

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.ap_data*, %struct.ap_data** %6, align 8
  %30 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to %struct.mac_entry*
  store %struct.mac_entry* %38, %struct.mac_entry** %8, align 8
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.mac_entry*, %struct.mac_entry** %8, align 8
  %41 = getelementptr inbounds %struct.mac_entry, %struct.mac_entry* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
