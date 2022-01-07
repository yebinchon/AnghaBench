; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_init.c_bnx2i_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_init.c_bnx2i_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iscsi_stats_info = type { i64, i64, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_MODULE_VERSION = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@rx_pdus = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@tx_pdus = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_get_stats(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bnx2i_hba*, align 8
  %5 = alloca %struct.iscsi_stats_info*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bnx2i_hba*
  store %struct.bnx2i_hba* %7, %struct.bnx2i_hba** %4, align 8
  %8 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %9 = icmp ne %struct.bnx2i_hba* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iscsi_stats_info*
  store %struct.iscsi_stats_info* %19, %struct.iscsi_stats_info** %5, align 8
  %20 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %21 = icmp ne %struct.iscsi_stats_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %13
  %26 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DRV_MODULE_VERSION, align 4
  %30 = call i32 @strlcpy(i32 %28, i32 %29, i32 4)
  %31 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  %35 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %36 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i64 %34, i32 %39, i32 %40)
  %42 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %43 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %48 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %50 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %58 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %60 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_stats_info, %struct.iscsi_stats_info* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %64 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %65 = load i32, i32* @rx_pdus, align 4
  %66 = call i32 @GET_STATS_64(%struct.bnx2i_hba* %63, %struct.iscsi_stats_info* %64, i32 %65)
  %67 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %68 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %69 = load i32, i32* @rx_bytes, align 4
  %70 = call i32 @GET_STATS_64(%struct.bnx2i_hba* %67, %struct.iscsi_stats_info* %68, i32 %69)
  %71 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %72 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %73 = load i32, i32* @tx_pdus, align 4
  %74 = call i32 @GET_STATS_64(%struct.bnx2i_hba* %71, %struct.iscsi_stats_info* %72, i32 %73)
  %75 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %76 = load %struct.iscsi_stats_info*, %struct.iscsi_stats_info** %5, align 8
  %77 = load i32, i32* @tx_bytes, align 4
  %78 = call i32 @GET_STATS_64(%struct.bnx2i_hba* %75, %struct.iscsi_stats_info* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %25, %22, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @GET_STATS_64(%struct.bnx2i_hba*, %struct.iscsi_stats_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
