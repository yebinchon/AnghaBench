; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_bd_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_bd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ub_lun* }
%struct.ub_lun = type { i64, i64, i64, %struct.ub_dev* }
%struct.ub_dev = type { i32, i32 }

@ub_lock = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @ub_bd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ub_bd_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ub_lun*, align 8
  %7 = alloca %struct.ub_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.block_device*, %struct.block_device** %4, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ub_lun*, %struct.ub_lun** %13, align 8
  store %struct.ub_lun* %14, %struct.ub_lun** %6, align 8
  %15 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %16 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %15, i32 0, i32 3
  %17 = load %struct.ub_dev*, %struct.ub_dev** %16, align 8
  store %struct.ub_dev* %17, %struct.ub_dev** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @ub_lock, i64 %18)
  %20 = load %struct.ub_dev*, %struct.ub_dev** %7, align 8
  %21 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %20, i32 0, i32 1
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @ub_lock, i64 %25)
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.ub_dev*, %struct.ub_dev** %7, align 8
  %31 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @ub_lock, i64 %34)
  %36 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %37 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %42 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %29
  %46 = load %struct.block_device*, %struct.block_device** %4, align 8
  %47 = call i32 @check_disk_change(%struct.block_device* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %50 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %55 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FMODE_NDELAY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEDIUM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %80

66:                                               ; preds = %58, %53, %48
  %67 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %68 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @FMODE_WRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EROFS, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %80

79:                                               ; preds = %71, %66
  store i32 0, i32* %3, align 4
  br label %84

80:                                               ; preds = %76, %63
  %81 = load %struct.ub_dev*, %struct.ub_dev** %7, align 8
  %82 = call i32 @ub_put(%struct.ub_dev* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %79, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @ub_put(%struct.ub_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
