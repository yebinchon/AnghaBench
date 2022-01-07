; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_handle_error_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_handle_error_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"PHY write queue full\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Error interrupt, GHIINT0STS = 0x%08x, GHIINT1STS = 0x%08x, GHIINT2STS = 0x%08x\0A\00", align 1
@SPIDER_NET_GHIINT1STS = common dso_local global i32 0, align 4
@SPIDER_NET_GHIINT2STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*, i32, i32, i32)* @spider_net_handle_error_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_handle_error_irq(%struct.spider_net_card* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spider_net_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %45 [
    i32 138, label %25
    i32 135, label %26
    i32 137, label %27
    i32 136, label %28
    i32 141, label %39
    i32 145, label %40
    i32 149, label %40
    i32 153, label %40
    i32 157, label %40
    i32 144, label %41
    i32 148, label %41
    i32 152, label %41
    i32 156, label %41
    i32 140, label %42
    i32 128, label %43
    i32 142, label %44
  ]

25:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

26:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

27:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

28:                                               ; preds = %23
  %29 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %30 = call i64 @netif_msg_intr(%struct.spider_net_card* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %34 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %32, %28
  store i32 0, i32* %10, align 4
  br label %45

39:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

40:                                               ; preds = %23, %23, %23, %23
  store i32 0, i32* %10, align 4
  br label %45

41:                                               ; preds = %23, %23, %23, %23
  store i32 0, i32* %10, align 4
  br label %45

42:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

43:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

44:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %23, %44, %43, %42, %41, %40, %39, %38, %27, %26, %25
  br label %46

46:                                               ; preds = %45, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %14

50:                                               ; preds = %14
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %125

54:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %121, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %58, label %124

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %120

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %118 [
    i32 129, label %66
    i32 131, label %67
    i32 132, label %67
    i32 133, label %67
    i32 134, label %67
    i32 130, label %67
    i32 139, label %89
    i32 146, label %90
    i32 150, label %90
    i32 154, label %90
    i32 158, label %90
    i32 143, label %104
    i32 147, label %104
    i32 151, label %104
    i32 155, label %104
  ]

66:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %119

67:                                               ; preds = %64, %64, %64, %64, %64
  %68 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %69 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %74 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %76 = call i32 @spider_net_resync_head_ptr(%struct.spider_net_card* %75)
  %77 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %78 = call i32 @spider_net_refill_rx_chain(%struct.spider_net_card* %77)
  %79 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %80 = call i32 @spider_net_enable_rxdmac(%struct.spider_net_card* %79)
  %81 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %82 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %86 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %85, i32 0, i32 2
  %87 = call i32 @napi_schedule(i32* %86)
  br label %88

88:                                               ; preds = %72, %67
  store i32 0, i32* %10, align 4
  br label %119

89:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %119

90:                                               ; preds = %64, %64, %64, %64
  %91 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %92 = call i32 @spider_net_resync_head_ptr(%struct.spider_net_card* %91)
  %93 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %94 = call i32 @spider_net_refill_rx_chain(%struct.spider_net_card* %93)
  %95 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %96 = call i32 @spider_net_enable_rxdmac(%struct.spider_net_card* %95)
  %97 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %98 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %102 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %101, i32 0, i32 2
  %103 = call i32 @napi_schedule(i32* %102)
  store i32 0, i32* %10, align 4
  br label %119

104:                                              ; preds = %64, %64, %64, %64
  %105 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %106 = call i32 @spider_net_resync_head_ptr(%struct.spider_net_card* %105)
  %107 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %108 = call i32 @spider_net_refill_rx_chain(%struct.spider_net_card* %107)
  %109 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %110 = call i32 @spider_net_enable_rxdmac(%struct.spider_net_card* %109)
  %111 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %112 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %116 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %115, i32 0, i32 2
  %117 = call i32 @napi_schedule(i32* %116)
  store i32 0, i32* %10, align 4
  br label %119

118:                                              ; preds = %64
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %118, %104, %90, %89, %88, %66
  br label %120

120:                                              ; preds = %119, %58
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %55

124:                                              ; preds = %55
  br label %125

125:                                              ; preds = %124, %51
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %143, %128
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 32
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = shl i32 1, %134
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  switch i32 %139, label %140 [
  ]

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141, %132
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %129

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146, %125
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %152 = call i64 @netif_msg_intr(%struct.spider_net_card* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = call i64 (...) @net_ratelimit()
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %159 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32*, i8*, ...) @dev_err(i32* %161, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %154, %150, %147
  %167 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %168 = load i32, i32* @SPIDER_NET_GHIINT1STS, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @spider_net_write_reg(%struct.spider_net_card* %167, i32 %168, i32 %169)
  %171 = load %struct.spider_net_card*, %struct.spider_net_card** %5, align 8
  %172 = load i32, i32* @SPIDER_NET_GHIINT2STS, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @spider_net_write_reg(%struct.spider_net_card* %171, i32 %172, i32 %173)
  ret void
}

declare dso_local i64 @netif_msg_intr(%struct.spider_net_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spider_net_resync_head_ptr(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_refill_rx_chain(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_enable_rxdmac(%struct.spider_net_card*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
