; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simscsi.c_simscsi_readwrite10.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simscsi.c_simscsi_readwrite10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i32)* @simscsi_readwrite10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simscsi_readwrite10(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 2
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 %10, 24
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 3
  %16 = load i64, i64* %15, align 8
  %17 = shl i64 %16, 16
  %18 = or i64 %11, %17
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = load i64, i64* %22, align 8
  %24 = shl i64 %23, 8
  %25 = or i64 %18, %24
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 5
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 %30, 0
  %32 = or i64 %25, %31
  %33 = mul i64 %32, 512
  store i64 %33, i64* %5, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @simscsi_sg_readwrite(%struct.scsi_cmnd* %34, i32 %35, i64 %36)
  ret void
}

declare dso_local i32 @simscsi_sg_readwrite(%struct.scsi_cmnd*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
