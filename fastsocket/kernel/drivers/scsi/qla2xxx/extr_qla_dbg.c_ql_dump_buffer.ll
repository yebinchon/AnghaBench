; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dbg.c_ql_dump_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dbg.c_ql_dump_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c" 0   1   2   3   4   5   6   7   8   9  Ah  Bh  Ch  Dh  Eh  Fh\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"--------------------------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_dump_buffer(i32 %0, i32* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ql_mask_match(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %60

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ql_dbg(i32 %18, i32* %19, i32 %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ql_dbg(i32 %22, i32* %23, i32 %24, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ql_dbg(i32 %26, i32* %27, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %50, %17
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i64*, i64** %9, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %9, align 8
  %37 = load i64, i64* %35, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = srem i32 %43, 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %50

48:                                               ; preds = %34
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  br label %30

51:                                               ; preds = %30
  %52 = load i32, i32* %11, align 4
  %53 = srem i32 %52, 16
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ql_dbg(i32 %56, i32* %57, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %16, %55, %51
  ret void
}

declare dso_local i32 @ql_mask_match(i32) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
