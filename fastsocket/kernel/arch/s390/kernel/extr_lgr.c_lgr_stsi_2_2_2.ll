; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_stsi_2_2_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_stsi_2_2_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, i32 }
%struct.sysinfo_2_2_2 = type { i32, i32 }

@lgr_page = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_stsi_2_2_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_stsi_2_2_2(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  %3 = alloca %struct.sysinfo_2_2_2*, align 8
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %4 = load i64, i64* @lgr_page, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.sysinfo_2_2_2*
  store %struct.sysinfo_2_2_2* %6, %struct.sysinfo_2_2_2** %3, align 8
  %7 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %3, align 8
  %8 = call i32 @stsi(%struct.sysinfo_2_2_2* %7, i32 2, i32 2, i32 2)
  %9 = load i32, i32* @ENOSYS, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %15 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %3, align 8
  %18 = getelementptr inbounds %struct.sysinfo_2_2_2, %struct.sysinfo_2_2_2* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpascii(i32 %16, i32 %19, i32 4)
  %21 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %22 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %21, i32 0, i32 0
  %23 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %3, align 8
  %24 = getelementptr inbounds %struct.sysinfo_2_2_2, %struct.sysinfo_2_2_2* %23, i32 0, i32 0
  %25 = call i32 @memcpy(i32* %22, i32* %24, i32 4)
  br label %26

26:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @stsi(%struct.sysinfo_2_2_2*, i32, i32, i32) #1

declare dso_local i32 @cpascii(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
