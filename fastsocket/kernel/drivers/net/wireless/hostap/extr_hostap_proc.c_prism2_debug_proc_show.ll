; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_proc.c_prism2_debug_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_proc.c_prism2_debug_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"next_txfid=%d next_alloc=%d\0A\00", align 1
@PRISM2_TXFID_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"FID: tx=%04X intransmit=%04X\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FW TX rate control: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"beacon_int=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"dtim_period=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"wds_max_connections=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dev_enabled=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"sw_tick_stuck=%d\0A\00", align 1
@WEP_KEYS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"crypt[%d]=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"pri_only=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pci=%d\0A\00", align 1
@HOSTAP_HW_PCI = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"sram_type=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"no_pri=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prism2_debug_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_debug_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PRISM2_TXFID_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 11
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %116, %42
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @WEP_KEYS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %115

87:                                               ; preds = %77
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 10
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %87
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 10
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %105, i64 %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %101, i32 %113)
  br label %115

115:                                              ; preds = %99, %87, %77
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %73

119:                                              ; preds = %73
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 9
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HOSTAP_HW_PCI, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %138)
  %140 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %143)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
