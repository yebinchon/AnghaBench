; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_scsi_32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_scsi_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 }
%struct.aac_srb = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sgmap = type { i32 }

@ScsiPortCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@aac_srb_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*)* @aac_scsi_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_scsi_32(%struct.fib* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fib*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_srb*, align 8
  store %struct.fib* %0, %struct.fib** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.fib*, %struct.fib** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = call %struct.aac_srb* @aac_scsi_common(%struct.fib* %7, %struct.scsi_cmnd* %8)
  store %struct.aac_srb* %9, %struct.aac_srb** %6, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = load %struct.aac_srb*, %struct.aac_srb** %6, align 8
  %12 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_3__* %12 to %struct.sgmap*
  %14 = call i32 @aac_build_sg(%struct.scsi_cmnd* %10, %struct.sgmap* %13)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %15)
  %17 = call i32 @cpu_to_le32(i32 %16)
  %18 = load %struct.aac_srb*, %struct.aac_srb** %6, align 8
  %19 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.aac_srb*, %struct.aac_srb** %6, align 8
  %21 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memset(i32 %22, i32 0, i32 4)
  %24 = load %struct.aac_srb*, %struct.aac_srb** %6, align 8
  %25 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.aac_srb*, %struct.aac_srb** %6, align 8
  %35 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = and i32 %38, 255
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = add i64 12, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.fib*, %struct.fib** %3, align 8
  %48 = getelementptr inbounds %struct.fib, %struct.fib* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 4
  %54 = icmp ugt i64 %46, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i32, i32* @ScsiPortCommand, align 4
  %58 = load %struct.fib*, %struct.fib** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FsaNormal, align 4
  %61 = load i64, i64* @aac_srb_callback, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = bitcast %struct.scsi_cmnd* %63 to i8*
  %65 = call i32 @aac_fib_send(i32 %57, %struct.fib* %58, i32 %59, i32 %60, i32 0, i32 1, i32 %62, i8* %64)
  ret i32 %65
}

declare dso_local %struct.aac_srb* @aac_scsi_common(%struct.fib*, %struct.scsi_cmnd*) #1

declare dso_local i32 @aac_build_sg(%struct.scsi_cmnd*, %struct.sgmap*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
