; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_empty_Bfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_empty_Bfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_ch = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_6__*, %struct.w6692_hw* }
%struct.TYPE_6__ = type { i64 }
%struct.w6692_hw = type { i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: empty_Bfifo %d\0A\00", align 1
@ISDN_P_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: empty_Bfifo ISDN_P_NONE\0A\00", align 1
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RACK = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: B receive out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: empty_Bfifo incoming packet too large\0A\00", align 1
@W_B_RFIFO = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_DFIFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"B%1d-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_ch*, i32)* @W6692_empty_Bfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_empty_Bfifo(%struct.w6692_ch* %0, i32 %1) #0 {
  %3 = alloca %struct.w6692_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.w6692_hw*, align 8
  %6 = alloca i32*, align 8
  store %struct.w6692_ch* %0, %struct.w6692_ch** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %8 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %9, align 8
  store %struct.w6692_hw* %10, %struct.w6692_hw** %5, align 8
  %11 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %12 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %17 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ISDN_P_NONE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %2
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %27 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %31 = load i32, i32* @W_B_CMDR, align 4
  %32 = load i32, i32* @W_B_CMDR_RACK, align 4
  %33 = load i32, i32* @W_B_CMDR_RACT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @WriteW6692B(%struct.w6692_ch* %30, i32 %31, i32 %34)
  %36 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %37 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %43 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @skb_trim(%struct.TYPE_6__* %45, i32 0)
  br label %47

47:                                               ; preds = %41, %25
  br label %161

48:                                               ; preds = %2
  %49 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %50 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %85, label %54

54:                                               ; preds = %48
  %55 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %56 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.TYPE_6__* @mI_alloc_skb(i64 %58, i32 %59)
  %61 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %62 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %65 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %54
  %74 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %75 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %79 = load i32, i32* @W_B_CMDR, align 4
  %80 = load i32, i32* @W_B_CMDR_RACK, align 4
  %81 = load i32, i32* @W_B_CMDR_RACT, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @WriteW6692B(%struct.w6692_ch* %78, i32 %79, i32 %82)
  br label %161

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84, %48
  %86 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %87 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %96 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %94, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %85
  %101 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %102 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  %105 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %106 = load i32, i32* @W_B_CMDR, align 4
  %107 = load i32, i32* @W_B_CMDR_RACK, align 4
  %108 = load i32, i32* @W_B_CMDR_RACT, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @WriteW6692B(%struct.w6692_ch* %105, i32 %106, i32 %109)
  %111 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %112 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @skb_trim(%struct.TYPE_6__* %114, i32 0)
  br label %161

116:                                              ; preds = %85
  %117 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %118 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32* @skb_put(%struct.TYPE_6__* %120, i32 %121)
  store i32* %122, i32** %6, align 8
  %123 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %124 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @W_B_RFIFO, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @insb(i64 %127, i32* %128, i32 %129)
  %131 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %132 = load i32, i32* @W_B_CMDR, align 4
  %133 = load i32, i32* @W_B_CMDR_RACK, align 4
  %134 = load i32, i32* @W_B_CMDR_RACT, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @WriteW6692B(%struct.w6692_ch* %131, i32 %132, i32 %135)
  %137 = load i32, i32* @debug, align 4
  %138 = load i32, i32* @DEBUG_HW_DFIFO, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %116
  %142 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %143 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %146 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %150 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @snprintf(i32 %144, i32 63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %148, i8* %151, i32 %152)
  %154 = load %struct.w6692_hw*, %struct.w6692_hw** %5, align 8
  %155 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @print_hex_dump_bytes(i32 %156, i32 %157, i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %47, %73, %100, %141, %116
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @mI_alloc_skb(i64, i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32* @skb_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @insb(i64, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
