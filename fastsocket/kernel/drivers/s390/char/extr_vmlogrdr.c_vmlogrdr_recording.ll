; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_recording.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_recording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmlogrdr_priv_t = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@recording_class_AB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" QID * \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"RECORDING %s PURGE %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"RECORDING %s %s %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Command complete\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmlogrdr_priv_t*, i32, i32)* @vmlogrdr_recording to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmlogrdr_priv_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca [160 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.vmlogrdr_priv_t* %0, %struct.vmlogrdr_priv_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* @recording_class_AB, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 80)
  %28 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i32 0, i32 160)
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %31 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %32 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %30, i32 80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %33, i8* %34)
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %38 = call i32 @cpcmd(i8* %36, i8* %37, i32 160, i32* null)
  br label %39

39:                                               ; preds = %25, %22, %3
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 80)
  %42 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 0, i32 160)
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %45 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %46 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %44, i32 80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %47, i8* %48, i8* %49)
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %52 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %53 = call i32 @cpcmd(i8* %51, i8* %52, i32 160, i32* null)
  %54 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %61

58:                                               ; preds = %39
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %69 = call i32 @memset(i8* %68, i32 0, i32 80)
  %70 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %71 = call i32 @memset(i8* %70, i32 0, i32 160)
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %73 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %74 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %72, i32 80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* %76)
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %79 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %80 = call i32 @cpcmd(i8* %78, i8* %79, i32 160, i32* null)
  br label %81

81:                                               ; preds = %67, %64, %61
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
