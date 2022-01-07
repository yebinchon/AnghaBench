; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_auth_make_challenge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_auth_make_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 (%struct.sk_buff*, i32, i32)*, i64 }
%struct.sk_buff = type { i32 }

@WLAN_AUTH_CHALLENGE_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"AP: kmalloc failed for challenge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ap_data*)* @ap_auth_make_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ap_auth_make_challenge(%struct.ap_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ap_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %3, align 8
  %6 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %7 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %12 = call i32 @ap_crypt_init(%struct.ap_data* %11)
  %13 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %14 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %90

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i64, i64* @WLAN_AUTH_CHALLENGE_LEN, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i8* @kmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @DEBUG_AP, align 4
  %27 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %90

28:                                               ; preds = %19
  %29 = load i64, i64* @WLAN_AUTH_CHALLENGE_LEN, align 8
  %30 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %31 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %37 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = call %struct.sk_buff* @dev_alloc_skb(i64 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = icmp eq %struct.sk_buff* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @kfree(i8* %46)
  store i8* null, i8** %2, align 8
  br label %90

48:                                               ; preds = %28
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %51 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @skb_reserve(%struct.sk_buff* %49, i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i64, i64* @WLAN_AUTH_CHALLENGE_LEN, align 8
  %58 = call i32 @skb_put(%struct.sk_buff* %56, i64 %57)
  %59 = load i64, i64* @WLAN_AUTH_CHALLENGE_LEN, align 8
  %60 = call i32 @memset(i32 %58, i32 0, i64 %59)
  %61 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %62 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64 (%struct.sk_buff*, i32, i32)*, i64 (%struct.sk_buff*, i32, i32)** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %68 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 %65(%struct.sk_buff* %66, i32 0, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %48
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @dev_kfree_skb(%struct.sk_buff* %73)
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @kfree(i8* %75)
  store i8* null, i8** %2, align 8
  br label %90

77:                                               ; preds = %48
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %80 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* @WLAN_AUTH_CHALLENGE_LEN, align 8
  %86 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %78, i64 %83, i8* %84, i64 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @dev_kfree_skb(%struct.sk_buff* %87)
  %89 = load i8*, i8** %4, align 8
  store i8* %89, i8** %2, align 8
  br label %90

90:                                               ; preds = %77, %72, %45, %25, %17
  %91 = load i8*, i8** %2, align 8
  ret i8* %91
}

declare dso_local i32 @ap_crypt_init(%struct.ap_data*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
