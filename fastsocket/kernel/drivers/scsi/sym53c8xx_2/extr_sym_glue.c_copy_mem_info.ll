; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_copy_mem_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_copy_mem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_str = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.info_str*, i8*, i32)* @copy_mem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_mem_info(%struct.info_str* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.info_str*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.info_str* %0, %struct.info_str** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.info_str*, %struct.info_str** %4, align 8
  %8 = getelementptr inbounds %struct.info_str, %struct.info_str* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = load %struct.info_str*, %struct.info_str** %4, align 8
  %14 = getelementptr inbounds %struct.info_str, %struct.info_str* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.info_str*, %struct.info_str** %4, align 8
  %19 = getelementptr inbounds %struct.info_str, %struct.info_str* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.info_str*, %struct.info_str** %4, align 8
  %22 = getelementptr inbounds %struct.info_str, %struct.info_str* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.info_str*, %struct.info_str** %4, align 8
  %28 = getelementptr inbounds %struct.info_str, %struct.info_str* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.info_str*, %struct.info_str** %4, align 8
  %34 = getelementptr inbounds %struct.info_str, %struct.info_str* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.info_str*, %struct.info_str** %4, align 8
  %41 = getelementptr inbounds %struct.info_str, %struct.info_str* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %93

44:                                               ; preds = %26
  %45 = load %struct.info_str*, %struct.info_str** %4, align 8
  %46 = getelementptr inbounds %struct.info_str, %struct.info_str* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.info_str*, %struct.info_str** %4, align 8
  %49 = getelementptr inbounds %struct.info_str, %struct.info_str* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %44
  %53 = load %struct.info_str*, %struct.info_str** %4, align 8
  %54 = getelementptr inbounds %struct.info_str, %struct.info_str* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.info_str*, %struct.info_str** %4, align 8
  %57 = getelementptr inbounds %struct.info_str, %struct.info_str* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %5, align 8
  %62 = load %struct.info_str*, %struct.info_str** %4, align 8
  %63 = getelementptr inbounds %struct.info_str, %struct.info_str* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.info_str*, %struct.info_str** %4, align 8
  %66 = getelementptr inbounds %struct.info_str, %struct.info_str* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %52, %44
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load %struct.info_str*, %struct.info_str** %4, align 8
  %78 = getelementptr inbounds %struct.info_str, %struct.info_str* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.info_str*, %struct.info_str** %4, align 8
  %81 = getelementptr inbounds %struct.info_str, %struct.info_str* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @memcpy(i64 %83, i8* %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.info_str*, %struct.info_str** %4, align 8
  %90 = getelementptr inbounds %struct.info_str, %struct.info_str* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %37, %76, %73
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
