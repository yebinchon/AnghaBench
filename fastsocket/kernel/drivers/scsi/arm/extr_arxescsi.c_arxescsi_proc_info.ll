; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_arxescsi.c_arxescsi_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_arxescsi.c_arxescsi_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.arxescsi_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ARXE 16-bit SCSI driver v%s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i64, i32, i32)* @arxescsi_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arxescsi_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.arxescsi_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %15, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.arxescsi_info*
  store %struct.arxescsi_info* %21, %struct.arxescsi_info** %14, align 8
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %74

27:                                               ; preds = %6
  %28 = load i8*, i8** %15, align 8
  %29 = load i8*, i8** @VERSION, align 8
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %15, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %15, align 8
  %34 = load %struct.arxescsi_info*, %struct.arxescsi_info** %14, align 8
  %35 = getelementptr inbounds %struct.arxescsi_info, %struct.arxescsi_info* %34, i32 0, i32 0
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 @fas216_print_host(i32* %35, i8* %36)
  %38 = load i8*, i8** %15, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %15, align 8
  %41 = load %struct.arxescsi_info*, %struct.arxescsi_info** %14, align 8
  %42 = getelementptr inbounds %struct.arxescsi_info, %struct.arxescsi_info* %41, i32 0, i32 0
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @fas216_print_stats(i32* %42, i8* %43)
  %45 = load i8*, i8** %15, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %15, align 8
  %48 = load %struct.arxescsi_info*, %struct.arxescsi_info** %14, align 8
  %49 = getelementptr inbounds %struct.arxescsi_info, %struct.arxescsi_info* %48, i32 0, i32 0
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @fas216_print_devices(i32* %49, i8* %50)
  %52 = load i8*, i8** %15, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8**, i8*** %10, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %27
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %70, %27
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %24
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @fas216_print_host(i32*, i8*) #1

declare dso_local i32 @fas216_print_stats(i32*, i8*) #1

declare dso_local i32 @fas216_print_devices(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
