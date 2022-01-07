; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_scsi_is_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_scsi_is_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READ_6 = common dso_local global i8 0, align 1
@WRITE_6 = common dso_local global i8 0, align 1
@READ_10 = common dso_local global i8 0, align 1
@WRITE_10 = common dso_local global i8 0, align 1
@READ_12 = common dso_local global i8 0, align 1
@WRITE_12 = common dso_local global i8 0, align 1
@READ_16 = common dso_local global i8 0, align 1
@WRITE_16 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @scsi_is_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_is_rw(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* @READ_6, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @WRITE_6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %50, label %14

14:                                               ; preds = %8
  %15 = load i8, i8* %2, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @READ_10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = load i8, i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @WRITE_10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = load i8, i8* %2, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @READ_12, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load i8, i8* %2, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @WRITE_12, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i8, i8* %2, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @READ_16, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8, i8* %2, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @WRITE_16, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br label %50

50:                                               ; preds = %44, %38, %32, %26, %20, %14, %8, %1
  %51 = phi i1 [ true, %38 ], [ true, %32 ], [ true, %26 ], [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
