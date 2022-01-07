; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_info_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_info_get(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %3 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %4 = call i32 @memset(%struct.lgr_info* %3, i32 0, i32 8)
  %5 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %6 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %9 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @stfle(i32 %7, i32 %11)
  %13 = call i32 (...) @stsi_0()
  %14 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %15 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %17 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %47

23:                                               ; preds = %1
  %24 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %25 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %30 = call i32 @lgr_stsi_1_1_1(%struct.lgr_info* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %33 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %38 = call i32 @lgr_stsi_2_2_2(%struct.lgr_info* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %41 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %46 = call i32 @lgr_stsi_3_2_2(%struct.lgr_info* %45)
  br label %47

47:                                               ; preds = %22, %44, %39
  ret void
}

declare dso_local i32 @memset(%struct.lgr_info*, i32, i32) #1

declare dso_local i32 @stfle(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @stsi_0(...) #1

declare dso_local i32 @lgr_stsi_1_1_1(%struct.lgr_info*) #1

declare dso_local i32 @lgr_stsi_2_2_2(%struct.lgr_info*) #1

declare dso_local i32 @lgr_stsi_3_2_2(%struct.lgr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
