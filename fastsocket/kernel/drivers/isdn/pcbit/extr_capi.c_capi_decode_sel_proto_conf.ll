; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_capi.c_capi_decode_sel_proto_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_capi.c_capi_decode_sel_proto_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_chan = type { i32 }
%struct.sk_buff = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi_decode_sel_proto_conf(%struct.pcbit_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.pcbit_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.pcbit_chan* %0, %struct.pcbit_chan** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %11 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_pull(%struct.sk_buff* %12, i32 1)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_pull(%struct.sk_buff* %18, i32 2)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
