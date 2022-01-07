; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.cumanascsi2_info = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Cumana SCSI II driver v%s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Term    : o%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cumanascsi_2_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cumanascsi2_info*, align 8
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
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @cumanascsi_2_set_proc_info(%struct.Scsi_Host* %21, i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %87

25:                                               ; preds = %6
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %29, %struct.cumanascsi2_info** %14, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i8*, i8** @VERSION, align 8
  %32 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %15, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %15, align 8
  %36 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %14, align 8
  %37 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @fas216_print_host(i32* %37, i8* %38)
  %40 = load i8*, i8** %15, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %15, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %14, align 8
  %45 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %50 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %15, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %15, align 8
  %54 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %14, align 8
  %55 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %54, i32 0, i32 0
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @fas216_print_stats(i32* %55, i8* %56)
  %58 = load i8*, i8** %15, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %14, align 8
  %62 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @fas216_print_devices(i32* %62, i8* %63)
  %65 = load i8*, i8** %15, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %15, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8**, i8*** %10, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = load i64, i64* %11, align 8
  %78 = sub nsw i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %25
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %83, %25
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %20
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @cumanascsi_2_set_proc_info(%struct.Scsi_Host*, i8*, i32) #1

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
