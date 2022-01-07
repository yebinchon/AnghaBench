; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.gendisk* }
%struct.gendisk = type { i32 }

@IDE_AFLAG_MEDIUM_PRESENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ENOMEDIUM = common dso_local global i32 0, align 4
@IDETAPE_LU_LOAD_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @idetape_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_wait_ready(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load %struct.gendisk*, %struct.gendisk** %13, align 8
  store %struct.gendisk* %14, %struct.gendisk** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @IDE_AFLAG_MEDIUM_PRESENT, align 4
  %16 = call i32 @ilog2(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %89, %2
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %31 = call i64 @ide_do_test_unit_ready(%struct.TYPE_7__* %29, %struct.gendisk* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %94

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %54, label %49

49:                                               ; preds = %44, %39, %34
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 58
  br i1 %53, label %54, label %65

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @ENOMEDIUM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %94

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %63 = load i32, i32* @IDETAPE_LU_LOAD_MASK, align 4
  %64 = call i32 @ide_do_start_stop(%struct.TYPE_7__* %61, %struct.gendisk* %62, i32 %63)
  store i32 1, i32* %8, align 4
  br label %89

65:                                               ; preds = %49
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %88, label %85

85:                                               ; preds = %80, %70, %65
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %80, %75
  br label %89

89:                                               ; preds = %88, %60
  %90 = call i32 @msleep(i32 100)
  br label %23

91:                                               ; preds = %23
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %85, %57, %33
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @ide_do_test_unit_ready(%struct.TYPE_7__*, %struct.gendisk*) #1

declare dso_local i32 @ide_do_start_stop(%struct.TYPE_7__*, %struct.gendisk*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
