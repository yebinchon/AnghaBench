; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_stsi_3_2_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_lgr.c_lgr_stsi_3_2_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sysinfo_3_2_2 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@lgr_page = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@VM_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_stsi_3_2_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_stsi_3_2_2(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  %3 = alloca %struct.sysinfo_3_2_2*, align 8
  %4 = alloca i32, align 4
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %5 = load i64, i64* @lgr_page, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.sysinfo_3_2_2*
  store %struct.sysinfo_3_2_2* %7, %struct.sysinfo_3_2_2** %3, align 8
  %8 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %9 = call i32 @stsi(%struct.sysinfo_3_2_2* %8, i32 3, i32 2, i32 2)
  %10 = load i32, i32* @ENOSYS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %59, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @u8, align 4
  %18 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %19 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VM_LEVEL_MAX, align 4
  %22 = call i32 @min_t(i32 %17, i32 %20, i32 %21)
  %23 = icmp slt i32 %16, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %15
  %25 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %26 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %34 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpascii(i32 %32, i32 %40, i32 4)
  %42 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %43 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %51 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpascii(i32 %49, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %24
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %15

62:                                               ; preds = %15
  %63 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %64 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %67 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %13
  ret void
}

declare dso_local i32 @stsi(%struct.sysinfo_3_2_2*, i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @cpascii(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
