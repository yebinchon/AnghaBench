; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_frame_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_frame_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }

@IS_DMA64 = common dso_local global i64 0, align 8
@PTHRU_FRAME = common dso_local global i64 0, align 8
@MEGAMFI_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i64, i64)* @megasas_get_frame_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_get_frame_count(%struct.megasas_instance* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* @IS_DMA64, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i64 4, i64 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PTHRU_FRAME, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = sub nsw i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %49

37:                                               ; preds = %28
  %38 = load i64, i64* @IS_DMA64, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = sub nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %48

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = sub nsw i64 %45, 2
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %33
  br label %72

50:                                               ; preds = %21
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = sub nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  br label %71

59:                                               ; preds = %50
  %60 = load i64, i64* @IS_DMA64, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = sub nsw i64 %63, 2
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load i64, i64* %5, align 8
  %68 = sub nsw i64 %67, 3
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %49
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MEGAMFI_FRAME_SIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MEGAMFI_FRAME_SIZE, align 4
  %84 = srem i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = add nsw i32 %81, %87
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %75, %72
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 7
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 8, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
