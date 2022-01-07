; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 (i32, i64, i64*, i64)* }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"%s: B%1d %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: B receive out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: overrun %d\0A\00", align 1
@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_RFIFOB = common dso_local global i64 0, align 8
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"B%1d-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*, i64)* @hscx_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_empty_fifo(%struct.hscx_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.hscx_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.hscx_hw* %0, %struct.hscx_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %7 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %12 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %4, align 8
  %17 = call i32 (i8*, i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10, i64 %15, i64 %16)
  %18 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %19 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %2
  %24 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %25 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.TYPE_8__* @mI_alloc_skb(i64 %27, i32 %28)
  %30 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %31 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %34 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %23
  %39 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %40 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %46 = call i32 @hscx_cmdr(%struct.hscx_hw* %45, i32 128)
  br label %167

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %50 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %58 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %56, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %48
  %63 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %64 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %69 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 (i8*, i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %67, i64 %75)
  %77 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %78 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @skb_trim(%struct.TYPE_8__* %80, i32 0)
  %82 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %83 = call i32 @hscx_cmdr(%struct.hscx_hw* %82, i32 128)
  br label %167

84:                                               ; preds = %48
  %85 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %86 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i64* @skb_put(%struct.TYPE_8__* %88, i64 %89)
  store i64* %90, i64** %5, align 8
  %91 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %92 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %84
  %100 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %101 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32 (i32, i64, i64*, i64)*, i32 (i32, i64, i64*, i64)** %103, align 8
  %105 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %106 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %111 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IPACX_RFIFOB, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i64*, i64** %5, align 8
  %116 = load i64, i64* %4, align 8
  %117 = call i32 %104(i32 %109, i64 %114, i64* %115, i64 %116)
  br label %135

118:                                              ; preds = %84
  %119 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %120 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32 (i32, i64, i64*, i64)*, i32 (i32, i64, i64*, i64)** %122, align 8
  %124 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %125 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %130 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %5, align 8
  %133 = load i64, i64* %4, align 8
  %134 = call i32 %123(i32 %128, i64 %131, i64* %132, i64 %133)
  br label %135

135:                                              ; preds = %118, %99
  %136 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %137 = call i32 @hscx_cmdr(%struct.hscx_hw* %136, i32 128)
  %138 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %139 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %135
  %146 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %147 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %150 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %154 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %4, align 8
  %159 = call i32 @snprintf(i32 %148, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %152, i8* %157, i64 %158)
  %160 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %161 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %164 = load i64*, i64** %5, align 8
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @print_hex_dump_bytes(i32 %162, i32 %163, i64* %164, i64 %165)
  br label %167

167:                                              ; preds = %38, %62, %145, %135
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i64, ...) #1

declare dso_local %struct.TYPE_8__* @mI_alloc_skb(i64, i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_8__*, i32) #1

declare dso_local i64* @skb_put(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
