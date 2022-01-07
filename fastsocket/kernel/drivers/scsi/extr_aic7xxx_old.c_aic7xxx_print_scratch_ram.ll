; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_print_scratch_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_print_scratch_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Scratch RAM:\0A\00", align 1
@SRAM_BASE = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%02x:%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AHC_MORE_SRAM = common dso_local global i32 0, align 4
@TARG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_print_scratch_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_print_scratch_ram(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @SRAM_BASE, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SEQCTL, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @aic_inb(%struct.aic7xxx_host* %13, i32 %14)
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %28 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AHC_MORE_SRAM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load i32, i32* @TARG_OFFSET, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %50, %33
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @aic_inb(%struct.aic7xxx_host* %40, i32 %41)
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %26
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
