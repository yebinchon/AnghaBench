; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_rx_insert_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_rx_insert_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.rxdone_entry_desc = type { i32, i32, i32, i32, i32, i32* }

@RXDONE_L2PAD = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00crypto_rx_insert_iv(%struct.sk_buff* %0, i32 %1, %struct.rxdone_entry_desc* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxdone_entry_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rxdone_entry_desc* %2, %struct.rxdone_entry_desc** %6, align 8
  %12 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %13 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ALIGN_SIZE(%struct.sk_buff* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %21 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %26 [
    i32 128, label %23
    i32 129, label %23
    i32 130, label %24
    i32 131, label %25
  ]

23:                                               ; preds = %3, %3
  store i32 4, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %27

24:                                               ; preds = %3
  store i32 8, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %27

25:                                               ; preds = %3
  store i32 8, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %27

26:                                               ; preds = %3
  br label %183

27:                                               ; preds = %25, %24, %23
  %28 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %29 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RXDONE_L2PAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 %36, %37
  %39 = call i32 @skb_push(%struct.sk_buff* %35, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @skb_put(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @memmove(i64 %48, i64 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %119

65:                                               ; preds = %27
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %67, %68
  %70 = call i32 @skb_push(%struct.sk_buff* %66, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub i32 %76, %77
  %79 = call i32 @skb_put(%struct.sk_buff* %75, i32 %78)
  br label %95

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %87 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %90, %91
  %93 = call i32 @skb_trim(%struct.sk_buff* %85, i32 %92)
  br label %94

94:                                               ; preds = %84, %80
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @memmove(i64 %101, i64 %113, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %95, %34
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %127 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @memcpy(i64 %125, i32* %128, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %135 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @RXDONE_L2PAD, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %119
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @memmove(i64 %146, i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %140, %119
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %11, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %169 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %168, i32 0, i32 4
  %170 = call i32 @memcpy(i64 %167, i32* %169, i32 4)
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %176 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %180 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %158, %26
  ret void
}

declare dso_local i32 @ALIGN_SIZE(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
