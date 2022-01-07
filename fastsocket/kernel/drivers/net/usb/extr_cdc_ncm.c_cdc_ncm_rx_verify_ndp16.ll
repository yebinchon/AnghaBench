; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_ndp16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_ndp16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.usb_cdc_ncm_ndp16 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid NDP offset  <%u>\0A\00", align 1
@USB_CDC_NCM_NDP16_LENGTH_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid DPT16 length <%u>\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid nframes = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_rx_verify_ndp16(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = inttoptr i64 %26 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %27, %struct.usb_cdc_ncm_ndp16** %5, align 8
  %28 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %5, align 8
  %29 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load i32, i32* @USB_CDC_NCM_NDP16_LENGTH_MIN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %5, align 8
  %36 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %66

40:                                               ; preds = %20
  %41 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %5, align 8
  %42 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, 8
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 8, %53
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ugt i64 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %40
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %40
  br label %66

66:                                               ; preds = %65, %34, %17
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
