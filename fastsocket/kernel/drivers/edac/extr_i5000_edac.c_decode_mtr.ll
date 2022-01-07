; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_decode_mtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_decode_mtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\09MTR%d=0x%x:  DIMMs are %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Present\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NOT Present\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09\09WIDTH: x%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09\09NUMBANK: %d bank(s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\09\09NUMRANK: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\09\09NUMROW: %s\0A\00", align 1
@numrow_toString = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"\09\09NUMCOL: %s\0A\00", align 1
@numcol_toString = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @decode_mtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_mtr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @MTR_DIMMS_PRESENT(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i8* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %43

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @MTR_DRAM_WIDTH(i32 %19)
  %21 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @MTR_DRAM_BANKS(i32 %22)
  %24 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @MTR_DIMM_RANK(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %30 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** @numrow_toString, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @MTR_DIMM_ROWS(i32 %32)
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %35)
  %37 = load i8**, i8*** @numcol_toString, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @MTR_DIMM_COLS(i32 %38)
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @debugf2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local i32 @debugf2(i8*, ...) #1

declare dso_local i8* @MTR_DRAM_WIDTH(i32) #1

declare dso_local i8* @MTR_DRAM_BANKS(i32) #1

declare dso_local i64 @MTR_DIMM_RANK(i32) #1

declare dso_local i64 @MTR_DIMM_ROWS(i32) #1

declare dso_local i64 @MTR_DIMM_COLS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
