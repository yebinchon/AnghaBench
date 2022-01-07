; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_stsi_1_1_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_stsi_1_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, i32, i32, i32, i32 }
%struct.sysinfo_1_1_1 = type { i32, i32, i32, i32, i32 }

@lgr_page = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_stsi_1_1_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_stsi_1_1_1(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  %3 = alloca %struct.sysinfo_1_1_1*, align 8
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %4 = load i64, i64* @lgr_page, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.sysinfo_1_1_1*
  store %struct.sysinfo_1_1_1* %6, %struct.sysinfo_1_1_1** %3, align 8
  %7 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %8 = call i32 @stsi(%struct.sysinfo_1_1_1* %7, i32 1, i32 1, i32 1)
  %9 = load i32, i32* @ENOSYS, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %15 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %18 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpascii(i32 %16, i32 %19, i32 4)
  %21 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %22 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %25 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpascii(i32 %23, i32 %26, i32 4)
  %28 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %29 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %32 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpascii(i32 %30, i32 %33, i32 4)
  %35 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %36 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %39 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpascii(i32 %37, i32 %40, i32 4)
  %42 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %43 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %46 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpascii(i32 %44, i32 %47, i32 4)
  br label %49

49:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @stsi(%struct.sysinfo_1_1_1*, i32, i32, i32) #1

declare dso_local i32 @cpascii(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
