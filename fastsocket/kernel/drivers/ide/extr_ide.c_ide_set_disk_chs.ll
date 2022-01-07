; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide.c_ide_set_disk_chs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide.c_ide_set_disk_chs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kernel_param = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%d.%d:%d,%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d.%d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_DRIVES = common dso_local global i32 0, align 4
@MAX_HWIFS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ide_disks = common dso_local global i32 0, align 4
@ide_disks_chs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @ide_set_disk_chs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_set_disk_chs(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9, i32* %10)
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %12)
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %89

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_DRIVES, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @MAX_HWIFS, align 4
  %31 = load i32, i32* @MAX_DRIVES, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34, %23
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @INT_MAX, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 255
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 255
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47, %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %89

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* @ide_disks, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @ide_disks, align 4
  br label %70

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @ide_disks, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @ide_disks, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ide_disks_chs, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ide_disks_chs, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ide_disks_chs, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %83, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %70, %53, %40, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
