; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.bnx2i_endpoint* }
%struct.bnx2i_endpoint = type { %struct.TYPE_2__*, %struct.bnx2i_hba* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.bnx2i_hba = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, i32, i8*)* @bnx2i_ep_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_ep_get_param(%struct.iscsi_endpoint* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bnx2i_endpoint*, align 8
  %9 = alloca %struct.bnx2i_hba*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %11, i32 0, i32 0
  %13 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %12, align 8
  store %struct.bnx2i_endpoint* %13, %struct.bnx2i_endpoint** %8, align 8
  %14 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  %15 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %14, i32 0, i32 1
  %16 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %15, align 8
  store %struct.bnx2i_hba* %16, %struct.bnx2i_hba** %9, align 8
  %17 = load i32, i32* @ENOTCONN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %9, align 8
  %20 = icmp ne %struct.bnx2i_hba* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOTCONN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %65 [
    i32 128, label %26
    i32 129, label %46
  ]

26:                                               ; preds = %24
  %27 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %9, align 8
  %28 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  %31 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  %37 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %9, align 8
  %44 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %68

46:                                               ; preds = %24
  %47 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %9, align 8
  %48 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  %51 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  %57 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %59)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %54, %46
  %62 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %9, align 8
  %63 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  br label %68

65:                                               ; preds = %24
  %66 = load i32, i32* @ENOSYS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %61, %42
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %65, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
