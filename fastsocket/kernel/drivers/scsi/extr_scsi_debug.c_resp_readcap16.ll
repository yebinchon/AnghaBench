; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_readcap16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_readcap16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_READCAP16_ARR_SZ = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i32 0, align 4
@scsi_debug_sector_size = common dso_local global i32 0, align 4
@scsi_debug_physblk_exp = common dso_local global i32 0, align 4
@scsi_debug_lowest_aligned = common dso_local global i32 0, align 4
@scsi_debug_dif = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_readcap16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_readcap16(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* @SDEBUG_READCAP16_ARR_SZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %24 = call i32 @check_readiness(%struct.scsi_cmnd* %22, i32 1, %struct.sdebug_dev_info* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %134

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 10
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 24
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 16
  %39 = add nsw i32 %33, %38
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 12
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = add nsw i32 %39, %44
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 13
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %45, %49
  store i32 %50, i32* %12, align 4
  %51 = call i32 (...) @get_sdebug_capacity()
  store i32 %51, i32* @sdebug_capacity, align 4
  %52 = load i32, i32* @SDEBUG_READCAP16_ARR_SZ, align 4
  %53 = call i32 @memset(i8* %21, i32 0, i32 %52)
  %54 = load i32, i32* @sdebug_capacity, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %68, %28
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %61, 255
  %63 = trunc i64 %62 to i8
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 7, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %21, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load i64, i64* %9, align 8
  %72 = lshr i64 %71, 8
  store i64 %72, i64* %9, align 8
  br label %57

73:                                               ; preds = %57
  %74 = load i32, i32* @scsi_debug_sector_size, align 4
  %75 = ashr i32 %74, 24
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds i8, i8* %21, i64 8
  store i8 %77, i8* %78, align 8
  %79 = load i32, i32* @scsi_debug_sector_size, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds i8, i8* %21, i64 9
  store i8 %82, i8* %83, align 1
  %84 = load i32, i32* @scsi_debug_sector_size, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds i8, i8* %21, i64 10
  store i8 %87, i8* %88, align 2
  %89 = load i32, i32* @scsi_debug_sector_size, align 4
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, i8* %21, i64 11
  store i8 %91, i8* %92, align 1
  %93 = load i32, i32* @scsi_debug_physblk_exp, align 4
  %94 = and i32 %93, 15
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, i8* %21, i64 13
  store i8 %95, i8* %96, align 1
  %97 = load i32, i32* @scsi_debug_lowest_aligned, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 63
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds i8, i8* %21, i64 14
  store i8 %100, i8* %101, align 2
  %102 = call i64 (...) @scsi_debug_lbp()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %73
  %105 = getelementptr inbounds i8, i8* %21, i64 14
  %106 = load i8, i8* %105, align 2
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, 128
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 2
  br label %110

110:                                              ; preds = %104, %73
  %111 = load i32, i32* @scsi_debug_lowest_aligned, align 4
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds i8, i8* %21, i64 15
  store i8 %113, i8* %114, align 1
  %115 = load i32, i32* @scsi_debug_dif, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load i32, i32* @scsi_debug_dif, align 4
  %119 = sub nsw i32 %118, 1
  %120 = shl i32 %119, 1
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds i8, i8* %21, i64 12
  store i8 %121, i8* %122, align 4
  %123 = getelementptr inbounds i8, i8* %21, i64 12
  %124 = load i8, i8* %123, align 4
  %125 = zext i8 %124 to i32
  %126 = or i32 %125, 1
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %123, align 4
  br label %128

128:                                              ; preds = %117, %110
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @SDEBUG_READCAP16_ARR_SZ, align 4
  %132 = call i32 @min(i32 %130, i32 %131)
  %133 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %129, i8* %21, i32 %132)
  store i32 %133, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %134

134:                                              ; preds = %128, %26
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_readiness(%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*) #2

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @scsi_debug_lbp(...) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
