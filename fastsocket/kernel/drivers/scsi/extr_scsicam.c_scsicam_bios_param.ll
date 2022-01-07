; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsicam.c_scsicam_bios_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsicam.c_scsicam_bios_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsicam_bios_param(%struct.block_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load %struct.block_device*, %struct.block_device** %5, align 8
  %14 = call i8* @scsi_bios_ptable(%struct.block_device* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %96

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = call i32 @scsi_partsize(i8* %19, i64 %21, i32* %23, i32* %25, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kfree(i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %46

33:                                               ; preds = %18
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @setsize(i64 %38, i32* %40, i32* %42, i32* %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %36, %33, %18
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 255
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 63
  br i1 %58, label %59, label %95

59:                                               ; preds = %54, %49, %46
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 11
  %62 = icmp sgt i32 %61, 65534
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 255, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 63, i32* %67, align 4
  br label %73

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 64, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 32, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 1052819775
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 65535, i32* %78, align 4
  br label %94

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %81, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %79, %76
  br label %95

95:                                               ; preds = %94, %54
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %17
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i8* @scsi_bios_ptable(%struct.block_device*) #1

declare dso_local i32 @scsi_partsize(i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @setsize(i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
