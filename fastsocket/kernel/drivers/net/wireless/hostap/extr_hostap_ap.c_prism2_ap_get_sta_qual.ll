; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_ap_get_sta_qual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_ap_get_sta_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ap_data* }
%struct.ap_data = type { i32, %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.sockaddr = type { i32, i32 }
%struct.iw_quality = type { i32, i32, i8*, i8* }
%struct.sta_info = type { i32, i32, i32, i32, i32 }

@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2_ap_get_sta_qual(%struct.TYPE_3__* %0, %struct.sockaddr* %1, %struct.iw_quality* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.iw_quality*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ap_data*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sta_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.iw_quality* %2, %struct.iw_quality** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ap_data*, %struct.ap_data** %16, align 8
  store %struct.ap_data* %17, %struct.ap_data** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.ap_data*, %struct.ap_data** %11, align 8
  %19 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.ap_data*, %struct.ap_data** %11, align 8
  %22 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  store %struct.list_head* %24, %struct.list_head** %12, align 8
  br label %25

25:                                               ; preds = %139, %5
  %26 = load %struct.list_head*, %struct.list_head** %12, align 8
  %27 = icmp ne %struct.list_head* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.list_head*, %struct.list_head** %12, align 8
  %30 = load %struct.ap_data*, %struct.ap_data** %11, align 8
  %31 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %30, i32 0, i32 1
  %32 = icmp ne %struct.list_head* %29, %31
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %143

35:                                               ; preds = %33
  %36 = load %struct.list_head*, %struct.list_head** %12, align 8
  %37 = bitcast %struct.list_head* %36 to %struct.sta_info*
  store %struct.sta_info* %37, %struct.sta_info** %14, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %139

46:                                               ; preds = %40, %35
  %47 = load i32, i32* @ARPHRD_ETHER, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i64 %50
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 1
  store i32 %47, i32* %52, align 4
  %53 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i64 %55
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %46
  %69 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 27
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %81

74:                                               ; preds = %68
  %75 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 27
  %79 = mul nsw i32 %78, 92
  %80 = sdiv i32 %79, 127
  br label %81

81:                                               ; preds = %74, %73
  %82 = phi i32 [ 0, %73 ], [ %80, %74 ]
  %83 = load %struct.iw_quality*, %struct.iw_quality** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %83, i64 %85
  %87 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 8
  br label %102

88:                                               ; preds = %46
  %89 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = sub nsw i32 %95, 35
  %97 = load %struct.iw_quality*, %struct.iw_quality** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %97, i64 %99
  %101 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 8
  br label %102

102:                                              ; preds = %88, %81
  %103 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @HFA384X_LEVEL_TO_dBm(i32 %105)
  %107 = load %struct.iw_quality*, %struct.iw_quality** %8, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %107, i64 %109
  %111 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %110, i32 0, i32 3
  store i8* %106, i8** %111, align 8
  %112 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %113 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @HFA384X_LEVEL_TO_dBm(i32 %114)
  %116 = load %struct.iw_quality*, %struct.iw_quality** %8, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %116, i64 %118
  %120 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %119, i32 0, i32 2
  store i8* %115, i8** %120, align 8
  %121 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iw_quality*, %struct.iw_quality** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %124, i64 %126
  %128 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* @IW_QUAL_DBM, align 4
  %130 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %131 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %102
  br label %143

138:                                              ; preds = %102
  br label %139

139:                                              ; preds = %138, %45
  %140 = load %struct.list_head*, %struct.list_head** %12, align 8
  %141 = getelementptr inbounds %struct.list_head, %struct.list_head* %140, i32 0, i32 0
  %142 = load %struct.list_head*, %struct.list_head** %141, align 8
  store %struct.list_head* %142, %struct.list_head** %12, align 8
  br label %25

143:                                              ; preds = %137, %33
  %144 = load %struct.ap_data*, %struct.ap_data** %11, align 8
  %145 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock_bh(i32* %145)
  %147 = load i32, i32* %13, align 4
  ret i32 %147
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @HFA384X_LEVEL_TO_dBm(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
