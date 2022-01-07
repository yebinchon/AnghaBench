; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_store_ucode_sec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_store_ucode_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_firmware_pieces = type { %struct.fw_img_parsing* }
%struct.fw_img_parsing = type { i64, %struct.fw_sec* }
%struct.fw_sec = type { i32, i32, i32 }
%struct.fw_sec_parsing = type { i32, i32 }

@IWL_UCODE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_firmware_pieces*, i8*, i32, i32)* @iwl_store_ucode_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_store_ucode_sec(%struct.iwl_firmware_pieces* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_firmware_pieces*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_img_parsing*, align 8
  %11 = alloca %struct.fw_sec*, align 8
  %12 = alloca %struct.fw_sec_parsing*, align 8
  store %struct.iwl_firmware_pieces* %0, %struct.iwl_firmware_pieces** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %14 = icmp ne %struct.iwl_firmware_pieces* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @IWL_UCODE_TYPE_MAX, align 4
  %21 = icmp uge i32 %19, %20
  br label %22

22:                                               ; preds = %18, %15, %4
  %23 = phi i1 [ true, %15 ], [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %65

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.fw_sec_parsing*
  store %struct.fw_sec_parsing* %30, %struct.fw_sec_parsing** %12, align 8
  %31 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_firmware_pieces, %struct.iwl_firmware_pieces* %31, i32 0, i32 0
  %33 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %33, i64 %35
  store %struct.fw_img_parsing* %36, %struct.fw_img_parsing** %10, align 8
  %37 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %38 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %37, i32 0, i32 1
  %39 = load %struct.fw_sec*, %struct.fw_sec** %38, align 8
  %40 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %41 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %39, i64 %42
  store %struct.fw_sec* %43, %struct.fw_sec** %11, align 8
  %44 = load %struct.fw_sec_parsing*, %struct.fw_sec_parsing** %12, align 8
  %45 = getelementptr inbounds %struct.fw_sec_parsing, %struct.fw_sec_parsing* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %49 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fw_sec_parsing*, %struct.fw_sec_parsing** %12, align 8
  %51 = getelementptr inbounds %struct.fw_sec_parsing, %struct.fw_sec_parsing* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %54 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %60 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %62 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %28, %27
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
