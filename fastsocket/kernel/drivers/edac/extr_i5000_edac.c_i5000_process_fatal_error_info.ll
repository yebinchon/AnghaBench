; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_process_fatal_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_process_fatal_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5000_error_info = type { i32, i32, i32 }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@FERR_FAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"\09\09CSROW= %d  Channel= %d  (Branch= %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Alert on non-redundant retry or fast reset timeout\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Northbound CRC error on non-redundant retry\00", align 1
@i5000_process_fatal_error_info.done = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c">Tmid Thermal event with intelligent throttling disabled\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"(Branch=%d DRAM-Bank=%d RDWR=%s RAS=%d CAS=%d FATAL Err=0x%x (%s))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5000_error_info*, i32)* @i5000_process_fatal_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_process_fatal_error_info(%struct.mem_ctl_info* %0, %struct.i5000_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i5000_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i5000_error_info* %1, %struct.i5000_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %20 = add nsw i32 %19, 1
  %21 = add nsw i32 %20, 160
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %25 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %26 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FERR_FAT_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 1, i32* %18, align 4
  br label %100

33:                                               ; preds = %3
  %34 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %35 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %40 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NREC_BANK(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %44 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NREC_RANK(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %48 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NREC_RDWR(i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %52 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NREC_RAS(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %56 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NREC_CAS(i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 1
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @debugf0(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %62, i32 %63, i8* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %81 [
    i32 130, label %72
    i32 129, label %73
    i32 128, label %74
  ]

72:                                               ; preds = %33
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %81

73:                                               ; preds = %33
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %81

74:                                               ; preds = %33
  %75 = load i32, i32* @i5000_process_fatal_error_info.done, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %18, align 4
  br label %100

78:                                               ; preds = %74
  %79 = load i32, i32* @i5000_process_fatal_error_info.done, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @i5000_process_fatal_error_info.done, align 4
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %81

81:                                               ; preds = %33, %78, %73, %72
  %82 = trunc i64 %22 to i32
  %83 = load i32, i32* %11, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @snprintf(i8* %24, i32 %82, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %85, i8* %89, i32 %90, i32 %91, i32 %92, i8* %93)
  %95 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info* %95, i32 %96, i32 %97, i32 %98, i8* %24)
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %81, %77, %32
  %101 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %18, align 4
  switch i32 %102, label %104 [
    i32 0, label %103
    i32 1, label %103
  ]

103:                                              ; preds = %100, %100
  ret void

104:                                              ; preds = %100
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EXTRACT_FBDCHAN_INDX(i32) #2

declare dso_local i32 @NREC_BANK(i32) #2

declare dso_local i32 @NREC_RANK(i32) #2

declare dso_local i32 @NREC_RDWR(i32) #2

declare dso_local i32 @NREC_RAS(i32) #2

declare dso_local i32 @NREC_CAS(i32) #2

declare dso_local i32 @debugf0(i8*, i32, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i32, i32, i32, i8*) #2

declare dso_local i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info*, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
