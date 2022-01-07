; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_trace.c_scsi_trace_rw16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_trace.c_scsi_trace_rw16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"lba=%llu txlen=%llu protect=%u\00", align 1
@WRITE_SAME_16 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" unmap=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_rw16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_rw16(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %11 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %14 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 56
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 48
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 40
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 5
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 32
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 24
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 9
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 10
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 24
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 11
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 16
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 12
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 13
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = trunc i64 %102 to i8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = ashr i32 %109, 5
  %111 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 zeroext %103, i64 %105, i32 %110)
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @WRITE_SAME_16, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %3
  %120 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = ashr i32 %124, 3
  %126 = and i32 %125, 1
  %127 = trunc i32 %126 to i8
  %128 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %127)
  br label %129

129:                                              ; preds = %119, %3
  %130 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %131 = call i32 @trace_seq_putc(%struct.trace_seq* %130, i32 0)
  %132 = load i8*, i8** %7, align 8
  ret i8* %132
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
