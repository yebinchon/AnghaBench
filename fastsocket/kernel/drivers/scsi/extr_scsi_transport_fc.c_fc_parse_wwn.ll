; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_parse_wwn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_parse_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @fc_parse_wwn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_parse_wwn(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 32)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %90, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %93

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 97
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 102
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 97
  %32 = add nsw i32 %31, 10
  %33 = or i32 %26, %32
  store i32 %33, i32* %7, align 4
  br label %78

34:                                               ; preds = %19, %14
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 70
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 4
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 65
  %52 = add nsw i32 %51, 10
  %53 = or i32 %46, %52
  store i32 %53, i32* %7, align 4
  br label %77

54:                                               ; preds = %39, %34
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 48
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  %72 = or i32 %66, %71
  store i32 %72, i32* %7, align 4
  br label %76

73:                                               ; preds = %59, %54
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %97

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %44
  br label %78

78:                                               ; preds = %77, %24
  %79 = load i32, i32* %6, align 4
  %80 = urem i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 255
  %85 = load i32, i32* %6, align 4
  %86 = udiv i32 %85, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %87
  store i32 %84, i32* %88, align 4
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %82, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %11

93:                                               ; preds = %11
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %95 = call i32 @wwn_to_u64(i32* %94)
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %73
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wwn_to_u64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
