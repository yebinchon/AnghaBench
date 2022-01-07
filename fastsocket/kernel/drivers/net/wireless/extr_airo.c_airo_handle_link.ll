; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i64, %struct.TYPE_5__*, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LINKSTAT = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EV_LINK = common dso_local global i32 0, align 4
@STAT_FORCELOSS = common dso_local global i64 0, align 8
@STAT_ASSOC = common dso_local global i64 0, align 8
@STAT_REASSOC = common dso_local global i64 0, align 8
@auto_wep = common dso_local global i64 0, align 8
@FLAG_UPDATE_UNI = common dso_local global i32 0, align 4
@FLAG_UPDATE_MULTI = common dso_local global i32 0, align 4
@JOB_EVENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @airo_handle_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_handle_link(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %union.iwreq_data, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %7 = load i32, i32* @LINKSTAT, align 4
  %8 = call i32 @IN4500(%struct.airo_info* %6, i32 %7)
  %9 = call i64 @le16_to_cpu(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %11 = load i32, i32* @EVACK, align 4
  %12 = load i32, i32* @EV_LINK, align 4
  %13 = call i32 @OUT4500(%struct.airo_info* %10, i32 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @STAT_FORCELOSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %19 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %17, %1
  %24 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %25 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @airo_print_status(i32 %28, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @STAT_ASSOC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @STAT_REASSOC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %34, %23
  %39 = load i64, i64* @auto_wep, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %43 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %51 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wake_up_process(i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @FLAG_UPDATE_UNI, align 4
  %56 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %57 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %56, i32 0, i32 6
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load i32, i32* @FLAG_UPDATE_MULTI, align 4
  %60 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %61 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %60, i32 0, i32 6
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %64 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %63, i32 0, i32 5
  %65 = call i64 @down_trylock(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load i32, i32* @JOB_EVENT, align 4
  %69 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %70 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %69, i32 0, i32 4
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %73 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %72, i32 0, i32 2
  %74 = call i32 @wake_up_interruptible(i32* %73)
  br label %80

75:                                               ; preds = %54
  %76 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %77 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = call i32 @airo_send_event(%struct.TYPE_5__* %78)
  br label %80

80:                                               ; preds = %75, %67
  br label %116

81:                                               ; preds = %34
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* @auto_wep, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %89 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @HZ, align 4
  %94 = mul nsw i32 3, %93
  %95 = call i64 @RUN_AT(i32 %94)
  %96 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %97 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %99 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %98, i32 0, i32 2
  %100 = call i32 @wake_up_interruptible(i32* %99)
  br label %101

101:                                              ; preds = %92, %87, %84
  %102 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memset(i32 %104, i8 signext 0, i32 %105)
  %107 = load i32, i32* @ARPHRD_ETHER, align 4
  %108 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %111 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* @SIOCGIWAP, align 4
  %114 = call i32 @wireless_send_event(%struct.TYPE_5__* %112, i32 %113, %union.iwreq_data* %3, i32* null)
  br label %115

115:                                              ; preds = %101, %81
  br label %116

116:                                              ; preds = %115, %80
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @airo_print_status(i32, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @airo_send_event(%struct.TYPE_5__*) #1

declare dso_local i64 @RUN_AT(i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @wireless_send_event(%struct.TYPE_5__*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
