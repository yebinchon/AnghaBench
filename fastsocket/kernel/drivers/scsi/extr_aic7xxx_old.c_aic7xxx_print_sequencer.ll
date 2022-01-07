; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_print_sequencer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_print_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@PERRORDIS = common dso_local global i32 0, align 4
@LOADRAM = common dso_local global i32 0, align 4
@FAILDIS = common dso_local global i32 0, align 4
@FASTMODE = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%03x: \00", align 1
@SEQRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i32)* @aic7xxx_print_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_print_sequencer(%struct.aic7xxx_host* %0, i32 %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %9 = load i32, i32* @PERRORDIS, align 4
  %10 = load i32, i32* @LOADRAM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FAILDIS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FASTMODE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SEQCTL, align 4
  %17 = call i32 @aic_outb(%struct.aic7xxx_host* %8, i32 %15, i32 %16)
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %19 = load i32, i32* @SEQADDR0, align 4
  %20 = call i32 @aic_outb(%struct.aic7xxx_host* %18, i32 0, i32 %19)
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %22 = load i32, i32* @SEQADDR1, align 4
  %23 = call i32 @aic_outb(%struct.aic7xxx_host* %21, i32 0, i32 %22)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %66, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %36 = load i32, i32* @SEQRAM, align 4
  %37 = call i32 @aic_inb(%struct.aic7xxx_host* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %39 = load i32, i32* @SEQRAM, align 4
  %40 = call i32 @aic_inb(%struct.aic7xxx_host* %38, i32 %39)
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %45 = load i32, i32* @SEQRAM, align 4
  %46 = call i32 @aic_inb(%struct.aic7xxx_host* %44, i32 %45)
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %51 = load i32, i32* @SEQRAM, align 4
  %52 = call i32 @aic_inb(%struct.aic7xxx_host* %50, i32 %51)
  %53 = shl i32 %52, 24
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %34
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %65

63:                                               ; preds = %34
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %24

69:                                               ; preds = %24
  %70 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %71 = load i32, i32* @SEQADDR0, align 4
  %72 = call i32 @aic_outb(%struct.aic7xxx_host* %70, i32 0, i32 %71)
  %73 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %74 = load i32, i32* @SEQADDR1, align 4
  %75 = call i32 @aic_outb(%struct.aic7xxx_host* %73, i32 0, i32 %74)
  %76 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %77 = load i32, i32* @FASTMODE, align 4
  %78 = load i32, i32* @FAILDIS, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SEQCTL, align 4
  %81 = call i32 @aic_outb(%struct.aic7xxx_host* %76, i32 %79, i32 %80)
  %82 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @unpause_sequencer(%struct.aic7xxx_host* %82, i32 %83)
  %85 = call i32 @mdelay(i32 1)
  %86 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %87 = call i32 @pause_sequencer(%struct.aic7xxx_host* %86)
  %88 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %89 = load i32, i32* @FASTMODE, align 4
  %90 = load i32, i32* @SEQCTL, align 4
  %91 = call i32 @aic_outb(%struct.aic7xxx_host* %88, i32 %89, i32 %90)
  %92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @unpause_sequencer(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pause_sequencer(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
