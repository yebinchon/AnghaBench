; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_sysinfo.c_proc_read_sysinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_sysinfo.c_proc_read_sysinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo_1_1_1 = type { i32 }
%struct.sysinfo_1_2_2 = type { i32 }
%struct.sysinfo_2_2_2 = type { i32 }
%struct.sysinfo_3_2_2 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_read_sysinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read_sysinfo(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %14, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %63

22:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %23 = call i32 (...) @stsi_0()
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp sge i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %14, align 8
  %28 = inttoptr i64 %27 to %struct.sysinfo_1_1_1*
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @stsi_1_1_1(%struct.sysinfo_1_1_1* %28, i8* %29, i32 %30)
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %15, align 4
  %34 = icmp sge i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %14, align 8
  %37 = inttoptr i64 %36 to %struct.sysinfo_1_2_2*
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @stsi_1_2_2(%struct.sysinfo_1_2_2* %37, i8* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %15, align 4
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %14, align 8
  %46 = inttoptr i64 %45 to %struct.sysinfo_2_2_2*
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @stsi_2_2_2(%struct.sysinfo_2_2_2* %46, i8* %47, i32 %48)
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %15, align 4
  %52 = icmp sge i32 %51, 3
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %14, align 8
  %55 = inttoptr i64 %54 to %struct.sysinfo_3_2_2*
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @stsi_3_2_2(%struct.sysinfo_3_2_2* %55, i8* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @free_page(i64 %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @stsi_0(...) #1

declare dso_local i32 @stsi_1_1_1(%struct.sysinfo_1_1_1*, i8*, i32) #1

declare dso_local i32 @stsi_1_2_2(%struct.sysinfo_1_2_2*, i8*, i32) #1

declare dso_local i32 @stsi_2_2_2(%struct.sysinfo_2_2_2*, i8*, i32) #1

declare dso_local i32 @stsi_3_2_2(%struct.sysinfo_3_2_2*, i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
