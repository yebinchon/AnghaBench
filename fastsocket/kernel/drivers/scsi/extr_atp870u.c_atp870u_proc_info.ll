; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_atp870u_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }

@atp870u_proc_info.buff = internal global [512 x i32] zeroinitializer, align 16
@EINVAL = common dso_local global i32 0, align 4
@BLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ACARD AEC-671X Driver Version: 2.6+ac\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Adapter Configuration:\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"               Base IO: %#.4lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"                   IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i64, i32, i32)* @atp870u_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %99

23:                                               ; preds = %6
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @memset(i32* getelementptr inbounds ([512 x i32], [512 x i32]* @atp870u_proc_info.buff, i64 0, i64 0), i32 0, i32 2048)
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* @BLS, align 4
  %30 = call i64 (i32, i8*, ...) @sprintf(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %15, align 4
  %38 = load i64, i64* %16, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  store i64 %41, i64* %17, align 8
  store i32 0, i32* %14, align 4
  %42 = load i32, i32* @BLS, align 4
  %43 = call i64 (i32, i8*, ...) @sprintf(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @BLS, align 4
  %49 = call i64 (i32, i8*, ...) @sprintf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @BLS, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 (i32, i8*, ...) @sprintf(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* @BLS, align 4
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 (i32, i8*, ...) @sprintf(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load i64, i64* %16, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  store i64 %78, i64* %17, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %16, align 8
  %82 = sub nsw i64 %80, %81
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8**, i8*** %10, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %16, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %28
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %95, %28
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %20
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @sprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
