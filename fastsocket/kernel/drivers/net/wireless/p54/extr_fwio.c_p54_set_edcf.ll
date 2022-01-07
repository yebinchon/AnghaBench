; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_set_edcf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_set_edcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.p54_edcf = type { i32, i32, i32, i32, i32, i64, i8*, i8* }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_DCFINIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_set_edcf(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_edcf*, align 8
  %6 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %7 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %8 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %9 = load i32, i32* @P54_CONTROL_TYPE_DCFINIT, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %7, i32 %8, i32 48, i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 48)
  %24 = inttoptr i64 %23 to %struct.p54_edcf*
  store %struct.p54_edcf* %24, %struct.p54_edcf** %5, align 8
  %25 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %26 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %31 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %30, i32 0, i32 0
  store i32 9, i32* %31, align 8
  %32 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %33 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %32, i32 0, i32 1
  store i32 16, i32* %33, align 4
  %34 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %35 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %38 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %37, i32 0, i32 0
  store i32 20, i32* %38, align 8
  %39 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %40 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %39, i32 0, i32 1
  store i32 10, i32* %40, align 4
  %41 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %42 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %41, i32 0, i32 2
  store i32 6, i32* %42, align 8
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %45 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 3, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %50 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %56 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = call i8* @cpu_to_le16(i32 0)
  %58 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %59 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %61 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %63 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memset(i32 %64, i32 0, i32 4)
  %66 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %67 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %70 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32 %68, i32 %71, i32 4)
  %73 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @p54_tx(%struct.p54_common* %73, %struct.sk_buff* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %43, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
