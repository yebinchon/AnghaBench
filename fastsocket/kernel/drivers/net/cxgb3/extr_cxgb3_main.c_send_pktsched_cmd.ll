; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_send_pktsched_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_send_pktsched_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mngt_pktsched_wr = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_WROPCODE_MNGT = common dso_local global i32 0, align 4
@FW_MNGTOPCODE_PKTSCHED_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32, i32, i32)* @send_pktsched_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pktsched_cmd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.mngt_pktsched_wr*, align 8
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @alloc_skb(i32 28, i32 %17)
  %19 = bitcast i8* %18 to %struct.sk_buff*
  store %struct.sk_buff* %19, %struct.sk_buff** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.adapter*, %struct.adapter** %8, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %14, align 8
  br label %26

26:                                               ; preds = %22, %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %83

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %34 = call i64 @skb_put(%struct.sk_buff* %33, i32 28)
  %35 = inttoptr i64 %34 to %struct.mngt_pktsched_wr*
  store %struct.mngt_pktsched_wr* %35, %struct.mngt_pktsched_wr** %15, align 8
  %36 = load i32, i32* @FW_WROPCODE_MNGT, align 4
  %37 = call i32 @V_WR_OP(i32 %36)
  %38 = call i32 @htonl(i32 %37)
  %39 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %40 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @FW_MNGTOPCODE_PKTSCHED_SET, align 4
  %42 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %43 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %46 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %49 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %52 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %55 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.mngt_pktsched_wr*, %struct.mngt_pktsched_wr** %15, align 8
  %58 = getelementptr inbounds %struct.mngt_pktsched_wr, %struct.mngt_pktsched_wr* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.adapter*, %struct.adapter** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %61 = call i32 @t3_mgmt_tx(%struct.adapter* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %63 = load %struct.adapter*, %struct.adapter** %8, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = load %struct.sk_buff*, %struct.sk_buff** %64, align 8
  %66 = icmp eq %struct.sk_buff* %62, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %32
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @alloc_skb(i32 4, i32 %68)
  %70 = bitcast i8* %69 to %struct.sk_buff*
  %71 = load %struct.adapter*, %struct.adapter** %8, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  store %struct.sk_buff* %70, %struct.sk_buff** %72, align 8
  %73 = load %struct.adapter*, %struct.adapter** %8, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = load %struct.sk_buff*, %struct.sk_buff** %74, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %32
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %29
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i8* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @V_WR_OP(i32) #1

declare dso_local i32 @t3_mgmt_tx(%struct.adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
