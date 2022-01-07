; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_show_rx_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_show_rx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_2__*, %struct.spider_net_descr_chain }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.spider_net_descr_chain = type { i32, %struct.spider_net_descr*, %struct.spider_net_descr*, %struct.spider_net_descr* }
%struct.spider_net_descr = type { %struct.spider_net_descr*, i32, i32, %struct.spider_net_hw_descr* }
%struct.spider_net_hw_descr = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Total number of descrs=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Chain tail located at descr=%d, status=0x%x\0A\00", align 1
@SPIDER_NET_GDACTDPA = common dso_local global i32 0, align 4
@SPIDER_NET_GDACNEXTDA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Chain head is at %d, head status=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"HW curr desc (GDACTDPA) is at %d, status=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"HW next desc (GDACNEXTDA) is at %d, status=0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"chain is cut at %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Have %d (from %d to %d) descrs with stat=0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Last %d descrs with stat=0x%08x for a total of %d descrs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*)* @show_rx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_rx_chain(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca %struct.spider_net_descr_chain*, align 8
  %4 = alloca %struct.spider_net_descr*, align 8
  %5 = alloca %struct.spider_net_descr*, align 8
  %6 = alloca %struct.spider_net_hw_descr*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %17 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %18 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %17, i32 0, i32 1
  store %struct.spider_net_descr_chain* %18, %struct.spider_net_descr_chain** %3, align 8
  %19 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %20 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %19, i32 0, i32 3
  %21 = load %struct.spider_net_descr*, %struct.spider_net_descr** %20, align 8
  store %struct.spider_net_descr* %21, %struct.spider_net_descr** %4, align 8
  %22 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  store %struct.spider_net_descr* %22, %struct.spider_net_descr** %5, align 8
  %23 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %24 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %23, i32 0, i32 3
  %25 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %24, align 8
  store %struct.spider_net_hw_descr* %25, %struct.spider_net_hw_descr** %6, align 8
  %26 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %27 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.device* %29, %struct.device** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %31 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %32 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %31, i32 0, i32 1
  %33 = load %struct.spider_net_descr*, %struct.spider_net_descr** %32, align 8
  %34 = ptrtoint %struct.spider_net_descr* %30 to i64
  %35 = ptrtoint %struct.spider_net_descr* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 24
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %40 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %14, align 4
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %44 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %52 = load i32, i32* @SPIDER_NET_GDACTDPA, align 4
  %53 = call i32 @spider_net_read_reg(%struct.spider_net_card* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %55 = load i32, i32* @SPIDER_NET_GDACNEXTDA, align 4
  %56 = call i32 @spider_net_read_reg(%struct.spider_net_card* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %156, %1
  %59 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %60 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %59, i32 0, i32 3
  %61 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %60, align 8
  store %struct.spider_net_hw_descr* %61, %struct.spider_net_hw_descr** %6, align 8
  %62 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %63 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %64 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %63, i32 0, i32 1
  %65 = load %struct.spider_net_descr*, %struct.spider_net_descr** %64, align 8
  %66 = ptrtoint %struct.spider_net_descr* %62 to i64
  %67 = ptrtoint %struct.spider_net_descr* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 24
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %72 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  %74 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %75 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %76 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %75, i32 0, i32 2
  %77 = load %struct.spider_net_descr*, %struct.spider_net_descr** %76, align 8
  %78 = icmp eq %struct.spider_net_descr* %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %58
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %58
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %87 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %84
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %98 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %108 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %121 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %128 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = srem i32 %126, %129
  store i32 %130, i32* %15, align 4
  %131 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %132 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %133, %134
  %136 = sub nsw i32 %135, 1
  %137 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %3, align 8
  %138 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = srem i32 %136, %139
  store i32 %140, i32* %16, align 4
  %141 = load %struct.device*, %struct.device** %7, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %141, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %119, %115
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  %153 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %154 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %153, i32 0, i32 0
  %155 = load %struct.spider_net_descr*, %struct.spider_net_descr** %154, align 8
  store %struct.spider_net_descr* %155, %struct.spider_net_descr** %5, align 8
  br label %156

156:                                              ; preds = %148
  %157 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %158 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %159 = icmp ne %struct.spider_net_descr* %157, %158
  br i1 %159, label %58, label %160

160:                                              ; preds = %156
  %161 = load %struct.device*, %struct.device** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %161, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
