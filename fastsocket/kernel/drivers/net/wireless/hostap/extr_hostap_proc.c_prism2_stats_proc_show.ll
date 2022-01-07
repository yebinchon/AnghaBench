; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_proc.c_prism2_stats_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_proc.c_prism2_stats_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comm_tallies_sums }
%struct.comm_tallies_sums = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"TxUnicastFrames=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TxMulticastframes=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"TxFragments=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"TxUnicastOctets=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"TxMulticastOctets=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"TxDeferredTransmissions=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"TxSingleRetryFrames=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"TxMultipleRetryFrames=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"TxRetryLimitExceeded=%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"TxDiscards=%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"RxUnicastFrames=%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"RxMulticastFrames=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"RxFragments=%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"RxUnicastOctets=%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"RxMulticastOctets=%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"RxFCSErrors=%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"RxDiscardsNoBuffer=%u\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"TxDiscardsWrongSA=%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"RxDiscardsWEPUndecryptable=%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"RxMessageInMsgFragments=%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"RxMessageInBadMsgFragments=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prism2_stats_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_stats_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.comm_tallies_sums*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.comm_tallies_sums* %11, %struct.comm_tallies_sums** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %14 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %19 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %18, i32 0, i32 19
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %24 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %23, i32 0, i32 18
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %29 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %34 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %39 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %44 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %49 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %54 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %59 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %64 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %69 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %74 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %79 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %84 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %85)
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %89 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %94 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %99 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %104 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %105)
  %107 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %108 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %109 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %110)
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load %struct.comm_tallies_sums*, %struct.comm_tallies_sums** %6, align 8
  %114 = getelementptr inbounds %struct.comm_tallies_sums, %struct.comm_tallies_sums* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %115)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
