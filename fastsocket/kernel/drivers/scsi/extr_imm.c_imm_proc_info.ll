; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"Version : %s\0A\00", align 1
@IMM_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Parport : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Mode    : %s\0A\00", align 1
@IMM_MODE_STRING = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @imm_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %17 = call %struct.TYPE_8__* @imm_dev(%struct.Scsi_Host* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @imm_proc_write(%struct.TYPE_8__* %21, i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %87

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8*, i8** @IMM_VERSION, align 8
  %31 = call i64 @sprintf(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @sprintf(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8**, i8*** @IMM_MODE_STRING, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @sprintf(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %87

71:                                               ; preds = %25
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8**, i8*** %10, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %83, %71
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %70, %20
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @imm_dev(%struct.Scsi_Host*) #1

declare dso_local i32 @imm_proc_write(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
