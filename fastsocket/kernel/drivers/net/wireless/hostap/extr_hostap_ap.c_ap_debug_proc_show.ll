; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_debug_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_debug_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ap_data* }
%struct.ap_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"BridgedUnicastFrames=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"BridgedMulticastFrames=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"max_inactivity=%u\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"bridge_packets=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"nullfunc_ack=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"autom_ap_wds=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"auth_algs=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tx_drop_nonassoc=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ap_debug_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_debug_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ap_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.ap_data*, %struct.ap_data** %7, align 8
  store %struct.ap_data* %8, %struct.ap_data** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %11 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %16 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %21 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %22, %23
  %25 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %28 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %33 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %38 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %43 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %42, i32 0, i32 7
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %50 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
