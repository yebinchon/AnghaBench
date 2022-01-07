; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_disk_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_disk_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@UDP = common dso_local global %struct.TYPE_5__* null, align 8
@FD_BROKEN_DCL = common dso_local global i32 0, align 4
@FD_DISK_CHANGED = common dso_local global i32 0, align 4
@FD_DIR = common dso_local global i32 0, align 4
@FD_VERIFY = common dso_local global i32 0, align 4
@UDRS = common dso_local global %struct.TYPE_4__* null, align 8
@FTD_MSG = common dso_local global i32 0, align 4
@current_type = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Disk type is undefined after disk change\0A\00", align 1
@MAX_DISK_SIZE = common dso_local global i32 0, align 4
@floppy_sizes = common dso_local global i32* null, align 8
@jiffies = common dso_local global i32 0, align 4
@FD_DISK_NEWCHANGE = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@FD_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @disk_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @FDC(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FD_BROKEN_DCL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @FD_DISK_CHANGED, align 4
  %15 = call i32 @UTESTF(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %75

16:                                               ; preds = %1
  %17 = load i32, i32* @FD_DIR, align 4
  %18 = call i32 @fd_inb(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %18, %21
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %16
  %26 = load i32, i32* @FD_VERIFY, align 4
  %27 = call i32 @USETF(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @FD_DISK_CHANGED, align 4
  %34 = call i32 @USETF(i32 %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FTD_MSG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32**, i32*** @current_type, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %47, %40
  %57 = load i32**, i32*** @current_type, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @MAX_DISK_SIZE, align 4
  %62 = shl i32 %61, 1
  %63 = load i32*, i32** @floppy_sizes, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @TOMINOR(i32 %64)
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %35
  store i32 1, i32* %2, align 4
  br label %75

68:                                               ; preds = %16
  %69 = load i32, i32* @jiffies, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @FD_DISK_NEWCHANGE, align 4
  %73 = call i32 @UCLEARF(i32 %72)
  br label %74

74:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %67, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @FDC(i32) #1

declare dso_local i32 @UTESTF(i32) #1

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i32 @USETF(i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @TOMINOR(i32) #1

declare dso_local i32 @UCLEARF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
