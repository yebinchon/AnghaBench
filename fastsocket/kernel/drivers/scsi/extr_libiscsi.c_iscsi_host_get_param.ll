; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_host_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_host_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_host = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_host*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.iscsi_host* %11, %struct.iscsi_host** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %31 [
    i32 128, label %13
    i32 130, label %19
    i32 129, label %25
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.iscsi_host*, %struct.iscsi_host** %8, align 8
  %16 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %9, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.iscsi_host*, %struct.iscsi_host** %8, align 8
  %22 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %9, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.iscsi_host*, %struct.iscsi_host** %8, align 8
  %28 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %25, %19, %13
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
