; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_rx_frame_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_rx_frame_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32* }
%struct.lib80211_crypt_data = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, i32, i32)* }
%struct.libipw_hdr_3addr = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"decryption failed (SA=%pM) res=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Decryption failed ICV mismatch (key %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_device*, %struct.sk_buff*, %struct.lib80211_crypt_data*)* @libipw_rx_frame_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_rx_frame_decrypt(%struct.libipw_device* %0, %struct.sk_buff* %1, %struct.lib80211_crypt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libipw_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.lib80211_crypt_data*, align 8
  %8 = alloca %struct.libipw_hdr_3addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.lib80211_crypt_data* %2, %struct.lib80211_crypt_data** %7, align 8
  %11 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %12 = icmp eq %struct.lib80211_crypt_data* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %15 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %17, align 8
  %19 = icmp eq i32 (%struct.sk_buff*, i32, i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %77

21:                                               ; preds = %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.libipw_hdr_3addr*
  store %struct.libipw_hdr_3addr* %25, %struct.libipw_hdr_3addr** %8, align 8
  %26 = load %struct.libipw_hdr_3addr*, %struct.libipw_hdr_3addr** %8, align 8
  %27 = getelementptr inbounds %struct.libipw_hdr_3addr, %struct.libipw_hdr_3addr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = call i32 @libipw_get_hdrlen(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %32 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %31, i32 0, i32 0
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %35 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %42 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %38(%struct.sk_buff* %39, i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %7, align 8
  %46 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %45, i32 0, i32 0
  %47 = call i32 @atomic_dec(i32* %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %21
  %51 = load %struct.libipw_hdr_3addr*, %struct.libipw_hdr_3addr** %8, align 8
  %52 = getelementptr inbounds %struct.libipw_hdr_3addr, %struct.libipw_hdr_3addr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_DROP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, -2
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 6
  %68 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_DROP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %58, %50
  %70 = load %struct.libipw_device*, %struct.libipw_device** %5, align 8
  %71 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 -1, i32* %4, align 4
  br label %77

75:                                               ; preds = %21
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %69, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @libipw_get_hdrlen(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @LIBIPW_DEBUG_DROP(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
