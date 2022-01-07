; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_copy_mem_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_copy_mem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_str = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.info_str*, i8*, i32)* @copy_mem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_mem_info(%struct.info_str* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.info_str*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.info_str* %0, %struct.info_str** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.info_str*, %struct.info_str** %4, align 8
  %9 = getelementptr inbounds %struct.info_str, %struct.info_str* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load %struct.info_str*, %struct.info_str** %4, align 8
  %15 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.info_str*, %struct.info_str** %4, align 8
  %18 = getelementptr inbounds %struct.info_str, %struct.info_str* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = icmp sgt i64 %13, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.info_str*, %struct.info_str** %4, align 8
  %24 = getelementptr inbounds %struct.info_str, %struct.info_str* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.info_str*, %struct.info_str** %4, align 8
  %27 = getelementptr inbounds %struct.info_str, %struct.info_str* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.info_str*, %struct.info_str** %4, align 8
  %31 = getelementptr inbounds %struct.info_str, %struct.info_str* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %22, %3
  %36 = load %struct.info_str*, %struct.info_str** %4, align 8
  %37 = getelementptr inbounds %struct.info_str, %struct.info_str* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.info_str*, %struct.info_str** %4, align 8
  %43 = getelementptr inbounds %struct.info_str, %struct.info_str* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.info_str*, %struct.info_str** %4, align 8
  %50 = getelementptr inbounds %struct.info_str, %struct.info_str* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %103

53:                                               ; preds = %35
  %54 = load %struct.info_str*, %struct.info_str** %4, align 8
  %55 = getelementptr inbounds %struct.info_str, %struct.info_str* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.info_str*, %struct.info_str** %4, align 8
  %58 = getelementptr inbounds %struct.info_str, %struct.info_str* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %53
  %62 = load %struct.info_str*, %struct.info_str** %4, align 8
  %63 = getelementptr inbounds %struct.info_str, %struct.info_str* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.info_str*, %struct.info_str** %4, align 8
  %66 = getelementptr inbounds %struct.info_str, %struct.info_str* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.info_str*, %struct.info_str** %4, align 8
  %74 = getelementptr inbounds %struct.info_str, %struct.info_str* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %61, %53
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load %struct.info_str*, %struct.info_str** %4, align 8
  %87 = getelementptr inbounds %struct.info_str, %struct.info_str* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @memcpy(i32 %88, i8* %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.info_str*, %struct.info_str** %4, align 8
  %95 = getelementptr inbounds %struct.info_str, %struct.info_str* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.info_str*, %struct.info_str** %4, align 8
  %100 = getelementptr inbounds %struct.info_str, %struct.info_str* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %46, %85, %82
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
