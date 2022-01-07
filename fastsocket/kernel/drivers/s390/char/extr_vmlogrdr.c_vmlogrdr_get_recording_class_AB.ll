; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_get_recording_class_AB.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_get_recording_class_AB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.vmlogrdr_get_recording_class_AB.cp_command = private unnamed_addr constant [25 x i8] c"QUERY COMMAND RECORDING \00", align 16
@.str = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmlogrdr_get_recording_class_AB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_get_recording_class_AB() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [25 x i8], align 16
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [25 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.vmlogrdr_get_recording_class_AB.cp_command, i32 0, i32 0), i64 25, i1 false)
  %8 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %10 = call i32 @cpcmd(i8* %8, i8* %9, i32 80, i32* null)
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %12 = call i32 @strnlen(i8* %11, i32 80)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @strnchr(i8* %13, i32 %14, i8 signext 61)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %62

19:                                               ; preds = %0
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %22, i32 3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 1, i32* %1, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %62

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %58, %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 65
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 66
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42
  store i32 1, i32* %1, align 4
  br label %62

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %38

61:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %56, %30, %25, %18
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #2

declare dso_local i32 @strnlen(i8*, i32) #2

declare dso_local i8* @strnchr(i8*, i32, i8 signext) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
