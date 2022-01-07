; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_ndp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_ndp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_cdc_ncm_ndp16 = type { i64, i8*, i8* }
%struct.cdc_ncm_ctx = type { i64, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.usb_cdc_ncm_nth16 = type { i8* }

@CDC_NCM_NDP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_cdc_ncm_ndp16* (%struct.cdc_ncm_ctx*, %struct.sk_buff*, i64, i64)* @cdc_ncm_ndp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_cdc_ncm_ndp16* @cdc_ncm_ndp(%struct.cdc_ncm_ctx* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %6 = alloca %struct.cdc_ncm_ctx*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %11 = alloca %struct.usb_cdc_ncm_nth16*, align 8
  %12 = alloca i64, align 8
  store %struct.cdc_ncm_ctx* %0, %struct.cdc_ncm_ctx** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.usb_cdc_ncm_ndp16* null, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %17, %struct.usb_cdc_ncm_nth16** %11, align 8
  %18 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %11, align 8
  %19 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @le16_to_cpu(i8* %20)
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %39, %4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  %31 = inttoptr i64 %30 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %31, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %32 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %33 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  store %struct.usb_cdc_ncm_ndp16* %38, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %98

39:                                               ; preds = %25
  %40 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %41 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @le16_to_cpu(i8* %42)
  store i64 %43, i64* %12, align 8
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @cdc_ncm_align_tail(%struct.sk_buff* %45, i32 %48, i32 0, i64 %51)
  %53 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %59, %60
  %62 = load i64, i64* @CDC_NCM_NDP_SIZE, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  store %struct.usb_cdc_ncm_ndp16* null, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %98

65:                                               ; preds = %44
  %66 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %67 = icmp ne %struct.usb_cdc_ncm_ndp16* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %75 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %84

76:                                               ; preds = %65
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %11, align 8
  %83 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %68
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load i64, i64* @CDC_NCM_NDP_SIZE, align 8
  %87 = call i32 @skb_put(%struct.sk_buff* %85, i64 %86)
  %88 = load i64, i64* @CDC_NCM_NDP_SIZE, align 8
  %89 = call i64 @memset(i32 %87, i32 0, i64 %88)
  %90 = inttoptr i64 %89 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %90, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %93 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = call i8* @cpu_to_le16(i32 28)
  %95 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %96 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  store %struct.usb_cdc_ncm_ndp16* %97, %struct.usb_cdc_ncm_ndp16** %5, align 8
  br label %98

98:                                               ; preds = %84, %64, %37
  %99 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %5, align 8
  ret %struct.usb_cdc_ncm_ndp16* %99
}

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @cdc_ncm_align_tail(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @memset(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
