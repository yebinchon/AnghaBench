; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_biosparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.block_device = type { i32 }
%struct.aic7xxx_host = type { i32 }

@AHC_EXTEND_TRANS_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @aic7xxx_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.aic7xxx_host*, align 8
  %15 = alloca i8*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.aic7xxx_host*
  store %struct.aic7xxx_host* %21, %struct.aic7xxx_host** %14, align 8
  %22 = load %struct.block_device*, %struct.block_device** %7, align 8
  %23 = call i8* @scsi_bios_ptable(%struct.block_device* %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load i8*, i8** %15, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32 @scsi_partsize(i8* %27, i32 %28, i32* %30, i32* %32, i32* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 @kfree(i8* %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %82

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %4
  store i32 64, i32* %10, align 4
  store i32 32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 11
  store i32 %45, i32* %12, align 4
  %46 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %14, align 8
  %47 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AHC_EXTEND_TRANS_A, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %43
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 1024
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  store i32 255, i32* %10, align 4
  store i32 63, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 14
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 65535, %59
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %60, %61
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 65535, i32* %12, align 4
  br label %71

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %67, %68
  %70 = udiv i32 %66, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %65, %64
  br label %72

72:                                               ; preds = %71, %52, %43
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %72, %40
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i8* @scsi_bios_ptable(%struct.block_device*) #1

declare dso_local i32 @scsi_partsize(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
