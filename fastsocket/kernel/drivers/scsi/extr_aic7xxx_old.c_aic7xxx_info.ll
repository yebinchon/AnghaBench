; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.aic7xxx_host = type { i64 }

@aic7xxx_info.buffer = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [52 x i8] c"Adaptec AHA274x/284x/294x (EISA/VLB/PCI-Fast SCSI) \00", align 1
@AIC7XXX_C_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@AIC7XXX_H_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"       <\00", align 1
@board_names = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @aic7xxx_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aic7xxx_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.aic7xxx_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @aic7xxx_info.buffer, i64 0, i64 0), i8** %3, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.aic7xxx_host*
  store %struct.aic7xxx_host* %8, %struct.aic7xxx_host** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @memset(i8* %9, i32 0, i32 256)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** @AIC7XXX_C_VERSION, align 8
  %15 = call i32 @strcat(i8* %13, i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** @AIC7XXX_H_VERSION, align 8
  %20 = call i32 @strcat(i8* %18, i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strcat(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i8*, i8** %3, align 8
  %26 = load i8**, i8*** @board_names, align 8
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %28 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcat(i8* %25, i8* %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
