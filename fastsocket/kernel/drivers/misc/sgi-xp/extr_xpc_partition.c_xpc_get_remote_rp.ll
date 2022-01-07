; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_get_remote_rp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_get_remote_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_rsvd_page = type { i64, i64, i64, i32 }

@xpNoRsvdPageAddr = common dso_local global i32 0, align 4
@XPC_RP_HEADER_SIZE = common dso_local global i64 0, align 8
@xpc_nasid_mask_nbytes = common dso_local global i64 0, align 8
@xpSuccess = common dso_local global i32 0, align 4
@xpc_nasid_mask_nlongs = common dso_local global i32 0, align 4
@xpRsvdPageNotSet = common dso_local global i32 0, align 4
@XPC_RP_VERSION = common dso_local global i32 0, align 4
@xpBadVersion = common dso_local global i32 0, align 4
@xp_max_npartitions = common dso_local global i64 0, align 8
@xp_partition_id = common dso_local global i64 0, align 8
@xpInvalidPartid = common dso_local global i32 0, align 4
@xpLocalPartid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_get_remote_rp(i32 %0, i64* %1, %struct.xpc_rsvd_page* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.xpc_rsvd_page*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store %struct.xpc_rsvd_page* %2, %struct.xpc_rsvd_page** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @xpc_get_rsvd_page_pa(i32 %13)
  %15 = load i64*, i64** %9, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @xpNoRsvdPageAddr, align 4
  store i32 %20, i32* %5, align 4
  br label %107

21:                                               ; preds = %4
  %22 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %23 = call i32 @xp_pa(%struct.xpc_rsvd_page* %22)
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XPC_RP_HEADER_SIZE, align 8
  %27 = load i64, i64* @xpc_nasid_mask_nbytes, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @xp_remote_memcpy(i32 %23, i64 %25, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @xpSuccess, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %107

35:                                               ; preds = %21
  %36 = load i64*, i64** %7, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %40 = call i64* @XPC_RP_PART_NASIDS(%struct.xpc_rsvd_page* %39)
  store i64* %40, i64** %12, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %57, %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @xpc_nasid_mask_nlongs, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i64*, i64** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %50
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %41

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %63 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @xpRsvdPageNotSet, align 4
  store i32 %67, i32* %5, align 4
  br label %107

68:                                               ; preds = %61
  %69 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %70 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @XPC_VERSION_MAJOR(i32 %71)
  %73 = load i32, i32* @XPC_RP_VERSION, align 4
  %74 = call i64 @XPC_VERSION_MAJOR(i32 %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @xpBadVersion, align 4
  store i32 %77, i32* %5, align 4
  br label %107

78:                                               ; preds = %68
  %79 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %80 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %85 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @xp_max_npartitions, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %91 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @xp_partition_id, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %83, %78
  %96 = load i32, i32* @xpInvalidPartid, align 4
  store i32 %96, i32* %5, align 4
  br label %107

97:                                               ; preds = %89
  %98 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %8, align 8
  %99 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @xp_partition_id, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @xpLocalPartid, align 4
  store i32 %104, i32* %5, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @xpSuccess, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %103, %95, %76, %66, %33, %19
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @xpc_get_rsvd_page_pa(i32) #1

declare dso_local i32 @xp_remote_memcpy(i32, i64, i64) #1

declare dso_local i32 @xp_pa(%struct.xpc_rsvd_page*) #1

declare dso_local i64* @XPC_RP_PART_NASIDS(%struct.xpc_rsvd_page*) #1

declare dso_local i64 @XPC_VERSION_MAJOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
