; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_trace.c_scsi_trace_service_action_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_trace.c_scsi_trace_service_action_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"READ_CAPACITY_16\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GET_LBA_STATUS\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s lba=%llu alloc_len=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_service_action_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_service_action_in(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %12 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %15 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  store i8* %18, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @SERVICE_ACTION16(i8* %19)
  switch i32 %20, label %23 [
    i32 128, label %21
    i32 129, label %22
  ]

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %26

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %25 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %124

26:                                               ; preds = %22, %21
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 56
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 48
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 40
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 32
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 24
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 7
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 9
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 10
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 24
  %87 = load i8, i8* %10, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %10, align 1
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 11
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 16
  %96 = load i8, i8* %10, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %10, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 12
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %104
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %10, align 1
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 13
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* %10, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %10, align 1
  %117 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = load i8, i8* %10, align 1
  %122 = zext i8 %121 to i32
  %123 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %118, i64 %120, i32 %122)
  br label %124

124:                                              ; preds = %26, %23
  %125 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %126 = call i32 @trace_seq_putc(%struct.trace_seq* %125, i32 0)
  %127 = load i8*, i8** %7, align 8
  ret i8* %127
}

declare dso_local i32 @SERVICE_ACTION16(i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
