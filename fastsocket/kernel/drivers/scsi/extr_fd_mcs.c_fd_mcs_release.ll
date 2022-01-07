; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i32, i32 }

@found = common dso_local global i32 0, align 4
@hosts = common dso_local global %struct.Scsi_Host** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @fd_mcs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_mcs_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @release_region(i32 %8, i32 %11)
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @found, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %19 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @hosts, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %19, i64 %21
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %22, align 8
  %24 = icmp eq %struct.Scsi_Host* %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @hosts, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %31, i64 %33
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %34, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %13

46:                                               ; preds = %13
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 1, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @hosts, align 8
  %54 = call i32 @free_irq(i64 %52, %struct.Scsi_Host** %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* @found, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* @found, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %74, %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @found, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @hosts, align 8
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %64, i64 %67
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %68, align 8
  %70 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @hosts, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %70, i64 %72
  store %struct.Scsi_Host* %69, %struct.Scsi_Host** %73, align 8
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @hosts, align 8
  %79 = load i32, i32* @found, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %78, i64 %80
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %81, align 8
  ret i32 0
}

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.Scsi_Host**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
