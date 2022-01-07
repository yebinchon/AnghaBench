; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_capi.h_capi_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_capi.h_capi_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_chan = type { i64 }
%struct.pcbit_dev = type { %struct.pcbit_chan*, %struct.pcbit_chan* }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcbit_chan* (%struct.pcbit_dev*, %struct.sk_buff*)* @capi_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcbit_chan* @capi_channel(%struct.pcbit_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.pcbit_chan*, align 8
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_pull(%struct.sk_buff* %12, i32 2)
  %14 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %14, i32 0, i32 1
  %16 = load %struct.pcbit_chan*, %struct.pcbit_chan** %15, align 8
  %17 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %22, i32 0, i32 1
  %24 = load %struct.pcbit_chan*, %struct.pcbit_chan** %23, align 8
  store %struct.pcbit_chan* %24, %struct.pcbit_chan** %3, align 8
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %26, i32 0, i32 0
  %28 = load %struct.pcbit_chan*, %struct.pcbit_chan** %27, align 8
  %29 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %34, i32 0, i32 0
  %36 = load %struct.pcbit_chan*, %struct.pcbit_chan** %35, align 8
  store %struct.pcbit_chan* %36, %struct.pcbit_chan** %3, align 8
  br label %39

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  store %struct.pcbit_chan* null, %struct.pcbit_chan** %3, align 8
  br label %39

39:                                               ; preds = %38, %33, %21
  %40 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  ret %struct.pcbit_chan* %40
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
