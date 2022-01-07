; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [86 x i8] c"V: Valid, C: Cacheable, WT: Write-Through\0ACB: Copy-Back, B: Buffered, UB: Unbuffered\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ety   vpn  ppn  size   flags\0A\00", align 1
@NR_PMB_ENTRIES = common dso_local global i32 0, align 4
@PMB_SZ_MASK = common dso_local global i64 0, align 8
@PMB_SZ_16M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" 16MB\00", align 1
@PMB_SZ_64M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" 64MB\00", align 1
@PMB_SZ_128M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"128MB\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"512MB\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%02d: %c 0x%02lx 0x%02lx %s %c %s %s\0A\00", align 1
@PMB_V = common dso_local global i64 0, align 8
@PMB_C = common dso_local global i64 0, align 8
@PMB_WT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@PMB_UB = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"UB\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pmb_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmb_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %89, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NR_PMB_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %92

18:                                               ; preds = %14
  store i8* null, i8** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mk_pmb_addr(i32 %19)
  %21 = call i64 @ctrl_inl(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mk_pmb_data(i32 %22)
  %24 = call i64 @ctrl_inl(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @PMB_SZ_MASK, align 8
  %27 = and i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PMB_SZ_16M, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %46

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PMB_SZ_64M, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PMB_SZ_128M, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  br label %44

44:                                               ; preds = %38, %37
  %45 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %37 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %32 ], [ %45, %44 ]
  store i8* %47, i8** %9, align 8
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @PMB_V, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @PMB_V, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi i1 [ false, %46 ], [ %58, %54 ]
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 86, i32 32
  %63 = load i64, i64* %6, align 8
  %64 = lshr i64 %63, 24
  %65 = and i64 %64, 255
  %66 = load i64, i64* %7, align 8
  %67 = lshr i64 %66, 24
  %68 = and i64 %67, 255
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @PMB_C, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 67, i32 32
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @PMB_WT, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @PMB_UB, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %49, i32 %62, i64 %65, i64 %68, i8* %69, i32 %75, i8* %81, i8* %87)
  br label %89

89:                                               ; preds = %59
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %14

92:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @ctrl_inl(i32) #1

declare dso_local i32 @mk_pmb_addr(i32) #1

declare dso_local i32 @mk_pmb_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
