; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.h_NCR_700_writel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.h_NCR_700_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.NCR_700_Host_Parameters = type { i32 }

@bEBus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.Scsi_Host*, i32)* @NCR_700_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NCR_700_writel(i32 %0, %struct.Scsi_Host* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.NCR_700_Host_Parameters*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.NCR_700_Host_Parameters*
  store %struct.NCR_700_Host_Parameters* %13, %struct.NCR_700_Host_Parameters** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* @bEBus, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %7, align 8
  %24 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @iowrite32be(i32 %22, i32 %27)
  br label %37

29:                                               ; preds = %3
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %7, align 8
  %32 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = phi i32 [ %28, %21 ], [ %36, %29 ]
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
