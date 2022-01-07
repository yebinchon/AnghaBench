; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_copy_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_copy_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_io_hdr = type { i32, i64 }
%struct.sg_iovec = type { i64, i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sg_io_hdr*, i8*, i64)* @nvme_trans_copy_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sg_iovec, align 8
  store %struct.sg_io_hdr* %0, %struct.sg_io_hdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %69, %22
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %23
  %30 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 16
  %36 = add i64 %32, %35
  %37 = call i64 @copy_from_user(%struct.sg_iovec* %14, i64 %36, i32 16)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %88

43:                                               ; preds = %29
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @min(i64 %44, i32 %46)
  store i64 %47, i64* %13, align 8
  %48 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %14, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @copy_to_user(i64 %49, i8* %50, i64 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %72

58:                                               ; preds = %43
  %59 = load i64, i64* %13, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr i8, i8* %60, i64 %59
  store i8* %61, i8** %11, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %72

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %23

72:                                               ; preds = %67, %55, %23
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %88

74:                                               ; preds = %3
  %75 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @copy_to_user(i64 %77, i8* %78, i64 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %74
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %72, %40
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @copy_from_user(%struct.sg_iovec*, i64, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @copy_to_user(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
