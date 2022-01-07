; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_set_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_set_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.p54_psm = type { i32, i32, i32*, i64, %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@P54_PSM = common dso_local global i32 0, align 4
@P54_PSM_BEACON_TIMEOUT = common dso_local global i32 0, align 4
@P54_PSM_DTIM = common dso_local global i32 0, align 4
@P54_PSM_CHECKSUM = common dso_local global i32 0, align 4
@P54_PSM_MCBC = common dso_local global i32 0, align 4
@P54_PSM_CAM = common dso_local global i32 0, align 4
@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_PSM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_set_ps(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_psm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %8 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %9 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %19 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @P54_PSM, align 4
  %24 = load i32, i32* @P54_PSM_BEACON_TIMEOUT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @P54_PSM_DTIM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @P54_PSM_CHECKSUM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @P54_PSM_MCBC, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %17, %1
  %33 = load i32, i32* @P54_PSM_CAM, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %36 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %37 = load i32, i32* @P54_CONTROL_TYPE_PSM, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %35, i32 %36, i32 48, i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %113

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i64 @skb_put(%struct.sk_buff* %46, i32 48)
  %48 = inttoptr i64 %47 to %struct.p54_psm*
  store %struct.p54_psm* %48, %struct.p54_psm** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %52 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %54 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %58 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %89, %45
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %62 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %63)
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %59
  %67 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %68 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %75 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i8* %73, i8** %80, align 8
  %81 = call i8* @cpu_to_le16(i32 1)
  %82 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %83 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %82, i32 0, i32 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i8* %81, i8** %88, align 8
  br label %89

89:                                               ; preds = %66
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %94 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %93, i32 0, i32 0
  store i32 200, i32* %94, align 8
  %95 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %96 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %98 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @WLAN_EID_TIM, align 4
  %100 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %101 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @p54_tx(%struct.p54_common* %104, %struct.sk_buff* %105)
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @P54_PSM_CAM, align 4
  %109 = icmp ne i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %112 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %92, %42
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
