; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i64 }
%struct.tape_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@MTFSFM = common dso_local global i32 0, align 4
@MTTELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: Determining the size of the recorded area...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Image file ends at %d\0A\00", align 1
@MTBSF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Image file starts at %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: The size of the recorded area is %i blocks\0A\00", align 1
@TAPEBLOCK_HSEC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @tapeblock_revalidate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapeblock_revalidate_disk(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tape_device*
  store %struct.tape_device* %10, %struct.tape_device** %4, align 8
  %11 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %12 = icmp ne %struct.tape_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %17 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %24 = load i32, i32* @MTFSFM, align 4
  %25 = call i32 @tape_mtop(%struct.tape_device* %23, i32 %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %22
  %31 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %32 = load i32, i32* @MTTELL, align 4
  %33 = call i32 @tape_mtop(%struct.tape_device* %31, i32 %32, i32 1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %96

38:                                               ; preds = %30
  %39 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %40 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_name(i32* %42)
  %44 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DBF_LH(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %49 = load i32, i32* @MTBSF, align 4
  %50 = call i32 @tape_mtop(%struct.tape_device* %48, i32 %49, i32 1)
  %51 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %52 = load i32, i32* @MTTELL, align 4
  %53 = call i32 @tape_mtop(%struct.tape_device* %51, i32 %52, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %96

58:                                               ; preds = %38
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %96

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @DBF_LH(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %70 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %75 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @dev_name(i32* %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %82 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @TAPEBLOCK_HSEC_SIZE, align 4
  %87 = sdiv i32 %86, 512
  %88 = mul i32 %85, %87
  %89 = call i32 @set_capacity(i32 %84, i32 %88)
  %90 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %91 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %94 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %65, %62, %56, %36, %28, %21
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tape_mtop(%struct.tape_device*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @DBF_LH(i32, i8*, i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
