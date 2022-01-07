; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32, i32, i32, i32*, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BS_%d : In beiscsi_ep_get_param, param= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@BE2_IPV4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_ep_get_param(%struct.iscsi_endpoint* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.beiscsi_endpoint*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %10, i32 0, i32 0
  %12 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %11, align 8
  store %struct.beiscsi_endpoint* %12, %struct.beiscsi_endpoint** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %14 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @beiscsi_log(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %44 [
    i32 128, label %21
    i32 129, label %27
  ]

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %24 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %9, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %29 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BE2_IPV4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %36 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %35, i32 0, i32 1
  %37 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  store i32 %37, i32* %9, align 4
  br label %43

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %41 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %40, i32 0, i32 0
  %42 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %33
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @ENOSYS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %43, %21
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @beiscsi_log(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
