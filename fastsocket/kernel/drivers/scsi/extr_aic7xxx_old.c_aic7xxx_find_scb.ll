; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_find_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_find_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }
%struct.aic7xxx_scb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8 }

@SCBPTR = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.aic7xxx_host*, %struct.aic7xxx_scb*)* @aic7xxx_find_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @aic7xxx_find_scb(%struct.aic7xxx_host* %0, %struct.aic7xxx_scb* %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca %struct.aic7xxx_scb*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %4, align 8
  %7 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %8 = load i32, i32* @SCBPTR, align 4
  %9 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %7, i32 %8)
  store i8 %9, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i8 0, i8* %6, align 1
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %14 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %10
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %22 = load i8, i8* %6, align 1
  %23 = load i32, i32* @SCBPTR, align 4
  %24 = call i32 @aic_outb(%struct.aic7xxx_host* %21, i8 zeroext %22, i32 %23)
  %25 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %26 = load i32, i32* @SCB_TAG, align 4
  %27 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %25, i32 %26)
  %28 = zext i8 %27 to i32
  %29 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %30 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i8, i8* %6, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %6, align 1
  br label %10

41:                                               ; preds = %36, %10
  %42 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %43 = load i8, i8* %5, align 1
  %44 = load i32, i32* @SCBPTR, align 4
  %45 = call i32 @aic_outb(%struct.aic7xxx_host* %42, i8 zeroext %43, i32 %44)
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %49 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %47, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i8, i8* @SCB_LIST_NULL, align 1
  store i8 %56, i8* %6, align 1
  br label %57

57:                                               ; preds = %55, %41
  %58 = load i8, i8* %6, align 1
  ret i8 %58
}

declare dso_local zeroext i8 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
