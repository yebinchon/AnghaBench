; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_download_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_download_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.p54_eeprom_lm86 = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }

@P54_HDR_FLAG_CONTROL = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_EEPROM_READBACK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"device does not respond!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_download_eeprom(%struct.p54_common* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p54_common*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.p54_eeprom_lm86*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %15 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 1289
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i64 40, i64* %12, align 8
  br label %20

19:                                               ; preds = %4
  store i64 4, i64* %12, align 8
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %22 = load i32, i32* @P54_HDR_FLAG_CONTROL, align 4
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = load i32, i32* @P54_CONTROL_TYPE_EEPROM_READBACK, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %21, i32 %22, i64 %25, i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %111

38:                                               ; preds = %20
  %39 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %40 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %45 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %47, %48
  %50 = call i64 @skb_put(%struct.sk_buff* %46, i64 %49)
  %51 = inttoptr i64 %50 to %struct.p54_eeprom_lm86*
  store %struct.p54_eeprom_lm86* %51, %struct.p54_eeprom_lm86** %10, align 8
  %52 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %53 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 1289
  br i1 %55, label %56, label %67

56:                                               ; preds = %38
  %57 = load i64, i64* %8, align 8
  %58 = call i8* @cpu_to_le16(i64 %57)
  %59 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %60 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i8* @cpu_to_le16(i64 %62)
  %64 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %65 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %86

67:                                               ; preds = %38
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @cpu_to_le32(i64 %68)
  %70 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %71 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i8* @cpu_to_le16(i64 %73)
  %75 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %76 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %74, i8** %77, align 8
  %78 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %79 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 15, i32* %80, align 8
  %81 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %82 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %86

86:                                               ; preds = %67, %56
  %87 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call i32 @p54_tx(%struct.p54_common* %87, %struct.sk_buff* %88)
  %90 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %91 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %90, i32 0, i32 4
  %92 = load i32, i32* @HZ, align 4
  %93 = call i32 @wait_for_completion_interruptible_timeout(i32* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %97 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wiphy_err(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %95, %86
  %105 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %106 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %105, i32 0, i32 2
  store i32* null, i32** %106, align 8
  %107 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %108 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %104, %35
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
