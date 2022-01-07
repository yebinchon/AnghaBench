; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_rx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32*, %struct.catc* }
%struct.catc = type { i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@RX_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rx_done, status %d, length %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"getting extra packet\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"submit(rx_urb) status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @catc_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_rx_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 4
  %12 = load %struct.catc*, %struct.catc** %11, align 8
  store %struct.catc* %12, %struct.catc** %3, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.catc*, %struct.catc** %3, align 8
  %20 = getelementptr inbounds %struct.catc, %struct.catc* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @RX_RUNNING, align 4
  %25 = load %struct.catc*, %struct.catc** %3, align 8
  %26 = getelementptr inbounds %struct.catc, %struct.catc* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  store i32 2, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %173

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %125, %37
  %39 = load %struct.catc*, %struct.catc** %3, align 8
  %40 = getelementptr inbounds %struct.catc, %struct.catc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @le16_to_cpup(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.catc*, %struct.catc** %3, align 8
  %53 = getelementptr inbounds %struct.catc, %struct.catc* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.catc*, %struct.catc** %3, align 8
  %60 = getelementptr inbounds %struct.catc, %struct.catc* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %139

66:                                               ; preds = %43
  br label %71

67:                                               ; preds = %38
  %68 = load %struct.urb*, %struct.urb** %2, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %6, align 4
  %73 = call %struct.sk_buff* @dev_alloc_skb(i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %5, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %173

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %77, i32* %81, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @skb_put(%struct.sk_buff* %84, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.catc*, %struct.catc** %3, align 8
  %89 = getelementptr inbounds %struct.catc, %struct.catc* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @eth_type_trans(%struct.sk_buff* %87, %struct.TYPE_4__* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @netif_rx(%struct.sk_buff* %94)
  %96 = load %struct.catc*, %struct.catc** %3, align 8
  %97 = getelementptr inbounds %struct.catc, %struct.catc* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.catc*, %struct.catc** %3, align 8
  %105 = getelementptr inbounds %struct.catc, %struct.catc* %104, i32 0, i32 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %103
  store i32 %110, i32* %108, align 4
  %111 = load %struct.catc*, %struct.catc** %3, align 8
  %112 = getelementptr inbounds %struct.catc, %struct.catc* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %76
  br label %139

116:                                              ; preds = %76
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = ashr i32 %118, 6
  %120 = add nsw i32 %119, 1
  %121 = shl i32 %120, 6
  %122 = load i32*, i32** %4, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %4, align 8
  br label %125

125:                                              ; preds = %116
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.urb*, %struct.urb** %2, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = ptrtoint i32* %126 to i64
  %131 = ptrtoint i32* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 4
  %134 = load %struct.urb*, %struct.urb** %2, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %133, %137
  br i1 %138, label %38, label %139

139:                                              ; preds = %125, %115, %51
  %140 = load %struct.catc*, %struct.catc** %3, align 8
  %141 = getelementptr inbounds %struct.catc, %struct.catc* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %139
  %145 = load %struct.catc*, %struct.catc** %3, align 8
  %146 = getelementptr inbounds %struct.catc, %struct.catc* %145, i32 0, i32 2
  %147 = call i64 @atomic_read(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.catc*, %struct.catc** %3, align 8
  %151 = getelementptr inbounds %struct.catc, %struct.catc* %150, i32 0, i32 2
  %152 = call i32 @atomic_dec(i32* %151)
  %153 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.catc*, %struct.catc** %3, align 8
  %155 = getelementptr inbounds %struct.catc, %struct.catc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.urb*, %struct.urb** %2, align 8
  %158 = getelementptr inbounds %struct.urb, %struct.urb* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.urb*, %struct.urb** %2, align 8
  %160 = load i32, i32* @GFP_ATOMIC, align 4
  %161 = call i32 @usb_submit_urb(%struct.urb* %159, i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %149
  %164 = load i32, i32* %9, align 4
  %165 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %149
  br label %172

167:                                              ; preds = %144
  %168 = load i32, i32* @RX_RUNNING, align 4
  %169 = load %struct.catc*, %struct.catc** %3, align 8
  %170 = getelementptr inbounds %struct.catc, %struct.catc* %169, i32 0, i32 0
  %171 = call i32 @clear_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %167, %166
  br label %173

173:                                              ; preds = %31, %75, %172, %139
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
