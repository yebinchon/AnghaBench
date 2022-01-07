; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_nth16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_verify_nth16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdc_ncm_ctx = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.usb_cdc_ncm_nth16 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"frame too short\0A\00", align 1
@USB_CDC_NCM_NTH16_SIGN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid NTH16 signature <%u>\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unsupported NTB block length %u/%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"sequence number glitch prev=%d curr=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_rx_verify_nth16(%struct.cdc_ncm_ctx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cdc_ncm_ctx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usb_cdc_ncm_nth16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdc_ncm_ctx* %0, %struct.cdc_ncm_ctx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %11 = icmp eq %struct.cdc_ncm_ctx* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %106

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 20
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %106

21:                                               ; preds = %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %25, %struct.usb_cdc_ncm_nth16** %5, align 8
  %26 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %27 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = load i64, i64* @USB_CDC_NCM_NTH16_SIGN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %34 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %106

38:                                               ; preds = %21
  %39 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %40 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  br label %106

54:                                               ; preds = %38
  %55 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %60 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %54
  %65 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %71 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %69, %64
  %76 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 65535
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %82 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80, %75
  %87 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %91 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %86, %80, %69, %54
  %96 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %97 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %5, align 8
  %103 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16_to_cpu(i32 %104)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %95, %48, %32, %19, %12
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
