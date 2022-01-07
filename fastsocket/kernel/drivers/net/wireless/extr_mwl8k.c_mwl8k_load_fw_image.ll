; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_load_fw_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_load_fw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i32 }
%struct.mwl8k_cmd_pkt = type { i8*, i32, i64, i64, i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_CODE_DNLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl8k_priv*, i32*, i64)* @mwl8k_load_fw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_load_fw_image(%struct.mwl8k_priv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwl8k_cmd_pkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mwl8k_cmd_pkt* @kmalloc(i32 304, i32 %12)
  store %struct.mwl8k_cmd_pkt* %13, %struct.mwl8k_cmd_pkt** %8, align 8
  %14 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %15 = icmp eq %struct.mwl8k_cmd_pkt* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load i32, i32* @MWL8K_CMD_CODE_DNLD, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %25 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %29 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %65, %19
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  %35 = icmp ugt i64 %34, 256
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i64 [ 256, %36 ], [ %38, %37 ]
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %43 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @memcpy(i32 %44, i32* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %54 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %56 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 48, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @mwl8k_send_fw_load_cmd(%struct.mwl8k_priv* %55, %struct.mwl8k_cmd_pkt* %56, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  br label %73

65:                                               ; preds = %39
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %7, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %7, align 8
  br label %30

73:                                               ; preds = %64, %30
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %78 = getelementptr inbounds %struct.mwl8k_cmd_pkt, %struct.mwl8k_cmd_pkt* %77, i32 0, i32 0
  store i8* null, i8** %78, align 8
  %79 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %80 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %81 = call i32 @mwl8k_send_fw_load_cmd(%struct.mwl8k_priv* %79, %struct.mwl8k_cmd_pkt* %80, i32 48)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.mwl8k_cmd_pkt*, %struct.mwl8k_cmd_pkt** %8, align 8
  %84 = call i32 @kfree(%struct.mwl8k_cmd_pkt* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %16
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.mwl8k_cmd_pkt* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwl8k_send_fw_load_cmd(%struct.mwl8k_priv*, %struct.mwl8k_cmd_pkt*, i32) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
