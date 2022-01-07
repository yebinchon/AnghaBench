; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { %struct.aic7xxx_host*, i32, i32, i64, i64 }
%struct.Scsi_Host = type { i64 }

@MAXREG = common dso_local global i64 0, align 8
@MINREG = common dso_local global i64 0, align 8
@first_aic7xxx = common dso_local global %struct.aic7xxx_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @aic7xxx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca %struct.aic7xxx_host*, align 8
  %5 = alloca %struct.aic7xxx_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.aic7xxx_host*
  store %struct.aic7xxx_host* %9, %struct.aic7xxx_host** %3, align 8
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %11 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %16 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %19 = call i32 @free_irq(i64 %17, %struct.aic7xxx_host* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %22 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %27 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @MAXREG, align 8
  %30 = load i64, i64* @MINREG, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @release_region(i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %25, %20
  store %struct.aic7xxx_host* null, %struct.aic7xxx_host** %5, align 8
  %34 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** @first_aic7xxx, align 8
  store %struct.aic7xxx_host* %34, %struct.aic7xxx_host** %4, align 8
  br label %35

35:                                               ; preds = %58, %33
  %36 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %37 = icmp ne %struct.aic7xxx_host* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %40 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %41 = icmp eq %struct.aic7xxx_host* %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %44 = icmp eq %struct.aic7xxx_host* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %47 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %46, i32 0, i32 0
  %48 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %47, align 8
  store %struct.aic7xxx_host* %48, %struct.aic7xxx_host** @first_aic7xxx, align 8
  br label %55

49:                                               ; preds = %42
  %50 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %51 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %50, i32 0, i32 0
  %52 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %51, align 8
  %53 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %54 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %53, i32 0, i32 0
  store %struct.aic7xxx_host* %52, %struct.aic7xxx_host** %54, align 8
  br label %55

55:                                               ; preds = %49, %45
  br label %58

56:                                               ; preds = %38
  %57 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  store %struct.aic7xxx_host* %57, %struct.aic7xxx_host** %5, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %60 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %59, i32 0, i32 0
  %61 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %60, align 8
  store %struct.aic7xxx_host* %61, %struct.aic7xxx_host** %4, align 8
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %64 = call i32 @aic7xxx_free(%struct.aic7xxx_host* %63)
  ret i32 0
}

declare dso_local i32 @free_irq(i64, %struct.aic7xxx_host*) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @aic7xxx_free(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
