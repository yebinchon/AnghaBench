; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_set_dor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_set_dor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@FD_DOR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@UDRS = common dso_local global %struct.TYPE_4__* null, align 8
@FD_DEBUG = common dso_local global i32 0, align 4
@UDP = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8)* @set_dor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dor(i32 %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %86

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 4
  store i8 %20, i8* %11, align 1
  %21 = load i8, i8* %11, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %17
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 3
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %11, align 1
  %41 = load i8, i8* %8, align 1
  %42 = call i64 @is_selected(i8 zeroext %40, i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i8, i8* %10, align 1
  %46 = load i8, i8* %8, align 1
  %47 = call i64 @is_selected(i8 zeroext %45, i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i8, i8* %8, align 1
  %52 = call zeroext i8 @REVDRIVE(i32 %50, i8 zeroext %51)
  store i8 %52, i8* %9, align 1
  %53 = load i8, i8* %9, align 1
  %54 = call i32 @disk_change(i8 zeroext %53)
  br label %55

55:                                               ; preds = %49, %44, %35
  %56 = load i8, i8* %10, align 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8 %56, i8* %58, align 4
  %59 = load i8, i8* %10, align 1
  %60 = load i32, i32* @FD_DOR, align 4
  %61 = call i32 @fd_outb(i8 zeroext %59, i32 %60)
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 3
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %8, align 1
  %66 = load i8, i8* %11, align 1
  %67 = load i8, i8* %8, align 1
  %68 = call i64 @is_selected(i8 zeroext %66, i8 zeroext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %55
  %71 = load i8, i8* %10, align 1
  %72 = load i8, i8* %8, align 1
  %73 = call i64 @is_selected(i8 zeroext %71, i8 zeroext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load i8, i8* %8, align 1
  %78 = call zeroext i8 @REVDRIVE(i32 %76, i8 zeroext %77)
  store i8 %78, i8* %9, align 1
  %79 = load i32, i32* @jiffies, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %70, %55
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %16
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @is_selected(i8 zeroext, i8 zeroext) #1

declare dso_local zeroext i8 @REVDRIVE(i32, i8 zeroext) #1

declare dso_local i32 @disk_change(i8 zeroext) #1

declare dso_local i32 @fd_outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
