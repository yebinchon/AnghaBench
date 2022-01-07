; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_write_block64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_write_block64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_write64 = type { %struct.TYPE_4__, i64, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@VM_CtHostWrite64 = common dso_local global i32 0, align 4
@ContainerCommand64 = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32, i32)* @aac_write_block64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_write_block64(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fib*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aac_write64*, align 8
  store %struct.fib* %0, %struct.fib** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fib*, %struct.fib** %6, align 8
  %14 = call i32 @aac_fib_init(%struct.fib* %13)
  %15 = load %struct.fib*, %struct.fib** %6, align 8
  %16 = call i64 @fib_data(%struct.fib* %15)
  %17 = inttoptr i64 %16 to %struct.aac_write64*
  store %struct.aac_write64* %17, %struct.aac_write64** %12, align 8
  %18 = load i32, i32* @VM_CtHostWrite64, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %21 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %23 = call i32 @scmd_id(%struct.scsi_cmnd* %22)
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %26 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %30 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %34 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %36 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %38 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %41 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %40, i32 0, i32 0
  %42 = call i32 @aac_build_sg64(%struct.scsi_cmnd* %39, %struct.TYPE_4__* %41)
  %43 = load %struct.aac_write64*, %struct.aac_write64** %12, align 8
  %44 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 56, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.fib*, %struct.fib** %6, align 8
  %56 = getelementptr inbounds %struct.fib, %struct.fib* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = icmp ugt i64 %54, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* @ContainerCommand64, align 4
  %66 = load %struct.fib*, %struct.fib** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @FsaNormal, align 4
  %69 = load i64, i64* @io_callback, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %72 = bitcast %struct.scsi_cmnd* %71 to i8*
  %73 = call i32 @aac_fib_send(i32 %65, %struct.fib* %66, i32 %67, i32 %68, i32 0, i32 1, i32 %70, i8* %72)
  ret i32 %73
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_build_sg64(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
