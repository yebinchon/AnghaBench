; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_sta_hash_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_ap_sta_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { %struct.sta_info** }
%struct.sta_info = type { i32, %struct.sta_info* }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"AP: could not remove STA %pM from hash table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_data*, %struct.sta_info*)* @ap_sta_hash_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_sta_hash_del(%struct.ap_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ap_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.sta_info*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %6 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %7 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %6, i32 0, i32 0
  %8 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @STA_HASH(i32 %11)
  %13 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %8, i64 %12
  %14 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  store %struct.sta_info* %14, %struct.sta_info** %5, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %16 = icmp eq %struct.sta_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %82

18:                                               ; preds = %2
  %19 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i64 @memcmp(i32 %21, i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 1
  %31 = load %struct.sta_info*, %struct.sta_info** %30, align 8
  %32 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %33 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %32, i32 0, i32 0
  %34 = load %struct.sta_info**, %struct.sta_info*** %33, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @STA_HASH(i32 %37)
  %39 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %34, i64 %38
  store %struct.sta_info* %31, %struct.sta_info** %39, align 8
  br label %82

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %60, %40
  %42 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 1
  %44 = load %struct.sta_info*, %struct.sta_info** %43, align 8
  %45 = icmp ne %struct.sta_info* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 1
  %49 = load %struct.sta_info*, %struct.sta_info** %48, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i64 @memcmp(i32 %51, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %46, %41
  %59 = phi i1 [ false, %41 ], [ %57, %46 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 1
  %63 = load %struct.sta_info*, %struct.sta_info** %62, align 8
  store %struct.sta_info* %63, %struct.sta_info** %5, align 8
  br label %41

64:                                               ; preds = %58
  %65 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 1
  %67 = load %struct.sta_info*, %struct.sta_info** %66, align 8
  %68 = icmp ne %struct.sta_info* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 1
  %72 = load %struct.sta_info*, %struct.sta_info** %71, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 1
  %74 = load %struct.sta_info*, %struct.sta_info** %73, align 8
  %75 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 1
  store %struct.sta_info* %74, %struct.sta_info** %76, align 8
  br label %82

77:                                               ; preds = %64
  %78 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %17, %28, %77, %69
  ret void
}

declare dso_local i64 @STA_HASH(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
