; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR_Q720.c_NCR_Q720_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR_Q720.c_NCR_Q720_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NCR_Q720_private = type { i32, i32, i32*, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @NCR_Q720_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR_Q720_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NCR_Q720_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.NCR_Q720_private*
  store %struct.NCR_Q720_private* %10, %struct.NCR_Q720_private** %6, align 8
  %11 = load %struct.NCR_Q720_private*, %struct.NCR_Q720_private** %6, align 8
  %12 = getelementptr inbounds %struct.NCR_Q720_private, %struct.NCR_Q720_private* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 13
  %15 = call i32 @readb(i64 %14)
  %16 = and i32 %15, 240
  %17 = ashr i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.NCR_Q720_private*, %struct.NCR_Q720_private** %6, align 8
  %19 = getelementptr inbounds %struct.NCR_Q720_private, %struct.NCR_Q720_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ffz(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.NCR_Q720_private*, %struct.NCR_Q720_private** %6, align 8
  %33 = getelementptr inbounds %struct.NCR_Q720_private, %struct.NCR_Q720_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.NCR_Q720_private*, %struct.NCR_Q720_private** %6, align 8
  %43 = getelementptr inbounds %struct.NCR_Q720_private, %struct.NCR_Q720_private* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ncr53c8xx_intr(i32 %41, i32 %48)
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %26
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @ncr53c8xx_intr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
