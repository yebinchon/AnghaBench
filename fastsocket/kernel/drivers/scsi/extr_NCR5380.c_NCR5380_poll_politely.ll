; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR5380.c_NCR5380_poll_politely.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR5380.c_NCR5380_poll_politely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i32, i32, i32)* @NCR5380_poll_politely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_poll_politely(%struct.Scsi_Host* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 (...) @NCR5380_local_declare()
  store i32 500, i32* %12, align 4
  %16 = load i32, i32* @jiffies, align 4
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %13, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %21 = call i32 @NCR5380_setup(%struct.Scsi_Host* %20)
  br label %22

22:                                               ; preds = %35, %5
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %12, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @NCR5380_read(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %63

35:                                               ; preds = %26
  %36 = call i32 (...) @cpu_relax()
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i32, i32* @jiffies, align 4
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @time_before(i32 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @NCR5380_read(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %63

52:                                               ; preds = %43
  %53 = call i32 (...) @in_interrupt()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 (...) @cond_resched()
  br label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @cpu_relax()
  br label %59

59:                                               ; preds = %57, %55
  br label %38

60:                                               ; preds = %38
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %51, %34
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @NCR5380_local_declare(...) #1

declare dso_local i32 @NCR5380_setup(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
